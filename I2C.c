#include <xc.h>
#include <stdlib.h>

// Configuração dos Fuses do Microcontrolador.
#define _XTAL_FREQ	   18432000 // Cristal de 20 Mhz.
#pragma config FOSC  = HS   	// Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN).
#pragma config WDTE  = OFF  	// Watchdog Timer Enable bit (WDT disabled).
#pragma config PWRTE = ON   	// Power-up Timer Enable bit (PWRT enabled).
#pragma config BOREN = OFF		// Brown-out Detect Enable bit (BOD disabled).
#pragma config LVP   = OFF  	// Low-Voltage Programming Enable bit (RB4/PGM pin has digital I/O function, HV on MCLR must be used for programming).
#pragma config CPD   = OFF  	// Data EE Memory Code Protection bit (Data memory code protection off).
#pragma config CP    = OFF  	// Flash Program Memory Code Protection bit (Code protection off).

unsigned char banco = 0, entrada = 0, posicao = 0; // banco em que vai gravar, comando executado
//-----------------------------------------------------------------------------
void USART_Init(long BaudRate, int Mode)
{
	int BR = 0;

	// Cálculo do valor para o registrador SPBRG para uma determinada velocidade em bps.	
	if (Mode == 0)			//Cálculo para baixa velocidade.
	{
		BR = (_XTAL_FREQ / (64 * BaudRate)) - 1;
		SPBRG = BR;
	}
	else					//Cálculo para baixa velocidade.
	{
		BR = (_XTAL_FREQ / (16 * BaudRate)) - 1;
		SPBRG = BR;
	}

    // Configuração do Registrador TXSTA.
    TXSTAbits.CSRC	= 1;	// Seleção MASTER/SLAVE para o Modo Síncrono.
    TXSTAbits.TX9	= 0;	// Transmição de Dados em 8 Bits.
    TXSTAbits.TXEN	= 1; 	// Habilita a Transmição de Dados.
    TXSTAbits.SYNC	= 0; 	// Modo de Comunicação Assíncrono.
    TXSTAbits.BRGH	= Mode;	// Baud Rate em alta ou baixa velocidade.
    TXSTAbits.TRMT	= 1;	// Situação do Registrador Interno de Transmissão (TSR).
    TXSTAbits.TX9D	= 0;	// Valor a Ser Transmitido como 9º bit (Paridade/Endereçamento).

    // Configuração do Registrador RCSTA.
    RCSTAbits.SPEN	= 1;	// Habilita o Sistema USART.
    RCSTAbits.RX9	= 0;    // Recepção de Dados em 8 Bits.
    RCSTAbits.SREN	= 0;	// Desabilita Recepção Unitária (Somente Modo Síncrono em MASTER).
    RCSTAbits.CREN	= 1;   	// Habilita a Recepção Contínua de Dados.
    RCSTAbits.ADDEN	= 0;  	// Desabilita o Sistema de Endereçamento.
    RCSTAbits.FERR	= 0;	// Erro de Stop Bit.
    RCSTAbits.OERR	= 0;	// Erro de Muitos Bytes Recebidos sem Leitura.
    RCSTAbits.RX9D	= 0;	// Valor a Ser Recebido como 9º bit (Paridade/Endereçamento).

    // Configuração da Interrupção USART.
	PIE1bits.RCIE 	= 1;	// Habilita a Interrupção Serial.
	PIR1bits.RCIF 	= 0;	// Habilita a Interrupção Serial de Recepção.
}
//-----------------------------------------------------------------------------
void USART_WriteChar(unsigned char USART_Data)
{
	while(!PIR1bits.TXIF);
	TXREG = USART_Data;
}
//-----------------------------------------------------------------------------
void USART_WriteString(const char *str)
{
	// Efetua a transmissão da string para a USART.
	while(*str != '\0')
  	{
    	// Envio da string byte a byte.
		USART_WriteChar(*str);
      	str++;
  	}
}
//-----------------------------------------------------------------------------
unsigned char USART_ReceiveChar(void)
{
	unsigned char USART_Data;

	if (!OERR)						// Erro de Muitos Bytes Recebidos sem Nenhuma Leitura.
	{
		USART_Data 		= RCREG;	// Recebe o byte da USART e atribui a variável USARTData.
    	PIR1bits.RCIF 	= 0;		// Limpa a Flag da Interrupção de Recepção.
	}
	else
	{
		USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");

		RCSTAbits.CREN 	= 0;   		// Desabilita a Recepção Contínua de Dados Momentaneamente.
		USART_Data 		= RCREG;	// Recebe o byte da USART e atribui a variável USARTData.
		RCSTAbits.CREN 	= 1;   		// Habilita a Recepção Contínua de Dados Novamente.
    	PIR1bits.RCIF 	= 0;		// Limpa a Flag da Interrupção de Recepção.				
	}
	return(USART_Data);
}
//-----------------------------------------------------------------------------
void I2C_Init(void)
{
	// Bits de configuração e de Flags.
	SSPCON2bits.GCEN    = 0;	// Chamada geral de endereço desligado - (escravo).
	SSPCON2bits.ACKSTAT = 0;	// Bit de estado do ACK pelo escravo, 0 - recebido, 1 - não recebido.
	SSPCON2bits.ACKDT   = 0;	// Bit de ACK (mestre), 1 - não houve ACK, 0 houve ACK.
	SSPCON2bits.ACKEN   = 0;	// Bit de habilitação de ACK (mestre), 1 - iniciada, 0 - não iniciada.
	SSPCON2bits.RCEN    = 0;	// Bit de habilitação da recepção (mestre), 1 - habilita, 0 - Recepção desligada.
	SSPCON2bits.PEN     = 0;	// Bit de habilitação de condição de STOP (mestre), 1 - iniciada, 0 - não iniciada.
	SSPCON2bits.RSEN    = 0;	// Bit de habilitação de RE-START (mestre), 1 - iniciada, 0 - não iniciada.
	SSPCON2bits.SEN     = 0;	// Bit de habilitação de START (mestre), 1 - iniciada, 0 - não iniciada.
   	
	// Modo I2C Mestre
	SSPADD = 10;				// SSPADD = Fosc / [4 x baud_rate] - 1.
	
	SSPSTATbits.SMP = 1;		// Controle de interferência, 1 - desligado para 100 kbit/s, 0 - ligado para 400 kbit/s.
	SSPSTATbits.CKE = 0;		// Configura o tipo de comportamento da porta, 0 - padrão I2C, 1 - SMBus.
	SSPSTATbits.D_A = 0;		// Bit de dados/endereço, 1 - indica ultimo byte recebido é dados, 0 - endereço.
	SSPSTATbits.P   = 0;		// Detecção de STOP, 1 - STOP detectado, 0 - não detectado.
	SSPSTATbits.S   = 0;		// Detecção de START, 1 - START detectado, 0 - não detectado.
	SSPSTATbits.R_W = 0;		// Bit que guarda o status (mestre), 1 - transmissão em progresso, 0 - parado. 
	SSPSTATbits.UA  = 0;		// Bit de atualização de buffer SSPADD, 1 - necessário refresh, 0 - endereço correto.
	SSPSTATbits.BF  = 0;		// Status de buffer, RX (1-completa, 0-não completa) TX (1-transmissão em andamento, 0-completo).

   	SSPCONbits.WCOL  = 0;		// Bit de colisão de escrita, 1-colisão detectada, 0-sem colisão.
   	SSPCONbits.SSPOV = 0;		// Bit de overflow, 1 - byte perdido, 0 - recepção correta.
   	SSPCONbits.SSPEN = 1;		// Bit que habilita a comunicação I2C (1-liga/configura pinos, 0-desl/pinos de I/O).
   	SSPCONbits.CKP   = 0;		// Não utilizado em I2C.
   	SSPCONbits.SSPM3 = 1;		// Bits de configuração do modo I2C.
   	SSPCONbits.SSPM2 = 0;		// Bits de configuração do modo I2C.
   	SSPCONbits.SSPM1 = 0;		// Bits de configuração do modo I2C.
   	SSPCONbits.SSPM0 = 0;		// Bits de configuração do modo I2C.
}
//-----------------------------------------------------------------------------
void I2C_Idle(void)
{
	// Verifica se a interface está em uso ou não.
    while ((SSPCON2 & 0x1F) | (SSPSTATbits.R_W));	// De acordo com o livro.
}
//-----------------------------------------------------------------------------
void I2C_Start(void)
{ 
	// Inicializa a comunicação I2C.
    I2C_Idle();
    SSPCON2bits.SEN = 1;	// Envia um start bit.
    while(SSPCON2bits.SEN); // Aguarda que o star bit seja enviado.
}
//-----------------------------------------------------------------------------
void I2C_Restart(void)
{
    // Reinicializa a comunicação I2C.
    I2C_Idle();
    SSPCON2bits.RSEN = 1;
    while(SSPCON2bits.RSEN);  
}
//-----------------------------------------------------------------------------
void I2C_Write(unsigned char Byte)
{
    // Carrega o byte no buffer para ser transmitido pela interface I2C.
    I2C_Idle();
	SSPBUF = Byte;
	while(SSPSTATbits.BF);	// Aguarda até os oito bits serem enviados.
}
//-----------------------------------------------------------------------------
unsigned char I2C_Read(void)
{
	// Efetua a leitura do byte recebido pela interface I2C.
    I2C_Idle();
    SSPCON2bits.RCEN = 1;
	while(!SSPSTATbits.BF);		// Aguarda até os oito bits serem recebidos.

    return(SSPBUF);
}
//-----------------------------------------------------------------------------
void I2C_Stop(void)
{
	// Finaliza a comunicação I2C.
    I2C_Idle();
    SSPCON2bits.PEN = 1;       // Envia stop bit.
    while(SSPCON2bits.PEN);    
}
//-----------------------------------------------------------------------------
void I2C_ACK(void)
{
	// Lança um ACK no barramento.
    I2C_Idle();
	SSPCON2bits.ACKDT = 0;      // Limpa Acknowledge Data Bit - Envio de ACK.
	SSPCON2bits.ACKEN = 1;      // Liga o bit que habilita a transmissão de um ACK.
}
//-----------------------------------------------------------------------------
void I2C_NACK(void)
{
	// Lança um NACK no barramento.
    I2C_Idle();
    SSPCON2bits.ACKDT = 1;     // Liga Not Acknowledge Data Bit - Envio de NACK.
    SSPCON2bits.ACKEN = 1;     // Liga o bit que habilita a transmissão de um NACK.
}
//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Verifica se a interrupção foi causada pela recepção de bytes na interface USART.
	if (PIR1bits.RCIF == 1)		
    {
    	// le o comando informado
		entrada = USART_ReceiveChar();
		USART_WriteChar(entrada);

		// escreve na memória
		if(entrada == 'e'){
			// le o banco
			USART_WriteString("\nInforme o banco (0 - 7): ");
			banco = USART_ReceiveChar();
			USART_WriteChar(banco);
			// posiciona no banco do inicio
			posicao = 0;

			// dados a serem gravados
			USART_WriteString("\nInforme os dados a serem gravados: ");
			while(1){
				// le caractere a caractere
				entrada = USART_ReceiveChar();
				USART_WriteChar(entrada);

				// se digitar um enter encerra a operacao
				if(entrada == '\n'){
					break;
				}

				// grava na memoria
				I2C_Idle();
				I2C_Start();
			    I2C_Write(160+(banco<<1));
			    I2C_Write(posicao);
		    	I2C_Write(entrada);
				I2C_Idle();
				I2C_Stop();

				// verifica o se esta na ultima posicao do banco e pula para o proximo
				if(posicao == 255){
					posicao = 0;
					
					if(banco == 7){
						banco = 0;
					}
					else{
						banco++;
					}
				}
				else{
					posicao++;
				}
			}	
		}

		// le da memoria
		if(entrada == 'l'){
			// le o banco
			USART_WriteString("\nInforme o banco (0 - 7): ");
			banco = USART_ReceiveChar();
			USART_WriteChar(banco);
			// posiciona no inicio do banco
			posicao = 0;

			// imprime os dados encontrados
			USART_WriteString("\nDados encontrados no banco: ");
			while(1){
				I2C_Idle();
				I2C_Start();
				I2C_Write(0xA0);
			    I2C_Write(0x00);

				I2C_Restart();

				I2C_Write(0xA1);
				entrada = I2C_Read();
				I2C_NACK();
				I2C_Idle();
				I2C_Stop();	    

				USART_WriteChar(entrada);

				if(posicao == 255){
					break;
				}
				else{
					posicao++;
				}
			}	
		}

		// escreve na memória de forma continua
		if(entrada == 'w'){
			// le o banco
			USART_WriteString("\nInforme o banco (0 - 7): ");
			banco = USART_ReceiveChar();
			USART_WriteChar(banco);
			// posiciona no banco do inicio
			posicao = 0;

			// dados a serem gravados
			USART_WriteString("\nInforme os dados a serem gravados: ");
			while(1){
				// le caractere a caractere
				entrada = USART_ReceiveChar();
				USART_WriteChar(entrada);

				// se digitar um enter encerra a operacao
				if(entrada == '\n'){
					break;
				}

				// grava na memoria
				I2C_Idle();
				I2C_Start();
			    I2C_Write(160+(banco<<1));
			    I2C_Write(posicao);
		    	I2C_Write(entrada);
				I2C_Idle();
				I2C_Stop();

				// verifica o se esta na ultima posicao do banco e pula para o proximo
				if(posicao == 255){
					posicao = 0;
					
					if(banco == 7){
						banco = 0;
					}
					else{
						banco++;
					}
				}
				else{
					posicao++;
				}
			}	
		}

		// apagar toda a memória
		if(entrada == 'd'){
			// Função que zera a memória do dispositivo
			I2C_Idle();
			I2C_Start();

			unsigned char i, j;
			for(i = 0; i < 8; i++){
				for(j = 0; j < 256; j++){
					I2C_Write(160+(i<<1));
					I2C_Write(j);
		  			I2C_Write('0');
				}
			}
			
			I2C_Idle();
			I2C_Stop();	
		}

		// le toda a memoria
		if(entrada == 'r'){
			// posiciona no banco
			banco = 0;
			// posiciona no inicio do banco
			posicao = 0;

			// imprime os dados encontrados
			USART_WriteString("\nDados encontrados: ");
			while(1){
				I2C_Idle();
				I2C_Start();
				I2C_Write(0xA0);
			    I2C_Write(0x00);

				I2C_Restart();

				I2C_Write(0xA1);
				entrada = I2C_Read();
				I2C_NACK();
				I2C_Idle();
				I2C_Stop();	    

				USART_WriteChar(entrada);

				// verifica o se esta na ultima posicao do banco e pula para o proximo
				if(posicao == 255){
					posicao = 0;
					if(banco == 7){
						break;
					}
					else{
						banco++;
					}
				}
				else{
					posicao++;
				}
			}	
		}

		USART_WriteString("\nInforme um comando (e, l, w, d, r): ");
    }		
}
//-----------------------------------------------------------------------------
void main(void)
{
	unsigned char byte;

	TRISC = 0b10011000;		// Configura portC  RC7 (pino RX) como entrada.
    PORTC = 0b11011000; 	// Limpar as portas que estão configuradas como saidas.

	I2C_Init();
	USART_Init(19200,1);

	INTCONbits.PEIE	= 1;	// Habilita Interrupção de Periféricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrupção Global.

	USART_WriteString("INICIALIZANDO O PIC...\n");
	USART_WriteString("Informe um comando (e, l, w, d, r): ");

	__delay_ms(1000);

	while(1)
    {			
		__delay_ms(2000);
    }
}
