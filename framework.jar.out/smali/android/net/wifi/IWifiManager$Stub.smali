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

.field static final TRANSACTION_acquireMulticastLock:I = 0x25

.field static final TRANSACTION_acquireWifiLock:I = 0x20

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x7

.field static final TRANSACTION_addOrUpdatePasspointConfiguration:I = 0x8

.field static final TRANSACTION_callSECApi:I = 0x49

.field static final TRANSACTION_callSECStringApi:I = 0x4a

.field static final TRANSACTION_deauthenticateNetwork:I = 0xd

.field static final TRANSACTION_disableEphemeralNetwork:I = 0x43

.field static final TRANSACTION_disableNetwork:I = 0x10

.field static final TRANSACTION_disconnect:I = 0x13

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3b

.field static final TRANSACTION_enableNetwork:I = 0xf

.field static final TRANSACTION_enableTdls:I = 0x36

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x37

.field static final TRANSACTION_enableVerboseLogging:I = 0x39

.field static final TRANSACTION_enableWifiConnectivityManager:I = 0x41

.field static final TRANSACTION_factoryReset:I = 0x44

.field static final TRANSACTION_getAggressiveHandover:I = 0x3c

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3e

.field static final TRANSACTION_getConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getConnectionInfo:I = 0x16

.field static final TRANSACTION_getConnectionStatistics:I = 0x42

.field static final TRANSACTION_getCountryCode:I = 0x1a

.field static final TRANSACTION_getCountryRev:I = 0x59

.field static final TRANSACTION_getCurrentCountryCode:I = 0x1b

.field static final TRANSACTION_getCurrentNetwork:I = 0x45

.field static final TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken:I = 0x38

.field static final TRANSACTION_getDhcpInfo:I = 0x1e

.field static final TRANSACTION_getEnableAutoJoinWhenAssociated:I = 0x40

.field static final TRANSACTION_getExtenderMode:I = 0x33

.field static final TRANSACTION_getMatchingWifiConfig:I = 0x6

.field static final TRANSACTION_getNetworkInfo:I = 0x4d

.field static final TRANSACTION_getPasspointConfigurations:I = 0xa

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x5

.field static final TRANSACTION_getProvisionSuccess:I = 0x6b

.field static final TRANSACTION_getRoamBand:I = 0x57

.field static final TRANSACTION_getRoamDelta:I = 0x53

.field static final TRANSACTION_getRoamScanPeriod:I = 0x55

.field static final TRANSACTION_getRoamTrigger:I = 0x51

.field static final TRANSACTION_getRvfMode:I = 0x6c

.field static final TRANSACTION_getScanResults:I = 0x12

.field static final TRANSACTION_getSpecificNetwork:I = 0x4c

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x3a

.field static final TRANSACTION_getWcmMessenger:I = 0x6f

.field static final TRANSACTION_getWifiApChipMaxClient:I = 0x64

.field static final TRANSACTION_getWifiApChipSupport5G:I = 0x62

.field static final TRANSACTION_getWifiApChipSupport5GCountry:I = 0x63

.field static final TRANSACTION_getWifiApConfigTxPower:I = 0x5c

.field static final TRANSACTION_getWifiApConfiguration:I = 0x30

.field static final TRANSACTION_getWifiApEnabledState:I = 0x2f

.field static final TRANSACTION_getWifiApMaxClient:I = 0x65

.field static final TRANSACTION_getWifiApStaList:I = 0x5b

.field static final TRANSACTION_getWifiApTimeOut:I = 0x60

.field static final TRANSACTION_getWifiEnabledState:I = 0x18

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x35

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x23

.field static final TRANSACTION_isCaptivePortalException:I = 0x6e

.field static final TRANSACTION_isDualBandSupported:I = 0x1c

.field static final TRANSACTION_isExtenderEnabled:I = 0x34

.field static final TRANSACTION_isMulticastEnabled:I = 0x24

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x1f

.field static final TRANSACTION_isWifiSharingEnabled:I = 0x69

.field static final TRANSACTION_matchProviderWithCurrentNetwork:I = 0xc

.field static final TRANSACTION_queryPasspointIcon:I = 0xb

.field static final TRANSACTION_reassociate:I = 0x15

.field static final TRANSACTION_reconnect:I = 0x14

.field static final TRANSACTION_releaseMulticastLock:I = 0x26

.field static final TRANSACTION_releaseWifiLock:I = 0x22

.field static final TRANSACTION_removeNetwork:I = 0xe

.field static final TRANSACTION_removePasspointConfiguration:I = 0x9

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestActivityInfo:I = 0x3

.field static final TRANSACTION_restoreBackupData:I = 0x47

.field static final TRANSACTION_restoreSupplicantBackupData:I = 0x48

.field static final TRANSACTION_retrieveBackupData:I = 0x46

.field static final TRANSACTION_saveConfiguration:I = 0x1d

.field static final TRANSACTION_semAddOrUpdateNetwork:I = 0x71

.field static final TRANSACTION_semGetConfiguredNetworks:I = 0x4b

.field static final TRANSACTION_semGetStationInfo:I = 0x5a

.field static final TRANSACTION_semGetWifiApChannel:I = 0x61

.field static final TRANSACTION_semRemoveNetwork:I = 0x72

.field static final TRANSACTION_semStartPartialChannelScan:I = 0x4e

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3d

.field static final TRANSACTION_setCountryCode:I = 0x19

.field static final TRANSACTION_setCountryRev:I = 0x58

.field static final TRANSACTION_setEnableAutoJoinWhenAssociated:I = 0x3f

.field static final TRANSACTION_setExtenderMode:I = 0x32

.field static final TRANSACTION_setImsCallEstablished:I = 0x4f

.field static final TRANSACTION_setIsFmcNetwork:I = 0x70

.field static final TRANSACTION_setProvisionSuccess:I = 0x6a

.field static final TRANSACTION_setRoamBand:I = 0x56

.field static final TRANSACTION_setRoamDelta:I = 0x52

.field static final TRANSACTION_setRoamScanPeriod:I = 0x54

.field static final TRANSACTION_setRoamTrigger:I = 0x50

.field static final TRANSACTION_setRvfMode:I = 0x6d

.field static final TRANSACTION_setWifiApConfigTxPower:I = 0x5d

.field static final TRANSACTION_setWifiApConfiguration:I = 0x31

.field static final TRANSACTION_setWifiApConfigurationToDefault:I = 0x5e

.field static final TRANSACTION_setWifiApEnabled:I = 0x27

.field static final TRANSACTION_setWifiApTimeOut:I = 0x5f

.field static final TRANSACTION_setWifiEnabled:I = 0x17

.field static final TRANSACTION_setWifiSharingEnabled:I = 0x68

.field static final TRANSACTION_startLocalOnlyHotspot:I = 0x2b

.field static final TRANSACTION_startScan:I = 0x11

.field static final TRANSACTION_startSoftAp:I = 0x29

.field static final TRANSACTION_startWatchLocalOnlyHotspot:I = 0x2d

.field static final TRANSACTION_stopLocalOnlyHotspot:I = 0x2c

.field static final TRANSACTION_stopSoftAp:I = 0x2a

.field static final TRANSACTION_stopWatchLocalOnlyHotspot:I = 0x2e

.field static final TRANSACTION_supportWifiAp5G:I = 0x66

.field static final TRANSACTION_supportWifiAp5GBasedOnCountry:I = 0x67

.field static final TRANSACTION_updateInterfaceIpState:I = 0x28

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IWifiManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v44

    return v44

    :sswitch_0
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_1
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_2
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_0

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/16 v44, 0x1

    return v44

    :cond_0
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_3
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1

    sget-object v44, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ResultReceiver;

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/net/wifi/IWifiManager$Stub;->requestActivityInfo(Landroid/os/ResultReceiver;)V

    const/16 v44, 0x1

    return v44

    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    :sswitch_4
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_2

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    const/16 v44, 0x1

    return v44

    :cond_2
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_5
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_3

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/16 v44, 0x1

    return v44

    :cond_3
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_6
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_4

    sget-object v44, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/wifi/IWifiManager$Stub;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_5

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/16 v44, 0x1

    return v44

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_7
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_6

    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_6
    const/4 v9, 0x0

    goto :goto_6

    :sswitch_8
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_7

    sget-object v44, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_8

    const/16 v44, 0x1

    :goto_8
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_7
    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    const/16 v44, 0x0

    goto :goto_8

    :sswitch_9
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->removePasspointConfiguration(Ljava/lang/String;)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_9

    const/16 v44, 0x1

    :goto_9
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_9
    const/16 v44, 0x0

    goto :goto_9

    :sswitch_a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v41

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v44, 0x1

    return v44

    :sswitch_b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->queryPasspointIcon(JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_a

    const/16 v24, 0x1

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v7, v1}, Landroid/net/wifi/IWifiManager$Stub;->deauthenticateNetwork(JZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_a
    const/16 v24, 0x0

    goto :goto_a

    :sswitch_e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_b

    const/16 v44, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_b
    const/16 v44, 0x0

    goto :goto_b

    :sswitch_f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_c

    const/16 v24, 0x1

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_d

    const/16 v44, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_c
    const/16 v24, 0x0

    goto :goto_c

    :cond_d
    const/16 v44, 0x0

    goto :goto_d

    :sswitch_10
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_e

    const/16 v44, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_e
    const/16 v44, 0x0

    goto :goto_e

    :sswitch_11
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_f

    sget-object v44, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanSettings;

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_10

    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/WorkSource;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v8, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_f
    const/4 v8, 0x0

    goto :goto_f

    :cond_10
    const/16 v22, 0x0

    goto :goto_10

    :sswitch_12
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v44, 0x1

    return v44

    :sswitch_13
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_14
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_15
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_16
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v36

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v36, :cond_11

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/16 v44, 0x1

    return v44

    :cond_11
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :sswitch_17
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_12

    const/16 v24, 0x1

    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_13

    const/16 v44, 0x1

    :goto_13
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_12
    const/16 v24, 0x0

    goto :goto_12

    :cond_13
    const/16 v44, 0x0

    goto :goto_13

    :sswitch_18
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_19
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_14

    const/16 v24, 0x1

    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_14
    const/16 v24, 0x0

    goto :goto_14

    :sswitch_1a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryCode()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_1b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentCountryCode()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_1c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_15

    const/16 v44, 0x1

    :goto_15
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_15
    const/16 v44, 0x0

    goto :goto_15

    :sswitch_1d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_16

    const/16 v44, 0x1

    :goto_16
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_16
    const/16 v44, 0x0

    goto :goto_16

    :sswitch_1e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_17

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_17
    const/16 v44, 0x1

    return v44

    :cond_17
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    :sswitch_1f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_18

    const/16 v44, 0x1

    :goto_18
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_18
    const/16 v44, 0x0

    goto :goto_18

    :sswitch_20
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_19

    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/WorkSource;

    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_1a

    const/16 v44, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_19
    const/16 v27, 0x0

    goto :goto_19

    :cond_1a
    const/16 v44, 0x0

    goto :goto_1a

    :sswitch_21
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1b

    sget-object v44, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/WorkSource;

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_1b
    const/16 v22, 0x0

    goto :goto_1b

    :sswitch_22
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_1c

    const/16 v44, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_1c
    const/16 v44, 0x0

    goto :goto_1c

    :sswitch_23
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_24
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_1d

    const/16 v44, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_1d
    const/16 v44, 0x0

    goto :goto_1d

    :sswitch_25
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_26
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_27
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1e

    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_1f

    const/16 v24, 0x1

    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_1e
    const/4 v9, 0x0

    goto :goto_1e

    :cond_1f
    const/16 v24, 0x0

    goto :goto_1f

    :sswitch_28
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateInterfaceIpState(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_29
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_20

    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_21

    const/16 v44, 0x1

    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_20
    const/4 v9, 0x0

    goto :goto_20

    :cond_21
    const/16 v44, 0x0

    goto :goto_21

    :sswitch_2a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopSoftAp()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_22

    const/16 v44, 0x1

    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_22
    const/16 v44, 0x0

    goto :goto_22

    :sswitch_2b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_23

    sget-object v44, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Messenger;

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v13, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_23
    const/4 v13, 0x0

    goto :goto_23

    :sswitch_2c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopLocalOnlyHotspot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_2d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_24

    sget-object v44, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Messenger;

    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/net/wifi/IWifiManager$Stub;->startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_24
    const/4 v13, 0x0

    goto :goto_24

    :sswitch_2e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWatchLocalOnlyHotspot()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_2f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_30
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_25

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_25
    const/16 v44, 0x1

    return v44

    :cond_25
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    :sswitch_31
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_26

    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    :goto_26
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_26
    const/4 v9, 0x0

    goto :goto_26

    :sswitch_32
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setExtenderMode(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_33
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getExtenderMode()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_34
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isExtenderEnabled()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_27

    const/16 v44, 0x1

    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_27
    const/16 v44, 0x0

    goto :goto_27

    :sswitch_35
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_28

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_28
    const/16 v44, 0x1

    return v44

    :cond_28
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    :sswitch_36
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_29

    const/16 v24, 0x1

    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_29
    const/16 v24, 0x0

    goto :goto_29

    :sswitch_37
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_2a

    const/16 v24, 0x1

    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_2a
    const/16 v24, 0x0

    goto :goto_2a

    :sswitch_38
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_39
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_3a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_3b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_3c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_3d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_3e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_3f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_2b

    const/16 v16, 0x1

    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setEnableAutoJoinWhenAssociated(Z)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_2c

    const/16 v44, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_2b
    const/16 v16, 0x0

    goto :goto_2b

    :cond_2c
    const/16 v44, 0x0

    goto :goto_2c

    :sswitch_40
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getEnableAutoJoinWhenAssociated()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_2d

    const/16 v44, 0x1

    :goto_2d
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_2d
    const/16 v44, 0x0

    goto :goto_2d

    :sswitch_41
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_2e

    const/16 v16, 0x1

    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableWifiConnectivityManager(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_2e
    const/16 v16, 0x0

    goto :goto_2e

    :sswitch_42
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_2f

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2f
    const/16 v44, 0x1

    return v44

    :cond_2f
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    :sswitch_43
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->disableEphemeralNetwork(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_44
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->factoryReset()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_45
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_30

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_30
    const/16 v44, 0x1

    return v44

    :cond_30
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    :sswitch_46
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->retrieveBackupData()[B

    move-result-object v43

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/16 v44, 0x1

    return v44

    :sswitch_47
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->restoreBackupData([B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_48
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->restoreSupplicantBackupData([B[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_49
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_31

    sget-object v44, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    :goto_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->callSECApi(Landroid/os/Message;)I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_31
    const/4 v12, 0x0

    goto :goto_31

    :sswitch_4a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_32

    sget-object v44, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    :goto_32
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/net/wifi/IWifiManager$Stub;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :cond_32
    const/4 v12, 0x0

    goto :goto_32

    :sswitch_4b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->semGetConfiguredNetworks(I)Ljava/util/List;

    move-result-object v40

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/16 v44, 0x1

    return v44

    :sswitch_4c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_33

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    const/16 v44, 0x1

    return v44

    :cond_33
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :sswitch_4d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_34

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    const/16 v44, 0x1

    return v44

    :cond_34
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    :sswitch_4e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->semStartPartialChannelScan([ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_4f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_35

    const/16 v16, 0x1

    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setImsCallEstablished(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :cond_35
    const/16 v16, 0x0

    goto :goto_35

    :sswitch_50
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamTrigger(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_36

    const/16 v44, 0x1

    :goto_36
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_36
    const/16 v44, 0x0

    goto :goto_36

    :sswitch_51
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamTrigger()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_52
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamDelta(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_37

    const/16 v44, 0x1

    :goto_37
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_37
    const/16 v44, 0x0

    goto :goto_37

    :sswitch_53
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamDelta()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_54
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamScanPeriod(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_38

    const/16 v44, 0x1

    :goto_38
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_38
    const/16 v44, 0x0

    goto :goto_38

    :sswitch_55
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamScanPeriod()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_56
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRoamBand(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_39

    const/16 v44, 0x1

    :goto_39
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_39
    const/16 v44, 0x0

    goto :goto_39

    :sswitch_57
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRoamBand()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_58
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->setCountryRev(Ljava/lang/String;)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_3a

    const/16 v44, 0x1

    :goto_3a
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_3a
    const/16 v44, 0x0

    goto :goto_3a

    :sswitch_59
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getCountryRev()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_5a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/IWifiManager$Stub;->semGetStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_5b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApStaList()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_5c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfigTxPower()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_5d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigTxPower(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_5e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfigurationToDefault()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_5f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApTimeOut(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v44, 0x1

    return v44

    :sswitch_60
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApTimeOut()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_61
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->semGetWifiApChannel()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_62
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApChipSupport5G()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_63
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApChipSupport5GCountry()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_64
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApChipMaxClient()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v44, 0x1

    return v44

    :sswitch_65
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApMaxClient()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_66
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->supportWifiAp5G()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_3b

    const/16 v44, 0x1

    :goto_3b
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_3b
    const/16 v44, 0x0

    goto :goto_3b

    :sswitch_67
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->supportWifiAp5GBasedOnCountry()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_3c

    const/16 v44, 0x1

    :goto_3c
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_3c
    const/16 v44, 0x0

    goto :goto_3c

    :sswitch_68
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_3d

    const/16 v16, 0x1

    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiSharingEnabled(Z)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_3e

    const/16 v44, 0x1

    :goto_3e
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_3d
    const/16 v16, 0x0

    goto :goto_3d

    :cond_3e
    const/16 v44, 0x0

    goto :goto_3e

    :sswitch_69
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiSharingEnabled()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_3f

    const/16 v44, 0x1

    :goto_3f
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_3f
    const/16 v44, 0x0

    goto :goto_3f

    :sswitch_6a
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_40

    const/16 v16, 0x1

    :goto_40
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setProvisionSuccess(Z)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_41

    const/16 v44, 0x1

    :goto_41
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_40
    const/16 v16, 0x0

    goto :goto_40

    :cond_41
    const/16 v44, 0x0

    goto :goto_41

    :sswitch_6b
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getProvisionSuccess()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_6c
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getRvfMode()I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :sswitch_6d
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/IWifiManager$Stub;->setRvfMode(I)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_42

    const/16 v44, 0x1

    :goto_42
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_42
    const/16 v44, 0x0

    goto :goto_42

    :sswitch_6e
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->isCaptivePortalException()Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_43

    const/16 v44, 0x1

    :goto_43
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_43
    const/16 v44, 0x0

    goto :goto_43

    :sswitch_6f
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/IWifiManager$Stub;->getWcmMessenger()Landroid/os/Messenger;

    move-result-object v37

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v37, :cond_44

    const/16 v44, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_44
    const/16 v44, 0x1

    return v44

    :cond_44
    const/16 v44, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    :sswitch_70
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_45

    const/16 v16, 0x1

    :goto_45
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setIsFmcNetwork(Z)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_46

    const/16 v44, 0x1

    :goto_46
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_45
    const/16 v16, 0x0

    goto :goto_45

    :cond_46
    const/16 v44, 0x0

    goto :goto_46

    :sswitch_71
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    if-eqz v44, :cond_47

    sget-object v44, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiConfiguration;

    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->semAddOrUpdateNetwork(ILandroid/net/wifi/WifiConfiguration;)I

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_47
    const/16 v20, 0x0

    goto :goto_47

    :sswitch_72
    const-string/jumbo v44, "android.net.wifi.IWifiManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/IWifiManager$Stub;->semRemoveNetwork(II)Z

    move-result v42

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_48

    const/16 v44, 0x1

    :goto_48
    move-object/from16 v0, p3

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v44, 0x1

    return v44

    :cond_48
    const/16 v44, 0x0

    goto :goto_48

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
