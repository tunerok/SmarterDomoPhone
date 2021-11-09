// This callback file is created for your convenience. You may add application
// code to this file. If you regenerate this file over a previous version, the
// previous version will be overwritten and any code you have added will be
// lost.

#include "app/framework/include/af.h"
#include "hal/hal.h"
#include "em_wdog.h"
#include EMBER_AF_API_NETWORK_STEERING
#include "app/framework/include/af.h"
#include "app/util/ezsp/ezsp-enum.h"

#define IN_CALL_DELAY 1000

uint8_t n_joined  = 0;

uint8_t phone_status = 0;
uint8_t s_sound_status = 0;

uint64_t t_ticks = 0;
uint64_t t_delay_nb = 0;

int debug_flag = 0;

//************************************************************//

//waitings
void waiting_blocking(uint32_t ticks){
  for(int i = 0; i<ticks; i++){
      __asm__("nop");
      WDOGn_Feed(DEFAULT_WDOG);
  }
}

void start_waiting_non_blocking(uint32_t ticks){
  t_delay_nb = t_ticks + ticks;
}

uint8_t is_timeouted_non_blocking(void){
  if (t_delay_nb < t_ticks){
      return 1;
  }
  return 0;
}
//************************************************************//

//take phone
void set_phone_status(uint8_t st){
  if (st){
      GPIO_PinModeSet(gpioPortJ, 14, gpioModePushPull, 1);
      GPIO_PinModeSet(gpioPortD, 12, gpioModePushPull, 1);
      GPIO_PinModeSet(gpioPortI, 3, gpioModePushPull, 1);
      GPIO_PinModeSet(Take_phone_pin_PORT, Take_phone_pin_PIN, gpioModePushPull, 1);
      phone_status = 1;
  }
  else{
      GPIO_PinModeSet(gpioPortJ, 14, gpioModePushPull, 0);
      GPIO_PinModeSet(gpioPortD, 12, gpioModePushPull, 0);
      GPIO_PinModeSet(gpioPortI, 3, gpioModePushPull, 0);
      GPIO_PinModeSet(Take_phone_pin_PORT, Take_phone_pin_PIN, gpioModePushPull, 0);
      phone_status = 0;
  }
}

//bipolar relay - off opposite transistor first
//change sound status
void set_sound_status(uint8_t st){
  if (st){


      GPIO_PinModeSet(Sound_up_pin_PORT, Sound_up_pin_PIN, gpioModePushPull, 1);
  }
  else{
      GPIO_PinModeSet(Sound_up_pin_PORT, Sound_up_pin_PIN, gpioModePushPull, 0);

  }
}

//open door button simulation
void set_key_status(uint8_t st){
  if (st){
      GPIO_PinModeSet(Open_pin_PORT, Open_pin_PIN, gpioModePushPull, 1);
  }
  else{
      GPIO_PinModeSet(Open_pin_PORT, Open_pin_PIN, gpioModePushPull, 0);
  }
}
//************************************************************//


/** @brief Main Tick
 *
 * Whenever main application tick is called, this callback will be called at the
 * end of the main tick execution.
 *
 */

void emberAfMainTickCallback(void)//TODO:
{
  t_ticks++;

  if (!GPIO_PinInGet(Incoming_call_pin_PORT, Incoming_call_pin_PIN)){
          GPIO_PinModeSet(gpioPortI, 3, gpioModePushPull, 1);
          GPIO_PinModeSet(gpioPortJ, 14, gpioModePushPull, 1);
          GPIO_PinModeSet(gpioPortD, 11, gpioModePushPull, 1);
          //call isa
          emberAfPluginIasZoneServerUpdateZoneStatus(1,1,1);

  }
  else
    {
      GPIO_PinModeSet(gpioPortD, 11, gpioModePushPull, 0);
      emberAfPluginIasZoneServerUpdateZoneStatus(1,0,1);
    }
}

/** @brief Called when Button 1 is pressed long
 *
 * @param timePressedMs Amount of time button 1 was pressed.
 * @param pressedAtReset Was the button pressed at startup.
 */
void emberAfPluginButtonInterfaceButton1PressedLongCallback(uint16_t timePressedMs,
                                                            bool pressedAtReset)
{
  if (emberAfNetworkState() == EMBER_JOINED_NETWORK){
        emberAfPluginFindAndBindTargetStart(1);
    }
    else{


        emberAfPluginNetworkSteeringStart();
    }
}

/** @brief Called when Button 0 is pressed long
 *
 * @param timePressedMs Amount of time button 0 was pressed.
 * @param pressedAtReset Was the button pressed at startup.
 */
void emberAfPluginButtonInterfaceButton0PressedLongCallback(uint16_t timePressedMs,
                                                            bool pressedAtReset)
{
  //if phone not taked - take
  //break
  if (!phone_status){
        set_phone_status(1);
    }
  //else
  //open door
    else{
       set_key_status(1);

        //wait
        waiting_blocking(2000000);

        //put phone
        set_phone_status(0);
        set_key_status(0);
    }
}

/** @brief Called when Button 0 is pressed short
 *
 * @param timePressedMs Time (in ms) button 0 was pressed short
 */
void emberAfPluginButtonInterfaceButton0PressedShortCallback(uint16_t timePressedMs)
{
  //if phone not taked - take
  //take phone
  if (!phone_status){
      set_phone_status(1);
    
     //ias debug
      //emberAfPluginIasZoneServerUpdateZoneStatus(1,0,1);

  }
  //else
    //put phone
  else{
      set_phone_status(0);
    
    //ias debug
      //emberAfPluginIasZoneServerUpdateZoneStatus(1,1,1);
  }


}

/** @brief On/off Cluster On
 *
 * 
 *
 */
boolean emberAfOnOffClusterOnCallback(void)
{

  //take phone
  set_phone_status(0);
  //wait
  waiting_blocking(2000000);
  //press button
  set_key_status(1);
  //wait
  waiting_blocking(2000000);
  //relase btn
  set_key_status(0);
  //wait
  waiting_blocking(20000);
  //put phone
  set_phone_status(1);
  return FALSE;
}

/** @brief On/off Cluster Off
 *
 * 
 *
 */
boolean emberAfOnOffClusterOffCallback(void)
{
  //take phone
  set_phone_status(0);
  //wait
  waiting_blocking(2000000);
  //put phone
  set_phone_status(1);
  return FALSE;
}


bool emberAfGsDomophoneSpecificClusterOnOffSoundCallback(uint8_t args){
  waiting_blocking(200);
  set_sound_status(args);

  return FALSE;
}


/** @brief Main Start
 *
 * This function is called at the start of main after the HAL has been
 * initialized.  The standard main function arguments of argc and argv are
 * passed in.  However not all platforms have support for main() function
 * arguments.  Those that do not are passed NULL for argv, therefore argv should
 * be checked for NULL before using it.  If the callback determines that the
 * program must exit, it should return true.  The value returned by main() will
 * be the value written to the returnCode pointer.  Otherwise the callback
 * should return false to let normal execution continue.
 *
 * @param returnCode   Ver.: always
 * @param argc   Ver.: always
 * @param argv   Ver.: always
 */
boolean emberAfMainStartCallback(int* returnCode,
                                 int argc,
                                 char** argv)
{
  // NOTE:  argc and argv may not be supported on all platforms, so argv MUST be
  // checked for NULL before referencing it.  On those platforms without argc 
  // and argv "0" and "NULL" are passed respectively.

  //reset relay contriol transistors for safety
  GPIO_PinOutClear(Sound_up_pin_PORT, Sound_up_pin_PIN);
  set_key_status(0);
  set_phone_status(0);

  GPIO_PinModeSet(Incoming_call_pin_PORT, Incoming_call_pin_PIN, HAL_GPIO_MODE_INPUT,
                  HAL_GPIO_DOUT_LOW);


      s_sound_status = 0;

  return false;  // exit?
}


