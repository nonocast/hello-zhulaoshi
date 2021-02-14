#include "rtc.h"

// 秒分时日月周年
// __code让sdcc将数组放在ROM中，而不是默认的RAM
__code byte READ_RTC_ADDR[7] = {0x81, 0x83, 0x85, 0x87, 0x89, 0x8b, 0x8d};

char *getRTC() {
  byte time[7];

  byte i = 0;
  // 读取7个字节的时钟信号：秒分时日月周年
  for (i = 0; i < 7; ++i) {
    time[i] = read(READ_RTC_ADDR[i]);
  }

  char result[30];
  // BCD编码: 只有0-9，没有A-F, 通过16进制表示10进制, 0x21表达十进制21
  sprintf(result, "%x %x %x %x %x %x %x\r\n", time[0], time[1], time[2],
          time[3], time[4], time[5], time[6]);
  return result;
}

byte read(byte addr) {
  byte result = 0;
  byte i = 0;
  byte bit = 0;

  // initial
  RST = 0;
  _nop_();

  SCLK = 0;
  _nop_();

  RST = 1;
  _nop_();

  for (i = 0; i < 8; ++i) {
    DSIO = addr & 0x01;
    addr >>= 1;
    SCLK = 1;
    _nop_();
    SCLK = 0;
    _nop_();
  }

  _nop_();

  for (i = 0; i < 8; ++i) {
    bit = DSIO;
    result |= bit << i;
    SCLK = 1;
    _nop_();
    SCLK = 0;
    _nop_();
  }

  RST = 0;
  _nop_();
  SCLK = 1;
  _nop_();
  DSIO = 0;
  _nop_();
  DSIO = 1;
  _nop_();
  return result;
}