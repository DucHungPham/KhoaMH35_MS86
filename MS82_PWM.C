#include "ms82_pwm.h"


/*====================================================
*函数名:SET_EPWM_ON
*功能:CCP1模块开启PWM半桥输出,占空比50%,频率为10KHz,带死区
*输入参数:无
*返回参数:无
====================================================*/
void SET_EPWM_ON(void)
{
	TRISC |= 0B00100000;		//关闭RC0和RC1输出,设置为输入
	T2CON0 = 0B00000001;
	T2CON1 = 0B00000000;
	PR2H = 0;
	PR2L = 7;
	P1ADTH = 0;
	P1ADTL = 4;
    
	P1OE = 0B00000001;
	P1POL = 0B00000000;
	P1CON = 0B00000000;
    
	TMR2H = 0;
	TMR2L = 0;
	TMR2IF = 0;					//清Timer2匹配标志位
	TMR2ON = 1;					//开启Timer2
	while(TMR2IF==0) CLRWDT();	//等待一个新的TMR2周期来临
	TRISC &= 0B11011111;		//新的一个TMR2周期来临,开启RC0和RC1输出
}
