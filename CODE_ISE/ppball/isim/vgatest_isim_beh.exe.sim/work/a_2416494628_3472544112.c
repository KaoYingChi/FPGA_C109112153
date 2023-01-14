/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/school_3/ppball/VGAA.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2416494628_3472544112_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(55, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6744);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6616);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2416494628_3472544112_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(56, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6808);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6632);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2416494628_3472544112_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6872);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6648);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2416494628_3472544112_p_3(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    int t18;
    int t19;
    int t20;
    int t21;
    char *t22;
    int t23;
    int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 6296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(62, ng0);

LAB6:    t2 = (t0 + 6664);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t3 = (t0 + 6664);
    *((int *)t3) = 0;
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4568U);
    t3 = *((char **)t2);
    t2 = (t0 + 4576);
    t2 = *((char **)t2);
    t4 = (t0 + 3728U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t8 - 1);
    t5 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t3, t2, t9);
    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(68, ng0);
    t2 = xsi_get_transient_memory(10U);
    memset(t2, 0, 10U);
    t3 = t2;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 4568U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t2, 10U);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4448U);
    t3 = *((char **)t2);
    t2 = (t0 + 4456);
    t2 = *((char **)t2);
    t4 = (t0 + 4328U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t9 = (t8 - 1);
    t5 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t3, t2, t9);
    if (t5 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(73, ng0);
    t2 = xsi_get_transient_memory(10U);
    memset(t2, 0, 10U);
    t3 = t2;
    memset(t3, (unsigned char)2, 10U);
    t4 = (t0 + 4448U);
    t7 = *((char **)t4);
    t4 = (t7 + 0);
    memcpy(t4, t2, 10U);

LAB12:
LAB9:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4568U);
    t3 = *((char **)t2);
    t2 = (t0 + 4576);
    t2 = *((char **)t2);
    t4 = (t0 + 3488U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t4 = (t0 + 3608U);
    t11 = *((char **)t4);
    t9 = *((int *)t11);
    t18 = (t8 + t9);
    t6 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t3, t2, t18);
    if (t6 == 1)
        goto LAB17;

LAB18:    t5 = (unsigned char)0;

LAB19:    if (t5 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 6936);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB15:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4448U);
    t3 = *((char **)t2);
    t2 = (t0 + 4456);
    t2 = *((char **)t2);
    t4 = (t0 + 4088U);
    t7 = *((char **)t4);
    t8 = *((int *)t7);
    t4 = (t0 + 4208U);
    t11 = *((char **)t4);
    t9 = *((int *)t11);
    t18 = (t8 + t9);
    t6 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t3, t2, t18);
    if (t6 == 1)
        goto LAB23;

LAB24:    t5 = (unsigned char)0;

LAB25:    if (t5 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 7000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB21:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4448U);
    t3 = *((char **)t2);
    t2 = (t0 + 7064);
    t4 = (t2 + 56U);
    t7 = *((char **)t4);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 10U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 4568U);
    t3 = *((char **)t2);
    t2 = (t0 + 7128);
    t4 = (t2 + 56U);
    t7 = *((char **)t4);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 10U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t3 = (t0 + 2792U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 4568U);
    t11 = *((char **)t4);
    t4 = (t0 + 4576);
    t4 = *((char **)t4);
    t12 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t11, t4, 1);
    t13 = (t0 + 4568U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (t10 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    memcpy(t13, t12, t17);
    goto LAB9;

LAB11:    xsi_set_current_line(71, ng0);
    t4 = (t0 + 4448U);
    t11 = *((char **)t4);
    t4 = (t0 + 4456);
    t4 = *((char **)t4);
    t12 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t10, t11, t4, 1);
    t13 = (t0 + 4448U);
    t14 = *((char **)t13);
    t13 = (t14 + 0);
    t15 = (t10 + 12U);
    t16 = *((unsigned int *)t15);
    t17 = (1U * t16);
    memcpy(t13, t12, t17);
    goto LAB12;

LAB14:    xsi_set_current_line(79, ng0);
    t13 = (t0 + 6936);
    t26 = (t13 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB15;

LAB17:    t4 = (t0 + 4568U);
    t12 = *((char **)t4);
    t4 = (t0 + 4576);
    t4 = *((char **)t4);
    t13 = (t0 + 3488U);
    t14 = *((char **)t13);
    t19 = *((int *)t14);
    t13 = (t0 + 3608U);
    t15 = *((char **)t13);
    t20 = *((int *)t15);
    t21 = (t19 + t20);
    t13 = (t0 + 3248U);
    t22 = *((char **)t13);
    t23 = *((int *)t22);
    t24 = (t21 + t23);
    t25 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t12, t4, t24);
    t5 = t25;
    goto LAB19;

LAB20:    xsi_set_current_line(86, ng0);
    t13 = (t0 + 7000);
    t26 = (t13 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB21;

LAB23:    t4 = (t0 + 4448U);
    t12 = *((char **)t4);
    t4 = (t0 + 4456);
    t4 = *((char **)t4);
    t13 = (t0 + 4088U);
    t14 = *((char **)t13);
    t19 = *((int *)t14);
    t13 = (t0 + 4208U);
    t15 = *((char **)t13);
    t20 = *((int *)t15);
    t21 = (t19 + t20);
    t13 = (t0 + 3848U);
    t22 = *((char **)t13);
    t23 = *((int *)t22);
    t24 = (t21 + t23);
    t25 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t12, t4, t24);
    t5 = t25;
    goto LAB25;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_2416494628_3472544112_init()
{
	static char *pe[] = {(void *)work_a_2416494628_3472544112_p_0,(void *)work_a_2416494628_3472544112_p_1,(void *)work_a_2416494628_3472544112_p_2,(void *)work_a_2416494628_3472544112_p_3};
	xsi_register_didat("work_a_2416494628_3472544112", "isim/vgatest_isim_beh.exe.sim/work/a_2416494628_3472544112.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
