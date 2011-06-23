# ST Visual Debugger Generated MAKE File, based on stm8s105.stp

ifeq ($(CFG), )
CFG=Debug
$(warning ***No configuration specified. Defaulting to $(CFG)***)
endif

ToolsetRoot=E:\COSMIC\CXSTM8
ToolsetBin=E:\COSMIC\CXSTM8
ToolsetInc=E:\COSMIC\CXSTM8\Hstm8
ToolsetLib=E:\COSMIC\CXSTM8\Lib
ToolsetIncOpts=-iE:\COSMIC\CXSTM8\Hstm8 
ToolsetLibOpts=-lE:\COSMIC\CXSTM8\Lib 
ObjectExt=o
OutputExt=elf
InputName=$(basename $(notdir $<))


# 
# Debug
# 
ifeq "$(CFG)" "Debug"


OutputPath=debug
ProjectSFile=stm8s105
TargetSName=$(ProjectSFile)
TargetFName=$(ProjectSFile).elf
IntermPath=$(dir $@)
CFLAGS_PRJ=$(ToolsetBin)\cxstm8  +mods0 +debug -pxp +compact +split -pp -l -dSTM8S105 -i..\..\..\os -i..\..\..\app -i..\..\..\driver -i..\..\..\library\inc -i..\cosmic -i..\..\..\os\port $(ToolsetIncOpts) -cl$(IntermPath:%\=%) -co$(IntermPath:%\=%) $<
ASMFLAGS_PRJ=$(ToolsetBin)\castm8  -xx -l $(ToolsetIncOpts) -o$(IntermPath)$(InputName).$(ObjectExt) $<

all : $(OutputPath) $(ProjectSFile).elf

$(OutputPath) : 
	if not exist $(OutputPath)/ mkdir $(OutputPath)

debug\stm8s_iwdg.$(ObjectExt) : ..\..\..\library\src\stm8s_iwdg.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_tim4.$(ObjectExt) : ..\..\..\library\src\stm8s_tim4.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_tim3.$(ObjectExt) : ..\..\..\library\src\stm8s_tim3.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_tim2.$(ObjectExt) : ..\..\..\library\src\stm8s_tim2.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_tim1.$(ObjectExt) : ..\..\..\library\src\stm8s_tim1.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_spi.$(ObjectExt) : ..\..\..\library\src\stm8s_spi.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_rst.$(ObjectExt) : ..\..\..\library\src\stm8s_rst.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_itc.$(ObjectExt) : ..\..\..\library\src\stm8s_itc.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_i2c.$(ObjectExt) : ..\..\..\library\src\stm8s_i2c.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_flash.$(ObjectExt) : ..\..\..\library\src\stm8s_flash.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_exti.$(ObjectExt) : ..\..\..\library\src\stm8s_exti.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_beep.$(ObjectExt) : ..\..\..\library\src\stm8s_beep.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_awu.$(ObjectExt) : ..\..\..\library\src\stm8s_awu.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_adc1.$(ObjectExt) : ..\..\..\library\src\stm8s_adc1.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_clk.$(ObjectExt) : ..\..\..\library\src\stm8s_clk.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_uart2.$(ObjectExt) : ..\..\..\library\src\stm8s_uart2.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_uart2.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_gpio.$(ObjectExt) : ..\..\..\library\src\stm8s_gpio.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\c_lib_retarget.$(ObjectExt) : ..\..\..\app\c_lib_retarget.c e:\cosmic\cxstm8\hstm8\mods0.h e:\cosmic\cxstm8\hstm8\stdio.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h ..\..\..\app\c_lib_retarget.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8_interrupt_vector.$(ObjectExt) : stm8_interrupt_vector.c e:\cosmic\cxstm8\hstm8\mods0.h ..\..\..\app\stm8s_it.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\stm8s_it.$(ObjectExt) : ..\..\..\app\stm8s_it.c e:\cosmic\cxstm8\hstm8\mods0.h e:\cosmic\cxstm8\hstm8\stdio.h ..\..\..\app\stm8s_it.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h ..\..\..\app\c_lib_retarget.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

debug\main.$(ObjectExt) : ..\..\..\app\main.c e:\cosmic\cxstm8\hstm8\mods0.h e:\cosmic\cxstm8\hstm8\stdio.h ..\..\..\library\inc\stm8s.h ..\..\..\library\inc\stm8s_type.h ..\..\..\app\stm8s_conf.h ..\..\..\library\inc\stm8s_adc1.h ..\..\..\library\inc\stm8s_awu.h ..\..\..\library\inc\stm8s_beep.h ..\..\..\library\inc\stm8s_clk.h ..\..\..\library\inc\stm8s_exti.h ..\..\..\library\inc\stm8s_flash.h ..\..\..\library\inc\stm8s_gpio.h ..\..\..\library\inc\stm8s_i2c.h ..\..\..\library\inc\stm8s_itc.h ..\..\..\library\inc\stm8s_iwdg.h ..\..\..\library\inc\stm8s_rst.h ..\..\..\library\inc\stm8s_spi.h ..\..\..\library\inc\stm8s_tim1.h ..\..\..\library\inc\stm8s_tim2.h ..\..\..\library\inc\stm8s_tim3.h ..\..\..\library\inc\stm8s_tim4.h ..\..\..\library\inc\stm8s_uart2.h ..\..\..\app\c_lib_retarget.h 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(CFLAGS_PRJ)

$(ProjectSFile).elf :  $(OutputPath)\stm8s_iwdg.o $(OutputPath)\stm8s_tim4.o $(OutputPath)\stm8s_tim3.o $(OutputPath)\stm8s_tim2.o $(OutputPath)\stm8s_tim1.o $(OutputPath)\stm8s_spi.o $(OutputPath)\stm8s_rst.o $(OutputPath)\stm8s_itc.o $(OutputPath)\stm8s_i2c.o $(OutputPath)\stm8s_flash.o $(OutputPath)\stm8s_exti.o $(OutputPath)\stm8s_beep.o $(OutputPath)\stm8s_awu.o $(OutputPath)\stm8s_adc1.o $(OutputPath)\stm8s_clk.o $(OutputPath)\stm8s_uart2.o $(OutputPath)\stm8s_gpio.o $(OutputPath)\c_lib_retarget.o $(OutputPath)\stm8_interrupt_vector.o $(OutputPath)\stm8s_it.o $(OutputPath)\main.o $(OutputPath)\stm8s105.lkf
	$(ToolsetBin)\clnk  $(ToolsetLibOpts) -o $(OutputPath)\$(TargetSName).sm8 -m$(OutputPath)\$(TargetSName).map $(OutputPath)\$(TargetSName).lkf 
	$(ToolsetBin)\cvdwarf  $(OutputPath)\$(TargetSName).sm8

	$(ToolsetBin)\chex  -o $(OutputPath)\$(TargetSName).s19 $(OutputPath)\$(TargetSName).sm8
	mapinfo  $(OutputPath)\$(TargetSName).map
clean : 
	-@erase $(OutputPath)\stm8s_iwdg.o
	-@erase $(OutputPath)\stm8s_tim4.o
	-@erase $(OutputPath)\stm8s_tim3.o
	-@erase $(OutputPath)\stm8s_tim2.o
	-@erase $(OutputPath)\stm8s_tim1.o
	-@erase $(OutputPath)\stm8s_spi.o
	-@erase $(OutputPath)\stm8s_rst.o
	-@erase $(OutputPath)\stm8s_itc.o
	-@erase $(OutputPath)\stm8s_i2c.o
	-@erase $(OutputPath)\stm8s_flash.o
	-@erase $(OutputPath)\stm8s_exti.o
	-@erase $(OutputPath)\stm8s_beep.o
	-@erase $(OutputPath)\stm8s_awu.o
	-@erase $(OutputPath)\stm8s_adc1.o
	-@erase $(OutputPath)\stm8s_clk.o
	-@erase $(OutputPath)\stm8s_uart2.o
	-@erase $(OutputPath)\stm8s_gpio.o
	-@erase $(OutputPath)\c_lib_retarget.o
	-@erase $(OutputPath)\stm8_interrupt_vector.o
	-@erase $(OutputPath)\stm8s_it.o
	-@erase $(OutputPath)\main.o
	-@erase $(OutputPath)\stm8s105.elf
	-@erase $(OutputPath)\stm8s105.elf
	-@erase $(OutputPath)\stm8s105.map
	-@erase $(OutputPath)\stm8s_iwdg.ls
	-@erase $(OutputPath)\stm8s_tim4.ls
	-@erase $(OutputPath)\stm8s_tim3.ls
	-@erase $(OutputPath)\stm8s_tim2.ls
	-@erase $(OutputPath)\stm8s_tim1.ls
	-@erase $(OutputPath)\stm8s_spi.ls
	-@erase $(OutputPath)\stm8s_rst.ls
	-@erase $(OutputPath)\stm8s_itc.ls
	-@erase $(OutputPath)\stm8s_i2c.ls
	-@erase $(OutputPath)\stm8s_flash.ls
	-@erase $(OutputPath)\stm8s_exti.ls
	-@erase $(OutputPath)\stm8s_beep.ls
	-@erase $(OutputPath)\stm8s_awu.ls
	-@erase $(OutputPath)\stm8s_adc1.ls
	-@erase $(OutputPath)\stm8s_clk.ls
	-@erase $(OutputPath)\stm8s_uart2.ls
	-@erase $(OutputPath)\stm8s_gpio.ls
	-@erase $(OutputPath)\c_lib_retarget.ls
	-@erase $(OutputPath)\stm8_interrupt_vector.ls
	-@erase $(OutputPath)\stm8s_it.ls
	-@erase $(OutputPath)\main.ls
endif
