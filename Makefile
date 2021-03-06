TINYPICO=/dev/ttyUSB0
ARDUINO_CLI=/home/stf0x2a/teaching/EmSys/Labs/EmSys_labSetup/arduino-cli/arduino-cli

HelloWorld: src/HelloWorld/HelloWorld.ino
		$(ARDUINO_CLI) compile --fqbn esp32:esp32:tinypico src/HelloWorld 
		$(ARDUINO_CLI) upload -p $(TINYPICO) --fqbn esp32:esp32:tinypico src/HelloWorld 

WSHelloWorld_EmSysExternal: src/WSHelloWorld_EmSysExternal/WSHelloWorld_EmSysExternal.ino
		$(ARDUINO_CLI) compile --fqbn esp32:esp32:tinypico src/WSHelloWorld_EmSysExternal 
		$(ARDUINO_CLI) upload -p $(TINYPICO) --fqbn esp32:esp32:tinypico src/WSHelloWorld_EmSysExternal 
