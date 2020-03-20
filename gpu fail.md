
Anonymous UUID:       6E3CA393-573F-5F07-8A1A-F85AFFB76705

Thu Dec  5 18:00:31 2019

*** Panic Report ***
panic(cpu 4 caller 0xffffff7f96848367): "[IGPU] Failed to wake the ME.\n"@/Library/Caches/com.apple.xbs/Sources/GPUDriversIntel/GPUDriversIntel-10.36.26/Common/GLKernel/Intel/kbl/sched3/IGGuC.cpp:1464
Backtrace (CPU 4), Frame : Return Address
0xffffff9246a0b630 : 0xffffff8013a6de46 
0xffffff9246a0b680 : 0xffffff8013b974d4 
0xffffff9246a0b6c0 : 0xffffff8013b896a4 
0xffffff9246a0b730 : 0xffffff8013a1fe60 
0xffffff9246a0b750 : 0xffffff8013a6d8bc 
0xffffff9246a0b880 : 0xffffff8013a6d67c 
0xffffff9246a0b8e0 : 0xffffff7f96848367 
0xffffff9246a0ba20 : 0xffffff7f96848b4e 
0xffffff9246a0ba90 : 0xffffff7f9685cb55 
0xffffff9246a0bab0 : 0xffffff7f967b8d06 
0xffffff9246a0bb10 : 0xffffff7f967bf3f3 
0xffffff9246a0bb50 : 0xffffff7f94a8e9a0 
0xffffff9246a0bc00 : 0xffffff7f94a7b83c 
0xffffff9246a0bc40 : 0xffffff7f94a86ee1 
0xffffff9246a0bc70 : 0xffffff7f99b82dd8 
0xffffff9246a0bd60 : 0xffffff7f99b9349c 
0xffffff9246a0bdb0 : 0xffffff7f99b93b58 
0xffffff9246a0be00 : 0xffffff7f94a7c800 
0xffffff9246a0be50 : 0xffffff7f94a7c568 
0xffffff9246a0be80 : 0xffffff7f94a83025 
0xffffff9246a0bed0 : 0xffffff801409a365 
0xffffff9246a0bf30 : 0xffffff8014098ad2 
0xffffff9246a0bf70 : 0xffffff80140980fc 
0xffffff9246a0bfa0 : 0xffffff8013a1f557 
      Kernel Extensions in backtrace:
         com.apple.iokit.IOGraphicsFamily(519.22)[26385B4D-11E0-3FDA-892E-10572FAB5992]@0xffffff7f94a72000->0xffffff7f94abafff
            dependency: com.apple.iokit.IOPCIFamily(2.9)[A26F19F0-66D0-3328-AE56-5221EEC81B96]@0xffffff7f94294000
         com.apple.iokit.IOAcceleratorFamily2(378.28)[D342FE41-0457-3586-ABB0-38E8E3947C4F]@0xffffff7f96787000->0xffffff7f9681ffff
            dependency: com.apple.driver.AppleMobileFileIntegrity(1.0.5)[CAF09F9C-F763-3F1E-8C5F-2EB8DE1EE71C]@0xffffff7f94a37000
            dependency: com.apple.iokit.IOSurface(211.15)[37BCC686-AF99-3381-AC4F-E54A347E0F40]@0xffffff7f9676c000
            dependency: com.apple.iokit.IOPCIFamily(2.9)[A26F19F0-66D0-3328-AE56-5221EEC81B96]@0xffffff7f94294000
            dependency: com.apple.iokit.IOGraphicsFamily(519.22)[26385B4D-11E0-3FDA-892E-10572FAB5992]@0xffffff7f94a72000
         com.apple.driver.AppleIntelKBLGraphicsFramebuffer(10.3.6)[E74A2AF8-5AED-3174-A1E3-87DF23DFFA8B]@0xffffff7f99b77000->0xffffff7f99d57fff
            dependency: com.apple.iokit.IOPCIFamily(2.9)[A26F19F0-66D0-3328-AE56-5221EEC81B96]@0xffffff7f94294000
            dependency: com.apple.iokit.IOACPIFamily(1.4)[95DA39BB-7C39-3742-A2E5-86C555E21D67]@0xffffff7f947dd000
            dependency: com.apple.iokit.IOAcceleratorFamily2(378.28)[D342FE41-0457-3586-ABB0-38E8E3947C4F]@0xffffff7f96787000
            dependency: com.apple.iokit.IOReportFamily(31)[D2F2FBDF-4EE4-38BA-99F5-B699F886F413]@0xffffff7f95118000
            dependency: com.apple.AppleGraphicsDeviceControl(3.20.17)[253B3260-1884-3A3C-BD18-3D251DADB77F]@0xffffff7f94d76000
            dependency: com.apple.iokit.IOGraphicsFamily(519.22)[26385B4D-11E0-3FDA-892E-10572FAB5992]@0xffffff7f94a72000
         com.apple.driver.AppleIntelKBLGraphics(10.3.6)[42FCB8E8-3EE5-396D-8426-8CD4145B01E4]@0xffffff7f96830000->0xffffff7f96926fff
            dependency: com.apple.iokit.IOSurface(211.15)[37BCC686-AF99-3381-AC4F-E54A347E0F40]@0xffffff7f9676c000
            dependency: com.apple.iokit.IOPCIFamily(2.9)[A26F19F0-66D0-3328-AE56-5221EEC81B96]@0xffffff7f94294000
            dependency: com.apple.iokit.IOGraphicsFamily(519.22)[26385B4D-11E0-3FDA-892E-10572FAB5992]@0xffffff7f94a72000
            dependency: com.apple.iokit.IOAcceleratorFamily2(378.28)[D342FE41-0457-3586-ABB0-38E8E3947C4F]@0xffffff7f96787000

BSD process name corresponding to current thread: kernel_task

Mac OS version:
17G9016

Kernel version:
Darwin Kernel Version 17.7.0: Fri Oct  4 23:08:59 PDT 2019; root:xnu-4570.71.57~1/RELEASE_X86_64
Kernel UUID: 957CED9A-DB89-3CA2-9986-9CFD6283B806
Kernel slide:     0x0000000013800000
Kernel text base: 0xffffff8013a00000
__HIB  text base: 0xffffff8013900000
System model name: MacBookPro14,3 (Mac-551B86E5744E2388)

System uptime in nanoseconds: 578358290430832
last loaded kext at 577922906165287: com.apple.driver.usb.cdc.acm	5.0.0 (addr 0xffffff7f9a730000, size 57344)
last unloaded kext at 575476466925798: com.apple.driver.usb.cdc.ecm	5.0.0 (addr 0xffffff7f9a724000, size 49152)
loaded kexts:
org.virtualbox.kext.VBoxNetAdp	5.1.30
org.virtualbox.kext.VBoxNetFlt	5.1.30
org.pqrs.driver.Karabiner.VirtualHIDDevice.v060600	6.6.0
org.virtualbox.kext.VBoxUSB	5.1.30
org.virtualbox.kext.VBoxDrv	5.1.30
com.intel.kext.intelhaxm	6.2.1
com.apple.driver.AppleBluetoothMultitouch	92
com.apple.filesystems.smbfs	3.2.3
com.apple.driver.AudioAUUC	1.70
com.apple.driver.AGPM	110.23.37
com.apple.driver.ApplePlatformEnabler	2.7.0d0
com.apple.driver.X86PlatformShim	1.0.0
com.apple.filesystems.autofs	3.0
com.apple.driver.AppleUpstreamUserClient	3.6.5
com.apple.driver.AppleHDA	281.52
com.apple.kext.AMDFramebuffer	1.6.8
com.apple.kext.AMDRadeonX4000	1.6.8
com.apple.driver.AppleGraphicsDevicePolicy	3.20.17
com.apple.AGDCPluginDisplayMetrics	3.20.17
com.apple.driver.AppleHIDALSService	1
com.apple.driver.AppleHV	1
com.apple.iokit.IOUserEthernet	1.0.1
com.apple.iokit.IOBluetoothSerialManager	6.0.7f16
com.apple.driver.pmtelemetry	1
com.apple.driver.AGDCBacklightControl	3.20.17
com.apple.driver.AppleIntelKBLGraphics	10.3.6
com.apple.Dont_Steal_Mac_OS_X	7.0.0
com.apple.kext.AMD9500Controller	1.6.8
com.apple.driver.AppleIntelPCHPMC	2.0.1
com.apple.driver.AppleEmbeddedOSSupportHost	1
com.apple.driver.eficheck	1
com.apple.driver.AppleMuxControl	3.20.17
com.apple.driver.AppleMCCSControl	1.5.5
com.apple.driver.AppleIntelKBLGraphicsFramebuffer	10.3.6
com.apple.driver.AppleGFXHDA	100.1.17
com.apple.driver.SMCMotionSensor	3.0.4d1
com.apple.driver.AppleOSXWatchdog	1
com.apple.driver.AppleIntelSlowAdaptiveClocking	4.0.0
com.apple.driver.AppleThunderboltIP	3.1.1
com.apple.filesystems.hfs.kext	407.50.6
com.apple.AppleFSCompression.AppleFSCompressionTypeDataless	1.0.0d1
com.apple.BootCache	40
com.apple.AppleFSCompression.AppleFSCompressionTypeZlib	1.0.0
com.apple.AppleSystemPolicy	1.0
com.apple.driver.AppleTopCaseHIDEventDriver	135
com.apple.driver.AirPort.BrcmNIC	1242.32.1a1
com.apple.filesystems.apfs	748.51.0
com.apple.driver.AppleSmartBatteryManager	161.0.0
com.apple.driver.AppleACPIButtons	6.1
com.apple.driver.AppleRTC	2.0
com.apple.driver.AppleSMBIOS	2.1
com.apple.driver.AppleACPIEC	6.1
com.apple.driver.AppleAPIC	1.7
com.apple.nke.applicationfirewall	186
com.apple.security.TMSafetyNet	8
com.apple.security.quarantine	3
com.apple.driver.usb.cdc.acm	5.0.0
com.apple.driver.usb.cdc.ecm	5.0.0
com.apple.driver.usb.AppleUSBHub	1.2
com.apple.driver.AppleBluetoothHIDKeyboard	205.1
com.apple.iokit.IOUSBUserClient	900.4.1
com.apple.kext.triggers	1.0
com.apple.driver.DspFuncLib	281.52
com.apple.kext.OSvKernDSPLib	526
com.apple.kext.AMDRadeonX4100HWLibs	1.0
com.apple.kext.AMDRadeonX4000HWServices	1.6.8
com.apple.iokit.IOAVBFamily	683.1
com.apple.plugin.IOgPTPPlugin	680.15
com.apple.iokit.IOEthernetAVBController	1.1.0
com.apple.driver.AppleSSE	1.0
com.apple.iokit.IOBluetoothHostControllerUARTTransport	6.0.7f16
com.apple.iokit.IOBluetoothHostControllerTransport	6.0.7f16
com.apple.driver.AppleBacklightExpert	1.1.0
com.apple.driver.AppleHDAController	281.52
com.apple.iokit.IOHDAFamily	281.52
com.apple.AppleGPUWrangler	3.20.17
com.apple.driver.usb.IOUSBHostHIDDevice	1.2
com.apple.kext.AMDSupport	1.6.8
com.apple.driver.AppleGraphicsControl	3.20.17
com.apple.driver.AppleSMBusController	1.0.18d1
com.apple.AppleGraphicsDeviceControl	3.20.17
com.apple.iokit.IOAcceleratorFamily2	378.28
com.apple.iokit.IOSurface	211.15
com.apple.iokit.IOAudioFamily	206.5
com.apple.vecLib.kext	1.2.0
com.apple.iokit.IONDRVSupport	519.21
com.apple.iokit.IOGraphicsFamily	519.22
com.apple.driver.X86PlatformPlugin	1.0.0
com.apple.driver.IOPlatformPluginFamily	6.0.0d8
com.apple.driver.AppleIntelLpssUARTv1	3.0.60
com.apple.driver.AppleIntelLpssUARTCommon	3.0.60
com.apple.driver.AppleOnboardSerial	1.0
com.apple.iokit.IOSkywalkFamily	1
com.apple.iokit.IOSerialFamily	11
com.apple.iokit.IOSlowAdaptiveClockingFamily	1.0.0
com.apple.driver.usb.cdc.ncm	5.0.0
com.apple.driver.usb.AppleUSBiBridge	1.0
com.apple.driver.usb.cdc	5.0.0
com.apple.driver.usb.networking	5.0.0
com.apple.driver.usb.AppleUSBHostCompositeDevice	1.2
com.apple.driver.AppleUSBHostMergeProperties	1.2
com.apple.filesystems.hfs.encodings.kext	1
com.apple.driver.AppleActuatorDriver	1614.1
com.apple.driver.AppleHIDKeyboard	205.1
com.apple.driver.AppleHSBluetoothDriver	135
com.apple.driver.IOBluetoothHIDDriver	6.0.7f16
com.apple.iokit.IOBluetoothFamily	6.0.7f16
com.apple.driver.AppleMultitouchDriver	1614.1
com.apple.driver.AppleInputDeviceSupport	1614.11
com.apple.driver.AppleHSSPIHIDDriver	53
com.apple.driver.AppleHSSPISupport	53
com.apple.iokit.IO80211Family	1200.12.2
com.apple.driver.mDNSOffloadUserClient	1.0.1b8
com.apple.driver.corecapture	1.0.4
com.apple.driver.AppleIntelLpssSpiController	3.0.60
com.apple.driver.AppleThunderboltDPInAdapter	5.5.5
com.apple.driver.AppleThunderboltDPAdapterFamily	5.5.5
com.apple.driver.AppleThunderboltPCIDownAdapter	2.1.3
com.apple.iokit.IONVMeFamily	2.1.0
com.apple.driver.AppleThunderboltNHI	4.7.3
com.apple.driver.AppleHPM	3.1.3
com.apple.iokit.IOThunderboltFamily	6.7.9
com.apple.driver.AppleIntelLpssI2CController	3.0.60
com.apple.driver.AppleIntelLpssDmac	3.0.60
com.apple.driver.AppleIntelLpssI2C	3.0.60
com.apple.driver.AppleIntelLpssGspi	3.0.60
com.apple.driver.usb.AppleUSBXHCIPCI	1.2
com.apple.driver.usb.AppleUSBXHCI	1.2
com.apple.driver.usb.AppleUSBHostPacketFilter	1.0
com.apple.iokit.IOUSBFamily	900.4.1
com.apple.driver.AppleEFINVRAM	2.1
com.apple.driver.AppleEFIRuntime	2.1
com.apple.iokit.IOSMBusFamily	1.1
com.apple.iokit.IOHIDFamily	2.0.0
com.apple.security.sandbox	300.0
com.apple.kext.AppleMatch	1.0.0d1
com.apple.driver.DiskImages	480.60.3
com.apple.driver.AppleFDEKeyStore	28.30
com.apple.driver.AppleEffaceableStorage	1.0
com.apple.driver.AppleKeyStore	2
com.apple.driver.AppleUSBTDM	439.70.3
com.apple.driver.AppleMobileFileIntegrity	1.0.5
com.apple.iokit.IOUSBMassStorageDriver	140.70.2
com.apple.iokit.IOSCSIBlockCommandsDevice	404.30.3
com.apple.iokit.IOSCSIArchitectureModelFamily	404.30.3
com.apple.iokit.IOStorageFamily	2.1
com.apple.driver.AppleCredentialManager	1.0
com.apple.driver.KernelRelayHost	1
com.apple.iokit.IOUSBHostFamily	1.2
com.apple.driver.usb.AppleUSBCommon	1.0
com.apple.driver.AppleBusPowerController	1.0
com.apple.driver.AppleSEPManager	1.0.1
com.apple.driver.IOSlaveProcessor	1
com.apple.iokit.IOReportFamily	31
com.apple.iokit.IOTimeSyncFamily	680.15
com.apple.iokit.IONetworkingFamily	3.4
com.apple.driver.AppleACPIPlatform	6.1
com.apple.driver.AppleSMC	3.1.9
com.apple.iokit.IOPCIFamily	2.9
com.apple.iokit.IOACPIFamily	1.4
com.apple.kec.pthread	1
com.apple.kec.Libm	1
com.apple.kec.corecrypto	1.0

EOF
Model: MacBookPro14,3, BootROM 198.71.1.0.0, 4 processors, Intel Core i7, 2.9 GHz, 16 GB, SMC 2.45f0
Graphics: Radeon Pro 560, Radeon Pro 560, PCIe
Graphics: Intel HD Graphics 630, Intel HD Graphics 630, Built-In
Memory Module: BANK 0/DIMM0, 8 GB, LPDDR3, 2133 MHz, 0x80CE, 0x4B3445424533303445422D45474347202020
Memory Module: BANK 1/DIMM0, 8 GB, LPDDR3, 2133 MHz, 0x80CE, 0x4B3445424533303445422D45474347202020
AirPort: spairport_wireless_card_type_airport_extreme (0x14E4, 0x173), Broadcom BCM43xx 1.0 (7.77.37.33.1a1)
Bluetooth: Version 6.0.7f16, 3 services, 27 devices, 1 incoming serial ports
Network Service: Wi-Fi, AirPort, en0
USB Device: USB 3.0 Bus
USB Device: USB2.0 Hub
USB Device: USB-C Digital AV Multiport Adapter
USB Device: iBridge
USB Device: USB2.0 Hub
USB Device: Natural® Ergonomic Keyboard 4000
USB Device: Composite Device
USB Device: USB3.0 Hub
USB Device: USB3.0 Hub
USB Device: NS1081
Thunderbolt Bus: MacBook Pro, Apple Inc., 33.1
Thunderbolt Bus: MacBook Pro, Apple Inc., 33.1
