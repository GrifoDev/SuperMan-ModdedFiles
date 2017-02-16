.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_acquireMulticastLock:I = 0x2a

.field static final TRANSACTION_acquireWifiLock:I = 0x25

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x7

.field static final TRANSACTION_addPasspointManagementObject:I = 0x8

.field static final TRANSACTION_addToBlacklist:I = 0x32

.field static final TRANSACTION_addToSBlacklist:I = 0x34

.field static final TRANSACTION_buildHS20WifiConfigFromXml:I = 0x30

.field static final TRANSACTION_buildWifiConfig:I = 0x2f

.field static final TRANSACTION_callSECApi:I = 0x49

.field static final TRANSACTION_callSECStringApi:I = 0x4a

.field static final TRANSACTION_checkWarningPopup:I = 0x58

.field static final TRANSACTION_clearBlacklist:I = 0x33

.field static final TRANSACTION_clearSBlacklist:I = 0x35

.field static final TRANSACTION_deauthenticateNetwork:I = 0xc

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x46

.field static final TRANSACTION_disableNetwork:I = 0xf

.field static final TRANSACTION_disconnect:I = 0x16

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3e

.field static final TRANSACTION_enableNetwork:I = 0xe

.field static final TRANSACTION_enableTdls:I = 0x39

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x3a

.field static final TRANSACTION_enableVerboseLogging:I = 0x3c

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x44

.field static final TRANSACTION_enableWifiSharing:I = 0x6b

.field static final TRANSACTION_factoryReset:I = 0x47

.field static final TRANSACTION_fetchHs20OsuProviders:I = 0x72

.field static final TRANSACTION_getAggressiveHandover:I = 0x3f

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x41

.field static final TRANSACTION_getChannelList:I = 0x11

.field static final TRANSACTION_getConfigFile:I = 0x38

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x19

.field static final TRANSACTION_getConnectionStatistics:I = 0x45

.field static final TRANSACTION_getCountryCode:I = 0x1d

.field static final TRANSACTION_getCountryRev:I = 0x64

.field static final TRANSACTION_getCurrentNetwork:I = 0x48

.field static final TRANSACTION_getDhcpInfo:I = 0x23

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x43

.field static final TRANSACTION_getFrequencyBand:I = 0x1f

.field static final TRANSACTION_getFullRoamScanPeriod:I = 0x60

.field static final TRANSACTION_getHs20OsuProviders:I = 0x70

.field static final TRANSACTION_getLinkStatus:I = 0x65

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getNetworkInfo:I = 0x68

.field static final TRANSACTION_getPPPOEInfo:I = 0x55

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getProvisionSuccess:I = 0x6d

.field static final TRANSACTION_getRoamBand:I = 0x62

.field static final TRANSACTION_getRoamDelta:I = 0x5c

.field static final TRANSACTION_getRoamScanPeriod:I = 0x5e

.field static final TRANSACTION_getRoamTrigger:I = 0x5a

.field static final TRANSACTION_getRvfMode:I = 0x6e

.field static final TRANSACTION_getSBlacklist:I = 0x36

.field static final TRANSACTION_getScanResults:I = 0x15

.field static final TRANSACTION_getSpecificNetwork:I = 0x4b

.field static final TRANSACTION_getSpecificPasspointNetwork:I = 0x4c

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x3d

.field static final TRANSACTION_getWifiApConfigTxPower:I = 0x4e

.field static final TRANSACTION_getWifiApConfiguration:I = 0x2e

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2d

.field static final TRANSACTION_getWifiApStaList:I = 0x4d

.field static final TRANSACTION_getWifiApTimeOut:I = 0x52

.field static final TRANSACTION_getWifiEnabledState:I = 0x1b

.field static final TRANSACTION_getWifiIBSSEnabledState:I = 0x69

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x37

.field static final TRANSACTION_getWifiWatchdogMessenger:I = 0x77

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x3b

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x28

.field static final TRANSACTION_isCaptivePortalException:I = 0x76

.field static final TRANSACTION_isDetectedAsMaliciousHotspot:I = 0x73

.field static final TRANSACTION_isDualBandSupported:I = 0x20

.field static final TRANSACTION_isHs20OsuProviderAvailable:I = 0x71

.field static final TRANSACTION_isMulticastEnabled:I = 0x29

.field static final TRANSACTION_isPasspointDefaultOn:I = 0x74

.field static final TRANSACTION_isPasspointMenuVisible:I = 0x75

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x24

.field static final TRANSACTION_isSupportBackupAndRestore:I = 0x21

.field static final TRANSACTION_isWifiSharingEnabled:I = 0x6a

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xb

.field static final TRANSACTION_modifyPasspointManagementObject:I = 0x9

.field static final TRANSACTION_pingSupplicant:I = 0x10

.field static final TRANSACTION_queryPasspointIcon:I = 0xa

.field static final TRANSACTION_reassociate:I = 0x18

.field static final TRANSACTION_reconnect:I = 0x17

.field static final TRANSACTION_releaseMulticastLock:I = 0x2b

.field static final TRANSACTION_releaseWifiLock:I = 0x27

.field static final TRANSACTION_removeNetwork:I = 0xd

.field static final TRANSACTION_removeNetworkByMDM:I = 0x56

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_resetPeriodicScanTime:I = 0x12

.field static final TRANSACTION_saveConfiguration:I = 0x22

.field static final TRANSACTION_saveNetworkByMDM:I = 0x57

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x40

.field static final TRANSACTION_setCountryCode:I = 0x1c

.field static final TRANSACTION_setCountryRev:I = 0x63

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x42

.field static final TRANSACTION_setFrequencyBand:I = 0x1e

.field static final TRANSACTION_setFullRoamScanPeriod:I = 0x5f

.field static final TRANSACTION_setIsFmcNetwork:I = 0x66

.field static final TRANSACTION_setProvisionSuccess:I = 0x6c

.field static final TRANSACTION_setRoamBand:I = 0x61

.field static final TRANSACTION_setRoamDelta:I = 0x5b

.field static final TRANSACTION_setRoamScanPeriod:I = 0x5d

.field static final TRANSACTION_setRoamTrigger:I = 0x59

.field static final TRANSACTION_setRvfMode:I = 0x6f

.field static final TRANSACTION_setWifiApConfigTxPower:I = 0x4f

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiApConfigurationToDefault:I = 0x50

.field static final TRANSACTION_setWifiApEnabled:I = 0x2c

.field static final TRANSACTION_setWifiApTimeOut:I = 0x51

.field static final TRANSACTION_setWifiEnabled:I = 0x1a

.field static final TRANSACTION_setWifiIBSSEnabled:I = 0x67

.field static final TRANSACTION_startPPPOE:I = 0x53

.field static final TRANSACTION_startPartialChannelScan:I = 0x14

.field static final TRANSACTION_startScan:I = 0x13

.field static final TRANSACTION_stopPPPOE:I = 0x54

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1273
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v41

    return v41

    .line 47
    :sswitch_0
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/16 v41, 0x1

    return v41

    .line 52
    :sswitch_1
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v25

    .line 54
    .local v25, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/16 v41, 0x1

    return v41

    .line 60
    .end local v25    # "_result":I
    :sswitch_2
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v30

    .line 62
    .local v30, "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v30, :cond_0

    .line 64
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/16 v41, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_0
    const/16 v41, 0x1

    return v41

    .line 68
    :cond_0
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 74
    .end local v30    # "_result":Landroid/net/wifi/WifiActivityEnergyInfo;
    :sswitch_3
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1

    .line 77
    sget-object v41, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/ResultReceiver;

    .line 82
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    .line 83
    const/16 v41, 0x1

    return v41

    .line 80
    :cond_1
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_1

    .line 87
    .end local v13    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_4
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v38

    .line 89
    .local v38, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 91
    const/16 v41, 0x1

    return v41

    .line 95
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_5
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v38

    .line 97
    .restart local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 99
    const/16 v41, 0x1

    return v41

    .line 103
    .end local v38    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_6
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2

    .line 106
    sget-object v41, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 111
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 112
    .local v31, "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v31, :cond_3

    .line 114
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_3
    const/16 v41, 0x1

    return v41

    .line 109
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg0":Landroid/net/wifi/ScanResult;
    goto :goto_2

    .line 118
    .end local v8    # "_arg0":Landroid/net/wifi/ScanResult;
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 124
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_7
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_4

    .line 127
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 132
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    .line 133
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/16 v41, 0x1

    return v41

    .line 130
    .end local v25    # "_result":I
    :cond_4
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_4

    .line 139
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_8
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->addPasspointManagementObject(Ljava/lang/String;)I

    move-result v25

    .line 143
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/16 v41, 0x1

    return v41

    .line 149
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":I
    :sswitch_9
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 153
    .restart local v14    # "_arg0":Ljava/lang/String;
    sget-object v41, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v20

    .line 154
    .local v20, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I

    move-result v25

    .line 155
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/16 v41, 0x1

    return v41

    .line 161
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    .end local v25    # "_result":I
    :sswitch_a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 165
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 166
    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    .line 167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/16 v41, 0x1

    return v41

    .line 172
    .end local v6    # "_arg0":J
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 175
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v25

    .line 176
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/16 v41, 0x1

    return v41

    .line 182
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v25    # "_result":I
    :sswitch_c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 186
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_5

    const/16 v21, 0x1

    .line 187
    .local v21, "_arg1":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/16 v41, 0x1

    return v41

    .line 186
    .end local v21    # "_arg1":Z
    :cond_5
    const/16 v21, 0x0

    goto :goto_5

    .line 193
    .end local v6    # "_arg0":J
    :sswitch_d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v40

    .line 197
    .local v40, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v40, :cond_6

    const/16 v41, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/16 v41, 0x1

    return v41

    .line 198
    :cond_6
    const/16 v41, 0x0

    goto :goto_6

    .line 203
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_7

    const/16 v21, 0x1

    .line 208
    .restart local v21    # "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v40

    .line 209
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v40, :cond_8

    const/16 v41, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/16 v41, 0x1

    return v41

    .line 207
    .end local v21    # "_arg1":Z
    .end local v40    # "_result":Z
    :cond_7
    const/16 v21, 0x0

    goto :goto_7

    .line 210
    .restart local v21    # "_arg1":Z
    .restart local v40    # "_result":Z
    :cond_8
    const/16 v41, 0x0

    goto :goto_8

    .line 215
    .end local v4    # "_arg0":I
    .end local v21    # "_arg1":Z
    .end local v40    # "_result":Z
    :sswitch_f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 218
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v40

    .line 219
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v40, :cond_9

    const/16 v41, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/16 v41, 0x1

    return v41

    .line 220
    :cond_9
    const/16 v41, 0x0

    goto :goto_9

    .line 225
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_10
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v40

    .line 227
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v40, :cond_a

    const/16 v41, 0x1

    :goto_a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/16 v41, 0x1

    return v41

    .line 228
    :cond_a
    const/16 v41, 0x0

    goto :goto_a

    .line 233
    .end local v40    # "_result":Z
    :sswitch_11
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v37

    .line 235
    .local v37, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 237
    const/16 v41, 0x1

    return v41

    .line 241
    .end local v37    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    :sswitch_12
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->resetPeriodicScanTime()V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/16 v41, 0x1

    return v41

    .line 248
    :sswitch_13
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_b

    .line 251
    sget-object v41, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanSettings;

    .line 257
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_c

    .line 258
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/WorkSource;

    .line 263
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/16 v41, 0x1

    return v41

    .line 254
    :cond_b
    const/4 v9, 0x0

    .local v9, "_arg0":Landroid/net/wifi/ScanSettings;
    goto :goto_b

    .line 261
    .end local v9    # "_arg0":Landroid/net/wifi/ScanSettings;
    :cond_c
    const/16 v18, 0x0

    .local v18, "_arg1":Landroid/os/WorkSource;
    goto :goto_c

    .line 269
    .end local v18    # "_arg1":Landroid/os/WorkSource;
    :sswitch_14
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 272
    .local v16, "_arg0":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startPartialChannelScan([I)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/16 v41, 0x1

    return v41

    .line 278
    .end local v16    # "_arg0":[I
    :sswitch_15
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 281
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v36

    .line 282
    .local v36, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 284
    const/16 v41, 0x1

    return v41

    .line 288
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v36    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_16
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/16 v41, 0x1

    return v41

    .line 295
    :sswitch_17
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/16 v41, 0x1

    return v41

    .line 302
    :sswitch_18
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/16 v41, 0x1

    return v41

    .line 309
    :sswitch_19
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v33

    .line 311
    .local v33, "_result":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v33, :cond_d

    .line 313
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/16 v41, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 319
    :goto_d
    const/16 v41, 0x1

    return v41

    .line 317
    :cond_d
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 323
    .end local v33    # "_result":Landroid/net/wifi/WifiInfo;
    :sswitch_1a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_e

    const/4 v15, 0x1

    .line 326
    .local v15, "_arg0":Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v40

    .line 327
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v40, :cond_f

    const/16 v41, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/16 v41, 0x1

    return v41

    .line 325
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_e
    const/4 v15, 0x0

    goto :goto_e

    .line 328
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_f
    const/16 v41, 0x0

    goto :goto_f

    .line 333
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_1b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v25

    .line 335
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/16 v41, 0x1

    return v41

    .line 341
    .end local v25    # "_result":I
    :sswitch_1c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 345
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_10

    const/16 v21, 0x1

    .line 346
    .restart local v21    # "_arg1":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/16 v41, 0x1

    return v41

    .line 345
    .end local v21    # "_arg1":Z
    :cond_10
    const/16 v21, 0x0

    goto :goto_10

    .line 352
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v35

    .line 354
    .local v35, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    const/16 v41, 0x1

    return v41

    .line 360
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_11

    const/16 v21, 0x1

    .line 365
    .restart local v21    # "_arg1":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/16 v41, 0x1

    return v41

    .line 364
    .end local v21    # "_arg1":Z
    :cond_11
    const/16 v21, 0x0

    goto :goto_11

    .line 371
    .end local v4    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v25

    .line 373
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/16 v41, 0x1

    return v41

    .line 379
    .end local v25    # "_result":I
    :sswitch_20
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v40

    .line 381
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v40, :cond_12

    const/16 v41, 0x1

    :goto_12
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    const/16 v41, 0x1

    return v41

    .line 382
    :cond_12
    const/16 v41, 0x0

    goto :goto_12

    .line 387
    .end local v40    # "_result":Z
    :sswitch_21
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupportBackupAndRestore()Z

    move-result v40

    .line 389
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v40, :cond_13

    const/16 v41, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/16 v41, 0x1

    return v41

    .line 390
    :cond_13
    const/16 v41, 0x0

    goto :goto_13

    .line 395
    .end local v40    # "_result":Z
    :sswitch_22
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v40

    .line 397
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    if-eqz v40, :cond_14

    const/16 v41, 0x1

    :goto_14
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/16 v41, 0x1

    return v41

    .line 398
    :cond_14
    const/16 v41, 0x0

    goto :goto_14

    .line 403
    .end local v40    # "_result":Z
    :sswitch_23
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v26

    .line 405
    .local v26, "_result":Landroid/net/DhcpInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v26, :cond_15

    .line 407
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/16 v41, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 413
    :goto_15
    const/16 v41, 0x1

    return v41

    .line 411
    :cond_15
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 417
    .end local v26    # "_result":Landroid/net/DhcpInfo;
    :sswitch_24
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v40

    .line 419
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    if-eqz v40, :cond_16

    const/16 v41, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    const/16 v41, 0x1

    return v41

    .line 420
    :cond_16
    const/16 v41, 0x0

    goto :goto_16

    .line 425
    .end local v40    # "_result":Z
    :sswitch_25
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 429
    .local v11, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 431
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 433
    .local v22, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_17

    .line 434
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/WorkSource;

    .line 439
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v40

    .line 440
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    if-eqz v40, :cond_18

    const/16 v41, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    const/16 v41, 0x1

    return v41

    .line 437
    .end local v40    # "_result":Z
    :cond_17
    const/16 v24, 0x0

    .local v24, "_arg3":Landroid/os/WorkSource;
    goto :goto_17

    .line 441
    .end local v24    # "_arg3":Landroid/os/WorkSource;
    .restart local v40    # "_result":Z
    :cond_18
    const/16 v41, 0x0

    goto :goto_18

    .line 446
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_arg1":I
    .end local v22    # "_arg2":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_26
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 450
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_19

    .line 451
    sget-object v41, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/WorkSource;

    .line 456
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/16 v41, 0x1

    return v41

    .line 454
    :cond_19
    const/16 v18, 0x0

    .restart local v18    # "_arg1":Landroid/os/WorkSource;
    goto :goto_19

    .line 462
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v18    # "_arg1":Landroid/os/WorkSource;
    :sswitch_27
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 465
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v40

    .line 466
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v40, :cond_1a

    const/16 v41, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    const/16 v41, 0x1

    return v41

    .line 467
    :cond_1a
    const/16 v41, 0x0

    goto :goto_1a

    .line 472
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v40    # "_result":Z
    :sswitch_28
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/16 v41, 0x1

    return v41

    .line 479
    :sswitch_29
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v40

    .line 481
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    if-eqz v40, :cond_1b

    const/16 v41, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    const/16 v41, 0x1

    return v41

    .line 482
    :cond_1b
    const/16 v41, 0x0

    goto :goto_1b

    .line 487
    .end local v40    # "_result":Z
    :sswitch_2a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 491
    .restart local v11    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 492
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/16 v41, 0x1

    return v41

    .line 498
    .end local v11    # "_arg0":Landroid/os/IBinder;
    .end local v19    # "_arg1":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 500
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/16 v41, 0x1

    return v41

    .line 505
    :sswitch_2c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1c

    .line 508
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 514
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_1d

    const/16 v21, 0x1

    .line 515
    .restart local v21    # "_arg1":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/16 v41, 0x1

    return v41

    .line 511
    .end local v21    # "_arg1":Z
    :cond_1c
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_1c

    .line 514
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :cond_1d
    const/16 v21, 0x0

    goto :goto_1d

    .line 521
    :sswitch_2d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v25

    .line 523
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    const/16 v41, 0x1

    return v41

    .line 529
    .end local v25    # "_result":I
    :sswitch_2e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 531
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    if-eqz v31, :cond_1e

    .line 533
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 539
    :goto_1e
    const/16 v41, 0x1

    return v41

    .line 537
    :cond_1e
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 543
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 547
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 549
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 550
    .local v23, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 551
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    if-eqz v31, :cond_1f

    .line 553
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 559
    :goto_1f
    const/16 v41, 0x1

    return v41

    .line 557
    :cond_1f
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 563
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v23    # "_arg2":[B
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_30
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 567
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 568
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->buildHS20WifiConfigFromXml(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 569
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v31, :cond_20

    .line 571
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 577
    :goto_20
    const/16 v41, 0x1

    return v41

    .line 575
    :cond_20
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 581
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_31
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_21

    .line 584
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 589
    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    const/16 v41, 0x1

    return v41

    .line 587
    :cond_21
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_21

    .line 595
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_32
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 598
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/16 v41, 0x1

    return v41

    .line 604
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/16 v41, 0x1

    return v41

    .line 611
    :sswitch_34
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 614
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->addToSBlacklist(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/16 v41, 0x1

    return v41

    .line 620
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->clearSBlacklist()V

    .line 622
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    const/16 v41, 0x1

    return v41

    .line 627
    :sswitch_36
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSBlacklist()Ljava/lang/String;

    move-result-object v35

    .line 629
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    const/16 v41, 0x1

    return v41

    .line 635
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v34

    .line 637
    .local v34, "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    if-eqz v34, :cond_22

    .line 639
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/16 v41, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 645
    :goto_22
    const/16 v41, 0x1

    return v41

    .line 643
    :cond_22
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 649
    .end local v34    # "_result":Landroid/os/Messenger;
    :sswitch_38
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v35

    .line 651
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    const/16 v41, 0x1

    return v41

    .line 657
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 661
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_23

    const/16 v21, 0x1

    .line 662
    .restart local v21    # "_arg1":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/16 v41, 0x1

    return v41

    .line 661
    .end local v21    # "_arg1":Z
    :cond_23
    const/16 v21, 0x0

    goto :goto_23

    .line 668
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 672
    .restart local v14    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_24

    const/16 v21, 0x1

    .line 673
    .restart local v21    # "_arg1":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/16 v41, 0x1

    return v41

    .line 672
    .end local v21    # "_arg1":Z
    :cond_24
    const/16 v21, 0x0

    goto :goto_24

    .line 679
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 682
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v35

    .line 683
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    const/16 v41, 0x1

    return v41

    .line 689
    .end local v4    # "_arg0":I
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 692
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    .line 693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    const/16 v41, 0x1

    return v41

    .line 698
    .end local v4    # "_arg0":I
    :sswitch_3d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v25

    .line 700
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/16 v41, 0x1

    return v41

    .line 706
    .end local v25    # "_result":I
    :sswitch_3e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 709
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/16 v41, 0x1

    return v41

    .line 715
    .end local v4    # "_arg0":I
    :sswitch_3f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v25

    .line 717
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    const/16 v41, 0x1

    return v41

    .line 723
    .end local v25    # "_result":I
    :sswitch_40
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 726
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    .line 727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    const/16 v41, 0x1

    return v41

    .line 732
    .end local v4    # "_arg0":I
    :sswitch_41
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v25

    .line 734
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/16 v41, 0x1

    return v41

    .line 740
    .end local v25    # "_result":I
    :sswitch_42
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_25

    const/4 v15, 0x1

    .line 743
    .restart local v15    # "_arg0":Z
    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v40

    .line 744
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    if-eqz v40, :cond_26

    const/16 v41, 0x1

    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    const/16 v41, 0x1

    return v41

    .line 742
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_25
    const/4 v15, 0x0

    goto :goto_25

    .line 745
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_26
    const/16 v41, 0x0

    goto :goto_26

    .line 750
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_43
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v40

    .line 752
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v40, :cond_27

    const/16 v41, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/16 v41, 0x1

    return v41

    .line 753
    :cond_27
    const/16 v41, 0x0

    goto :goto_27

    .line 758
    .end local v40    # "_result":Z
    :sswitch_44
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_28

    const/4 v15, 0x1

    .line 761
    .restart local v15    # "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    .line 762
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    const/16 v41, 0x1

    return v41

    .line 760
    .end local v15    # "_arg0":Z
    :cond_28
    const/4 v15, 0x0

    goto :goto_28

    .line 767
    :sswitch_45
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v32

    .line 769
    .local v32, "_result":Landroid/net/wifi/WifiConnectionStatistics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v32, :cond_29

    .line 771
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 777
    :goto_29
    const/16 v41, 0x1

    return v41

    .line 775
    :cond_29
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 781
    .end local v32    # "_result":Landroid/net/wifi/WifiConnectionStatistics;
    :sswitch_46
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 784
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/16 v41, 0x1

    return v41

    .line 790
    .end local v14    # "_arg0":Ljava/lang/String;
    :sswitch_47
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/16 v41, 0x1

    return v41

    .line 797
    :sswitch_48
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v27

    .line 799
    .local v27, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    if-eqz v27, :cond_2a

    .line 801
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    const/16 v41, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 807
    :goto_2a
    const/16 v41, 0x1

    return v41

    .line 805
    :cond_2a
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 811
    .end local v27    # "_result":Landroid/net/Network;
    :sswitch_49
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2b

    .line 814
    sget-object v41, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 819
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->callSECApi(Landroid/os/Message;)I

    move-result v25

    .line 820
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/16 v41, 0x1

    return v41

    .line 817
    .end local v25    # "_result":I
    :cond_2b
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/os/Message;
    goto :goto_2b

    .line 826
    .end local v12    # "_arg0":Landroid/os/Message;
    :sswitch_4a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2c

    .line 829
    sget-object v41, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 834
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v35

    .line 835
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 837
    const/16 v41, 0x1

    return v41

    .line 832
    .end local v35    # "_result":Ljava/lang/String;
    :cond_2c
    const/4 v12, 0x0

    .restart local v12    # "_arg0":Landroid/os/Message;
    goto :goto_2c

    .line 841
    .end local v12    # "_arg0":Landroid/os/Message;
    :sswitch_4b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 844
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 845
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    if-eqz v31, :cond_2d

    .line 847
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 853
    :goto_2d
    const/16 v41, 0x1

    return v41

    .line 851
    :cond_2d
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 857
    .end local v4    # "_arg0":I
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 860
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificPasspointNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v31

    .line 861
    .restart local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v31, :cond_2e

    .line 863
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/16 v41, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 869
    :goto_2e
    const/16 v41, 0x1

    return v41

    .line 867
    :cond_2e
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 873
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v31    # "_result":Landroid/net/wifi/WifiConfiguration;
    :sswitch_4d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v35

    .line 875
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    const/16 v41, 0x1

    return v41

    .line 881
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfigTxPower()I

    move-result v25

    .line 883
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    const/16 v41, 0x1

    return v41

    .line 889
    .end local v25    # "_result":I
    :sswitch_4f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 892
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigTxPower(I)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/16 v41, 0x1

    return v41

    .line 898
    .end local v4    # "_arg0":I
    :sswitch_50
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigurationToDefault()V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    const/16 v41, 0x1

    return v41

    .line 905
    :sswitch_51
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 908
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApTimeOut(I)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/16 v41, 0x1

    return v41

    .line 914
    .end local v4    # "_arg0":I
    :sswitch_52
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApTimeOut()I

    move-result v25

    .line 916
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    const/16 v41, 0x1

    return v41

    .line 922
    .end local v25    # "_result":I
    :sswitch_53
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 924
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_2f

    .line 925
    sget-object v41, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/PPPOEConfig;

    .line 930
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 931
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    const/16 v41, 0x1

    return v41

    .line 928
    :cond_2f
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/wifi/PPPOEConfig;
    goto :goto_2f

    .line 936
    .end local v5    # "_arg0":Landroid/net/wifi/PPPOEConfig;
    :sswitch_54
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopPPPOE()V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/16 v41, 0x1

    return v41

    .line 943
    :sswitch_55
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v29

    .line 945
    .local v29, "_result":Landroid/net/wifi/PPPOEInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    if-eqz v29, :cond_30

    .line 947
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/16 v41, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 953
    :goto_30
    const/16 v41, 0x1

    return v41

    .line 951
    :cond_30
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 957
    .end local v29    # "_result":Landroid/net/wifi/PPPOEInfo;
    :sswitch_56
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 960
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetworkByMDM(I)Z

    move-result v40

    .line 961
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    if-eqz v40, :cond_31

    const/16 v41, 0x1

    :goto_31
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 963
    const/16 v41, 0x1

    return v41

    .line 962
    :cond_31
    const/16 v41, 0x0

    goto :goto_31

    .line 967
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_57
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_32

    .line 970
    sget-object v41, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    .line 975
    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->saveNetworkByMDM(Landroid/net/wifi/WifiConfiguration;)I

    move-result v25

    .line 976
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 978
    const/16 v41, 0x1

    return v41

    .line 973
    .end local v25    # "_result":I
    :cond_32
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_32

    .line 982
    .end local v10    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_58
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWarningPopup()Z

    move-result v40

    .line 984
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    if-eqz v40, :cond_33

    const/16 v41, 0x1

    :goto_33
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    const/16 v41, 0x1

    return v41

    .line 985
    :cond_33
    const/16 v41, 0x0

    goto :goto_33

    .line 990
    .end local v40    # "_result":Z
    :sswitch_59
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 993
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v40

    .line 994
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    if-eqz v40, :cond_34

    const/16 v41, 0x1

    :goto_34
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    const/16 v41, 0x1

    return v41

    .line 995
    :cond_34
    const/16 v41, 0x0

    goto :goto_34

    .line 1000
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_5a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v25

    .line 1002
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1004
    const/16 v41, 0x1

    return v41

    .line 1008
    .end local v25    # "_result":I
    :sswitch_5b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1011
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v40

    .line 1012
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    if-eqz v40, :cond_35

    const/16 v41, 0x1

    :goto_35
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1014
    const/16 v41, 0x1

    return v41

    .line 1013
    :cond_35
    const/16 v41, 0x0

    goto :goto_35

    .line 1018
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_5c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v25

    .line 1020
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    const/16 v41, 0x1

    return v41

    .line 1026
    .end local v25    # "_result":I
    :sswitch_5d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1029
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v40

    .line 1030
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    if-eqz v40, :cond_36

    const/16 v41, 0x1

    :goto_36
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    const/16 v41, 0x1

    return v41

    .line 1031
    :cond_36
    const/16 v41, 0x0

    goto :goto_36

    .line 1036
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_5e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v25

    .line 1038
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1040
    const/16 v41, 0x1

    return v41

    .line 1044
    .end local v25    # "_result":I
    :sswitch_5f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1047
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setFullRoamScanPeriod(I)Z

    move-result v40

    .line 1048
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    if-eqz v40, :cond_37

    const/16 v41, 0x1

    :goto_37
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/16 v41, 0x1

    return v41

    .line 1049
    :cond_37
    const/16 v41, 0x0

    goto :goto_37

    .line 1054
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_60
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getFullRoamScanPeriod()I

    move-result v25

    .line 1056
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    const/16 v41, 0x1

    return v41

    .line 1062
    .end local v25    # "_result":I
    :sswitch_61
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1065
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v40

    .line 1066
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    if-eqz v40, :cond_38

    const/16 v41, 0x1

    :goto_38
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    const/16 v41, 0x1

    return v41

    .line 1067
    :cond_38
    const/16 v41, 0x0

    goto :goto_38

    .line 1072
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_62
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamBand()I

    move-result v25

    .line 1074
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/16 v41, 0x1

    return v41

    .line 1080
    .end local v25    # "_result":I
    :sswitch_63
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1083
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v40

    .line 1084
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    if-eqz v40, :cond_39

    const/16 v41, 0x1

    :goto_39
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/16 v41, 0x1

    return v41

    .line 1085
    :cond_39
    const/16 v41, 0x0

    goto :goto_39

    .line 1090
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_64
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v35

    .line 1092
    .restart local v35    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1094
    const/16 v41, 0x1

    return v41

    .line 1098
    .end local v35    # "_result":Ljava/lang/String;
    :sswitch_65
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getLinkStatus()I

    move-result v25

    .line 1100
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    const/16 v41, 0x1

    return v41

    .line 1106
    .end local v25    # "_result":I
    :sswitch_66
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_3a

    const/4 v15, 0x1

    .line 1109
    .restart local v15    # "_arg0":Z
    :goto_3a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setIsFmcNetwork(Z)Z

    move-result v40

    .line 1110
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    if-eqz v40, :cond_3b

    const/16 v41, 0x1

    :goto_3b
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    const/16 v41, 0x1

    return v41

    .line 1108
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_3a
    const/4 v15, 0x0

    goto :goto_3a

    .line 1111
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_3b
    const/16 v41, 0x0

    goto :goto_3b

    .line 1116
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_67
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_3c

    const/4 v15, 0x1

    .line 1119
    .restart local v15    # "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setWifiIBSSEnabled(Z)Z

    move-result v40

    .line 1120
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    if-eqz v40, :cond_3d

    const/16 v41, 0x1

    :goto_3d
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    const/16 v41, 0x1

    return v41

    .line 1118
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_3c
    const/4 v15, 0x0

    goto :goto_3c

    .line 1121
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_3d
    const/16 v41, 0x0

    goto :goto_3d

    .line 1126
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_68
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v28

    .line 1128
    .local v28, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    if-eqz v28, :cond_3e

    .line 1130
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1136
    :goto_3e
    const/16 v41, 0x1

    return v41

    .line 1134
    :cond_3e
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 1140
    .end local v28    # "_result":Landroid/net/NetworkInfo;
    :sswitch_69
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiIBSSEnabledState()I

    move-result v25

    .line 1142
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    const/16 v41, 0x1

    return v41

    .line 1148
    .end local v25    # "_result":I
    :sswitch_6a
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v40

    .line 1150
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    if-eqz v40, :cond_3f

    const/16 v41, 0x1

    :goto_3f
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    const/16 v41, 0x1

    return v41

    .line 1151
    :cond_3f
    const/16 v41, 0x0

    goto :goto_3f

    .line 1156
    .end local v40    # "_result":Z
    :sswitch_6b
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_40

    const/4 v15, 0x1

    .line 1159
    .restart local v15    # "_arg0":Z
    :goto_40
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiSharing(Z)Z

    move-result v40

    .line 1160
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    if-eqz v40, :cond_41

    const/16 v41, 0x1

    :goto_41
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    const/16 v41, 0x1

    return v41

    .line 1158
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_40
    const/4 v15, 0x0

    goto :goto_40

    .line 1161
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_41
    const/16 v41, 0x0

    goto :goto_41

    .line 1166
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_6c
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    if-eqz v41, :cond_42

    const/4 v15, 0x1

    .line 1169
    .restart local v15    # "_arg0":Z
    :goto_42
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v40

    .line 1170
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    if-eqz v40, :cond_43

    const/16 v41, 0x1

    :goto_43
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    const/16 v41, 0x1

    return v41

    .line 1168
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :cond_42
    const/4 v15, 0x0

    goto :goto_42

    .line 1171
    .restart local v15    # "_arg0":Z
    .restart local v40    # "_result":Z
    :cond_43
    const/16 v41, 0x0

    goto :goto_43

    .line 1176
    .end local v15    # "_arg0":Z
    .end local v40    # "_result":Z
    :sswitch_6d
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getProvisionSuccess()I

    move-result v25

    .line 1178
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    const/16 v41, 0x1

    return v41

    .line 1184
    .end local v25    # "_result":I
    :sswitch_6e
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRvfMode()I

    move-result v25

    .line 1186
    .restart local v25    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    const/16 v41, 0x1

    return v41

    .line 1192
    .end local v25    # "_result":I
    :sswitch_6f
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1195
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRvfMode(I)Z

    move-result v40

    .line 1196
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    if-eqz v40, :cond_44

    const/16 v41, 0x1

    :goto_44
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/16 v41, 0x1

    return v41

    .line 1197
    :cond_44
    const/16 v41, 0x0

    goto :goto_44

    .line 1202
    .end local v4    # "_arg0":I
    .end local v40    # "_result":Z
    :sswitch_70
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getHs20OsuProviders()Ljava/util/List;

    move-result-object v39

    .line 1204
    .local v39, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20OsuProvider;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1206
    const/16 v41, 0x1

    return v41

    .line 1210
    .end local v39    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hs20/WifiHs20OsuProvider;>;"
    :sswitch_71
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isHs20OsuProviderAvailable()Z

    move-result v40

    .line 1212
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    if-eqz v40, :cond_45

    const/16 v41, 0x1

    :goto_45
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    const/16 v41, 0x1

    return v41

    .line 1213
    :cond_45
    const/16 v41, 0x0

    goto :goto_45

    .line 1218
    .end local v40    # "_result":Z
    :sswitch_72
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->fetchHs20OsuProviders()Z

    move-result v40

    .line 1220
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    if-eqz v40, :cond_46

    const/16 v41, 0x1

    :goto_46
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/16 v41, 0x1

    return v41

    .line 1221
    :cond_46
    const/16 v41, 0x0

    goto :goto_46

    .line 1226
    .end local v40    # "_result":Z
    :sswitch_73
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1229
    .restart local v14    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z

    move-result v40

    .line 1230
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    if-eqz v40, :cond_47

    const/16 v41, 0x1

    :goto_47
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    const/16 v41, 0x1

    return v41

    .line 1231
    :cond_47
    const/16 v41, 0x0

    goto :goto_47

    .line 1236
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v40    # "_result":Z
    :sswitch_74
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isPasspointDefaultOn()Z

    move-result v40

    .line 1238
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    if-eqz v40, :cond_48

    const/16 v41, 0x1

    :goto_48
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/16 v41, 0x1

    return v41

    .line 1239
    :cond_48
    const/16 v41, 0x0

    goto :goto_48

    .line 1244
    .end local v40    # "_result":Z
    :sswitch_75
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isPasspointMenuVisible()Z

    move-result v40

    .line 1246
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    if-eqz v40, :cond_49

    const/16 v41, 0x1

    :goto_49
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    const/16 v41, 0x1

    return v41

    .line 1247
    :cond_49
    const/16 v41, 0x0

    goto :goto_49

    .line 1252
    .end local v40    # "_result":Z
    :sswitch_76
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isCaptivePortalException()Z

    move-result v40

    .line 1254
    .restart local v40    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    if-eqz v40, :cond_4a

    const/16 v41, 0x1

    :goto_4a
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/16 v41, 0x1

    return v41

    .line 1255
    :cond_4a
    const/16 v41, 0x0

    goto :goto_4a

    .line 1260
    .end local v40    # "_result":Z
    :sswitch_77
    const-string/jumbo v41, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiWatchdogMessenger()Landroid/os/Messenger;

    move-result-object v34

    .line 1262
    .restart local v34    # "_result":Landroid/os/Messenger;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    if-eqz v34, :cond_4b

    .line 1264
    const/16 v41, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    const/16 v41, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1270
    :goto_4b
    const/16 v41, 0x1

    return v41

    .line 1268
    :cond_4b
    const/16 v41, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4b

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
