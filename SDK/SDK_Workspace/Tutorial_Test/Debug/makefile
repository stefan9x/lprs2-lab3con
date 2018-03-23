################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
Tutorial_Test.elf.size \

ELFCHECK += \
Tutorial_Test.elf.elfcheck \


# All Target
all: Tutorial_Test.elf secondary-outputs

# Tool invocations
Tutorial_Test.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../Tutorial_test_bsp/microblaze_0/lib -mlittle-endian -mxl-barrel-shift -mxl-pattern-compare -mcpu=v8.50.b -mno-xl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "Tutorial_Test.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Tutorial_Test.elf.size: Tutorial_Test.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size Tutorial_Test.elf  |tee "Tutorial_Test.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

Tutorial_Test.elf.elfcheck: Tutorial_Test.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck Tutorial_Test.elf -hw ../../lab3_2_hw_platform/system.xml -pe microblaze_0  |tee "Tutorial_Test.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) Tutorial_Test.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
