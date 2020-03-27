<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="DIGITAL_IO" URI="http://resources/4.0.16/app/DIGITAL_IO/0" description="The DIGITAL_IO APP is used to configure &#xA; a port pin as digital Input/Output." mode="NOTSHARABLE" version="4.0.16" minDaveVersion="4.0.0" instanceLabel="LED1" appLabel="">
  <properties provideInit="true"/>
  <virtualSignals name="software controlled output signal" URI="http://resources/4.0.16/app/DIGITAL_IO/0/vs_digital_io_sw_pin" hwSignal="swreg_out" hwResource="//@hwResources.0"/>
  <virtualSignals name="pin" URI="http://resources/4.0.16/app/DIGITAL_IO/0/vs_digital_io_pad_pin" hwSignal="pad" hwResource="//@hwResources.0" visible="true"/>
  <virtualSignals name="hardware pin control" URI="http://resources/4.0.16/app/DIGITAL_IO/0/vs_digital_io_hwsel" hwSignal="hw_o" hwResource="//@hwResources.0" required="false"/>
  <virtualSignals name="pin_signal" URI="http://resources/4.0.16/app/DIGITAL_IO/0/__pin_vs_digital_io_pad_pin" hwSignal="pin" hwResource="//@hwResources.1"/>
  <hwResources name="pin" URI="http://resources/4.0.16/app/DIGITAL_IO/0/hwres_port_pin" resourceGroupUri="port/p/sv0/pad/*" solverVariable="true" mResGrpUri="port/p/sv0/pad/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/Port1/Port1_1.dd#//@provided.0"/>
    <solverVarMap index="2">
      <value variableName="sv0" solverValue="1"/>
    </solverVarMap>
    <solverVarMap index="2">
      <value variableName="sv0" solverValue="1"/>
    </solverVarMap>
  </hwResources>
  <hwResources name="pin" URI="http://resources/4.0.16/app/DIGITAL_IO/0/__pin_hwres_port_pin" resourceGroupUri="devicepackage/0/14" constraintType="GLOBAL_RESOURCE" mResGrpUri="devicepackage/0/*">
    <downwardMapList xsi:type="ResourceModel:ResourceGroup" href="../../../HW_RESOURCES/DEVICEPACKAGE/DEVICEPACKAGE_0.dd#//@provided.0"/>
  </hwResources>
  <connections URI="http://resources/4.0.16/app/DIGITAL_IO/0/http://resources/4.0.16/app/DIGITAL_IO/0/vs_digital_io_pad_pin/http://resources/4.0.16/app/DIGITAL_IO/0/__pin_vs_digital_io_pad_pin" systemDefined="true" sourceSignal="pin" targetSignal="pin_signal" srcVirtualSignal="//@virtualSignals.1" targetVirtualSignal="//@virtualSignals.3"/>
  <connections URI="http://resources/4.0.16/app/DIGITAL_IO/0/http://resources/4.0.16/app/DIGITAL_IO/0/__pin_vs_digital_io_pad_pin/http://resources/4.0.16/app/DIGITAL_IO/0/vs_digital_io_pad_pin" systemDefined="true" sourceSignal="pin_signal" targetSignal="pin" srcVirtualSignal="//@virtualSignals.3" targetVirtualSignal="//@virtualSignals.1"/>
</ResourceModel:App>
