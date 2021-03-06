#include "Jefe.h"

configuration JefeAppC {
}
implementation {
	// Componentes
	components MainC;
	components LedsC;
	components JefeC as App;
	components new TimerMilliC() as Timer0;
	components ActiveMessageC;
	components new AMSenderC(AM_MAESTRO);
	components new AMReceiverC(AM_MAESTRO);
	components RandomC;

	// Relaciona Interfaces con Componentes
	App.Boot -> MainC;
	App.Leds -> LedsC;
	App.Timer0 -> Timer0;
	App.Packet -> AMSenderC;
	App.AMPacket -> AMSenderC;
	App.AMControl -> ActiveMessageC;
	App.AMSend -> AMSenderC;
	App.Receive -> AMReceiverC;
	App.Random -> RandomC;
}
