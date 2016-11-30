#Building the main library for the Android application
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#For debugging purpose
LOCAL_CFLAGS := -Wall -DHAVE_CONFIG_H -std=c++11
LOCAL_LDLIBS += -latomic -lc
#Exporting the current directory for accessing the custom_debug.h
LOCAL_C_INCLUDES := \
$(LOCAL_PATH) \
$(LOCAL_PATH)/include \
$(LOCAL_PATH)/include/log4cpp \
$(LOCAL_PATH)/include/log4cpp/threading 

# for logging
LOCAL_LDLIBS += -llog

LOCAL_SRC_FILES := \
src/AbortAppender.cpp \
src/Appender.cpp \
src/AppendersFactory.cpp \
src/AppenderSkeleton.cpp \
src/BasicConfigurator.cpp \
src/BasicLayout.cpp \
src/BufferingAppender.cpp \
src/Category.cpp \
src/CategoryStream.cpp \
src/Configurator.cpp \
src/DllMain.cpp \
src/DummyThreads.cpp \
src/FactoryParams.cpp \
src/FileAppender.cpp \
src/Filter.cpp \
src/FixedContextCategory.cpp \
src/HierarchyMaintainer.cpp \
src/IdsaAppender.cpp \
src/LayoutAppender.cpp \
src/LayoutsFactory.cpp \
src/LevelEvaluator.cpp \
src/Localtime.cpp \
src/Localtime.hh \
src/LoggingEvent.cpp \
src/Manipulator.cpp \
src/MSThreads.cpp \
src/NDC.cpp \
src/NTEventLogAppender.cpp \
src/OmniThreads.cpp \
src/OstreamAppender.cpp \
src/PassThroughLayout.cpp \
src/PatternLayout.cpp \
src/PortabilityImpl.cpp \
src/PortabilityImpl.hh \
src/Priority.cpp \
src/Properties.cpp \
src/Properties.hh \
src/PropertyConfigurator.cpp \
src/PropertyConfiguratorImpl.cpp \
src/PropertyConfiguratorImpl.hh \
src/PThreads.cpp \
src/RemoteSyslogAppender.cpp \
src/RollingFileAppender.cpp \
src/SimpleConfigurator.cpp \
src/SimpleLayout.cpp \
src/SmtpAppender.cpp \
src/StringQueueAppender.cpp \
src/StringUtil.cpp \
src/StringUtil.hh \
src/SyslogAppender.cpp \
src/TimeStamp.cpp \
src/TriggeringEventEvaluatorFactory.cpp \


LOCAL_MODULE := log4cpp

include $(BUILD_SHARED_LIBRARY)



