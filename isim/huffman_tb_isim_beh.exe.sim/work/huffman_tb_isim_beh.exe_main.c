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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *IEEE_P_0774719531;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_0290344353_3212880686_init();
    ieee_p_0774719531_init();
    work_a_3890082097_3212880686_init();
    work_a_4000226436_3212880686_init();
    work_a_2055654056_3212880686_init();
    work_a_3762512430_3212880686_init();
    work_a_4294230006_3212880686_init();
    work_a_1066031085_1516540902_init();
    work_a_4004278538_3212880686_init();
    work_a_2585444152_3212880686_init();
    work_a_3565055977_3212880686_init();
    work_a_3884841145_3212880686_init();
    work_a_1113146494_3212880686_init();
    work_a_2595954190_3212880686_init();
    work_a_3643194780_3525058231_init();
    work_a_0494570294_4238951028_init();
    work_a_3574240630_2372691052_init();


    xsi_register_tops("work_a_3574240630_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");

    return xsi_run_simulation(argc, argv);

}
