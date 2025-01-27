F401_TARGETS   += $(TARGET)
TARGET_MCU := STM32F401
TARGET_MCU_GROUP := STM32F4
FLASH_PAGE_SIZE := ((uint32_t)0x4000)
FEATURES       = VCP ONBOARDFLASH

# Hack for extern PWM servo support and compass_fake
# and we should commet the other compass drivers if we comfirm just use FlightYes! to feed the data from MSP.

TARGET_SRC = \
            drivers/accgyro/accgyro_mpu6050.c \
            drivers/barometer/barometer_bmp280.c \
            drivers/compass/compass_hmc5883l.c \
            drivers/compass/compass_qmc5883l.c \
            drivers/compass/compass_fake.c \
            drivers/io_pca9685.c \
            drivers/pitotmeter_adc.c \
            drivers/light_ws2811strip.c \
            common/time.c \
