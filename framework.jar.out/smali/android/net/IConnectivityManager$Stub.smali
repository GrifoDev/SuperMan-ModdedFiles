.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_addVpnAddress:I = 0x59

.field static final TRANSACTION_checkIfLocalProxyPortExists:I = 0x58

.field static final TRANSACTION_checkMobileProvisioning:I = 0x37

.field static final TRANSACTION_createEnterpriseVpn:I = 0x49

.field static final TRANSACTION_disconnect:I = 0x4b

.field static final TRANSACTION_disconnectPerAppVpn:I = 0x52

.field static final TRANSACTION_disconnectSystemVpn:I = 0x4f

.field static final TRANSACTION_establishEnterpriseVpn:I = 0x4e

.field static final TRANSACTION_establishVpn:I = 0x2f

.field static final TRANSACTION_factoryReset:I = 0x5c

.field static final TRANSACTION_getActiveEnterpriseNetworkType:I = 0x1b

.field static final TRANSACTION_getActiveLinkProperties:I = 0xc

.field static final TRANSACTION_getActiveNetwork:I = 0x1

.field static final TRANSACTION_getActiveNetworkForUid:I = 0x2

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getActiveNetworkInfoForUid:I = 0x4

.field static final TRANSACTION_getActiveNetworkQuotaInfo:I = 0x11

.field static final TRANSACTION_getAllNetworkInfo:I = 0x7

.field static final TRANSACTION_getAllNetworkState:I = 0x10

.field static final TRANSACTION_getAllNetworks:I = 0x9

.field static final TRANSACTION_getAllVpnInfo:I = 0x33

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x36

.field static final TRANSACTION_getCaptivePortalServerUrl:I = 0x5f

.field static final TRANSACTION_getChainingEnabledForProfile:I = 0x55

.field static final TRANSACTION_getDefaultNetworkCapabilitiesForUser:I = 0xa

.field static final TRANSACTION_getDhcpServerConfiguration:I = 0x3b

.field static final TRANSACTION_getGlobalProxy:I = 0x2a

.field static final TRANSACTION_getInterfaceName:I = 0x4a

.field static final TRANSACTION_getKdiLinkQualityInfo:I = 0x67

.field static final TRANSACTION_getKdiSignalStrength:I = 0x66

.field static final TRANSACTION_getLastTetherError:I = 0x16

.field static final TRANSACTION_getLegacyVpnInfo:I = 0x32

.field static final TRANSACTION_getLinkForPropertiesForCapability:I = 0x64

.field static final TRANSACTION_getLinkProperties:I = 0xe

.field static final TRANSACTION_getLinkPropertiesForType:I = 0xd

.field static final TRANSACTION_getMobileProvisioningUrl:I = 0x38

.field static final TRANSACTION_getNetIdForInterface:I = 0x54

.field static final TRANSACTION_getNetIdForNetworkInfo:I = 0x53

.field static final TRANSACTION_getNetworkCapabilities:I = 0xf

.field static final TRANSACTION_getNetworkForType:I = 0x8

.field static final TRANSACTION_getNetworkInfo:I = 0x5

.field static final TRANSACTION_getNetworkInfoForUid:I = 0x6

.field static final TRANSACTION_getProxyForNetwork:I = 0x2c

.field static final TRANSACTION_getProxyInfoForUid:I = 0x57

.field static final TRANSACTION_getReservedNetworkId:I = 0x69

.field static final TRANSACTION_getRestoreDefaultNetworkDelay:I = 0x48

.field static final TRANSACTION_getRoamingReduction:I = 0x61

.field static final TRANSACTION_getRoutingInfo:I = 0x56

.field static final TRANSACTION_getTetherableBluetoothRegexs:I = 0x26

.field static final TRANSACTION_getTetherableIfaces:I = 0x20

.field static final TRANSACTION_getTetherableUsbRegexs:I = 0x24

.field static final TRANSACTION_getTetherableWifiRegexs:I = 0x25

.field static final TRANSACTION_getTetheredDhcpRanges:I = 0x23

.field static final TRANSACTION_getTetheredIfaces:I = 0x21

.field static final TRANSACTION_getTetheringErroredIfaces:I = 0x22

.field static final TRANSACTION_getUidsForApnType:I = 0x1a

.field static final TRANSACTION_getUsersForEnterpriseNetwork:I = 0x1c

.field static final TRANSACTION_getVpnConfig:I = 0x30

.field static final TRANSACTION_isActiveNetworkMetered:I = 0x12

.field static final TRANSACTION_isEntApnEnabled:I = 0x19

.field static final TRANSACTION_isEnterpriseApn:I = 0x1d

.field static final TRANSACTION_isNetworkSupported:I = 0xb

.field static final TRANSACTION_isSplitBillingEnabled:I = 0x18

.field static final TRANSACTION_isTetheringSupported:I = 0x17

.field static final TRANSACTION_knoxVpnProfileType:I = 0x51

.field static final TRANSACTION_listenForNetwork:I = 0x44

.field static final TRANSACTION_pendingListenForNetwork:I = 0x45

.field static final TRANSACTION_pendingRequestForNetwork:I = 0x42

.field static final TRANSACTION_prepareEnterpriseVpn:I = 0x4c

.field static final TRANSACTION_prepareEnterpriseVpnExt:I = 0x4d

.field static final TRANSACTION_prepareVpn:I = 0x2d

.field static final TRANSACTION_registerNetworkAgent:I = 0x40

.field static final TRANSACTION_registerNetworkFactory:I = 0x3d

.field static final TRANSACTION_releaseNetworkId:I = 0x6a

.field static final TRANSACTION_releaseNetworkRequest:I = 0x46

.field static final TRANSACTION_releasePendingNetworkRequest:I = 0x43

.field static final TRANSACTION_removeRouteToHostAddress:I = 0x62

.field static final TRANSACTION_removeVpnAddress:I = 0x5a

.field static final TRANSACTION_reportInetCondition:I = 0x28

.field static final TRANSACTION_reportNetworkConnectivity:I = 0x29

.field static final TRANSACTION_requestBandwidthUpdate:I = 0x3e

.field static final TRANSACTION_requestNetwork:I = 0x41

.field static final TRANSACTION_requestRouteToHostAddress:I = 0x13

.field static final TRANSACTION_retrieveEnterpriseProxy:I = 0x6b

.field static final TRANSACTION_saveDhcpServerConfiguration:I = 0x3c

.field static final TRANSACTION_semIsMobilePolicyDataEnabled:I = 0x65

.field static final TRANSACTION_semSetNcmTethering:I = 0x68

.field static final TRANSACTION_setAcceptUnvalidated:I = 0x47

.field static final TRANSACTION_setAirplaneMode:I = 0x3a

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x35

.field static final TRANSACTION_setGlobalProxy:I = 0x2b

.field static final TRANSACTION_setPolicyDataEnable:I = 0x63

.field static final TRANSACTION_setProvisioningNotificationVisible:I = 0x39

.field static final TRANSACTION_setProxyCredentials:I = 0x6c

.field static final TRANSACTION_setRoamingReduction:I = 0x60

.field static final TRANSACTION_setUnderlyingNetworksForVpn:I = 0x5b

.field static final TRANSACTION_setUsbTethering:I = 0x27

.field static final TRANSACTION_setVpnPackageAuthorization:I = 0x2e

.field static final TRANSACTION_startLegacyVpn:I = 0x31

.field static final TRANSACTION_startNattKeepalive:I = 0x5d

.field static final TRANSACTION_startTethering:I = 0x1e

.field static final TRANSACTION_stopKeepalive:I = 0x5e

.field static final TRANSACTION_stopTethering:I = 0x1f

.field static final TRANSACTION_tether:I = 0x14

.field static final TRANSACTION_unregisterNetworkFactory:I = 0x3f

.field static final TRANSACTION_untether:I = 0x15

.field static final TRANSACTION_updateEnterpriseVpn:I = 0x50

.field static final TRANSACTION_updateLockdownVpn:I = 0x34


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string/jumbo v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 72
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

    .line 1508
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v5, 0x1

    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetwork()Landroid/net/Network;

    move-result-object v53

    .line 54
    .local v53, "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v53, :cond_0

    .line 56
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v5, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 60
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 66
    .end local v53    # "_result":Landroid/net/Network;
    :sswitch_2
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 70
    .local v31, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v45, 0x1

    .line 71
    .local v45, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkForUid(IZ)Landroid/net/Network;

    move-result-object v53

    .line 72
    .restart local v53    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v53, :cond_2

    .line 74
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v5, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    :goto_2
    const/4 v5, 0x1

    return v5

    .line 70
    .end local v45    # "_arg1":Z
    .end local v53    # "_result":Landroid/net/Network;
    :cond_1
    const/16 v45, 0x0

    goto :goto_1

    .line 78
    .restart local v45    # "_arg1":Z
    .restart local v53    # "_result":Landroid/net/Network;
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 84
    .end local v31    # "_arg0":I
    .end local v45    # "_arg1":Z
    .end local v53    # "_result":Landroid/net/Network;
    :sswitch_3
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v55

    .line 86
    .local v55, "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v55, :cond_3

    .line 88
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v5, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    :goto_3
    const/4 v5, 0x1

    return v5

    .line 92
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 98
    .end local v55    # "_result":Landroid/net/NetworkInfo;
    :sswitch_4
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 102
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v45, 0x1

    .line 103
    .restart local v45    # "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;

    move-result-object v55

    .line 104
    .restart local v55    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    if-eqz v55, :cond_5

    .line 106
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v5, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 102
    .end local v45    # "_arg1":Z
    .end local v55    # "_result":Landroid/net/NetworkInfo;
    :cond_4
    const/16 v45, 0x0

    goto :goto_4

    .line 110
    .restart local v45    # "_arg1":Z
    .restart local v55    # "_result":Landroid/net/NetworkInfo;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 116
    .end local v31    # "_arg0":I
    .end local v45    # "_arg1":Z
    .end local v55    # "_result":Landroid/net/NetworkInfo;
    :sswitch_5
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 119
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v55

    .line 120
    .restart local v55    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v55, :cond_6

    .line 122
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v5, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 128
    :goto_6
    const/4 v5, 0x1

    return v5

    .line 126
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 132
    .end local v31    # "_arg0":I
    .end local v55    # "_result":Landroid/net/NetworkInfo;
    :sswitch_6
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 135
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 141
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 143
    .local v25, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v48, 0x1

    .line 144
    .local v48, "_arg2":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;

    move-result-object v55

    .line 145
    .restart local v55    # "_result":Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v55, :cond_9

    .line 147
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v5, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 153
    :goto_9
    const/4 v5, 0x1

    return v5

    .line 138
    .end local v25    # "_arg1":I
    .end local v48    # "_arg2":Z
    .end local v55    # "_result":Landroid/net/NetworkInfo;
    :cond_7
    const/16 v24, 0x0

    .local v24, "_arg0":Landroid/net/Network;
    goto :goto_7

    .line 143
    .end local v24    # "_arg0":Landroid/net/Network;
    .restart local v25    # "_arg1":I
    :cond_8
    const/16 v48, 0x0

    goto :goto_8

    .line 151
    .restart local v48    # "_arg2":Z
    .restart local v55    # "_result":Landroid/net/NetworkInfo;
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 157
    .end local v25    # "_arg1":I
    .end local v48    # "_arg2":Z
    .end local v55    # "_result":Landroid/net/NetworkInfo;
    :sswitch_7
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v68

    .line 159
    .local v68, "_result":[Landroid/net/NetworkInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    const/4 v5, 0x1

    return v5

    .line 165
    .end local v68    # "_result":[Landroid/net/NetworkInfo;
    :sswitch_8
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 168
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v53

    .line 169
    .restart local v53    # "_result":Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v53, :cond_a

    .line 171
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    const/4 v5, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    .line 177
    :goto_a
    const/4 v5, 0x1

    return v5

    .line 175
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 181
    .end local v31    # "_arg0":I
    .end local v53    # "_result":Landroid/net/Network;
    :sswitch_9
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworks()[Landroid/net/Network;

    move-result-object v66

    .line 183
    .local v66, "_result":[Landroid/net/Network;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 185
    const/4 v5, 0x1

    return v5

    .line 189
    .end local v66    # "_result":[Landroid/net/Network;
    :sswitch_a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 192
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v67

    .line 193
    .local v67, "_result":[Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 195
    const/4 v5, 0x1

    return v5

    .line 199
    .end local v31    # "_arg0":I
    .end local v67    # "_result":[Landroid/net/NetworkCapabilities;
    :sswitch_b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 202
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isNetworkSupported(I)Z

    move-result v64

    .line 203
    .local v64, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v64, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v5, 0x1

    return v5

    .line 204
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 209
    .end local v31    # "_arg0":I
    .end local v64    # "_result":Z
    :sswitch_c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v51

    .line 211
    .local v51, "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v51, :cond_c

    .line 213
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    :goto_c
    const/4 v5, 0x1

    return v5

    .line 217
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 223
    .end local v51    # "_result":Landroid/net/LinkProperties;
    :sswitch_d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 226
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v51

    .line 227
    .restart local v51    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v51, :cond_d

    .line 229
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    :goto_d
    const/4 v5, 0x1

    return v5

    .line 233
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 239
    .end local v31    # "_arg0":I
    .end local v51    # "_result":Landroid/net/LinkProperties;
    :sswitch_e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 242
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 247
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v51

    .line 248
    .restart local v51    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v51, :cond_f

    .line 250
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 256
    :goto_f
    const/4 v5, 0x1

    return v5

    .line 245
    .end local v51    # "_result":Landroid/net/LinkProperties;
    :cond_e
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_e

    .line 254
    .end local v24    # "_arg0":Landroid/net/Network;
    .restart local v51    # "_result":Landroid/net/LinkProperties;
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 260
    .end local v51    # "_result":Landroid/net/LinkProperties;
    :sswitch_f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 263
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 268
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v54

    .line 269
    .local v54, "_result":Landroid/net/NetworkCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v54, :cond_11

    .line 271
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    .line 277
    :goto_11
    const/4 v5, 0x1

    return v5

    .line 266
    .end local v54    # "_result":Landroid/net/NetworkCapabilities;
    :cond_10
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_10

    .line 275
    .end local v24    # "_arg0":Landroid/net/Network;
    .restart local v54    # "_result":Landroid/net/NetworkCapabilities;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 281
    .end local v54    # "_result":Landroid/net/NetworkCapabilities;
    :sswitch_10
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v69

    .line 283
    .local v69, "_result":[Landroid/net/NetworkState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 285
    const/4 v5, 0x1

    return v5

    .line 289
    .end local v69    # "_result":[Landroid/net/NetworkState;
    :sswitch_11
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;

    move-result-object v56

    .line 291
    .local v56, "_result":Landroid/net/NetworkQuotaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v56, :cond_12

    .line 293
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v5, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkQuotaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 299
    :goto_12
    const/4 v5, 0x1

    return v5

    .line 297
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 303
    .end local v56    # "_result":Landroid/net/NetworkQuotaInfo;
    :sswitch_12
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isActiveNetworkMetered()Z

    move-result v64

    .line 305
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    if-eqz v64, :cond_13

    const/4 v5, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    const/4 v5, 0x1

    return v5

    .line 306
    :cond_13
    const/4 v5, 0x0

    goto :goto_13

    .line 311
    .end local v64    # "_result":Z
    :sswitch_13
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 315
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v46

    .line 316
    .local v46, "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHostAddress(I[B)Z

    move-result v64

    .line 317
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v64, :cond_14

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v5, 0x1

    return v5

    .line 318
    :cond_14
    const/4 v5, 0x0

    goto :goto_14

    .line 323
    .end local v31    # "_arg0":I
    .end local v46    # "_arg1":[B
    .end local v64    # "_result":Z
    :sswitch_14
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 326
    .local v18, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->tether(Ljava/lang/String;)I

    move-result v49

    .line 327
    .local v49, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v5, 0x1

    return v5

    .line 333
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_15
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 336
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->untether(Ljava/lang/String;)I

    move-result v49

    .line 337
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v5, 0x1

    return v5

    .line 343
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_16
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 346
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLastTetherError(Ljava/lang/String;)I

    move-result v49

    .line 347
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v5, 0x1

    return v5

    .line 353
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_17
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isTetheringSupported()Z

    move-result v64

    .line 355
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v64, :cond_15

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v5, 0x1

    return v5

    .line 356
    :cond_15
    const/4 v5, 0x0

    goto :goto_15

    .line 361
    .end local v64    # "_result":Z
    :sswitch_18
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->isSplitBillingEnabled()Z

    move-result v64

    .line 363
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v64, :cond_16

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v5, 0x1

    return v5

    .line 364
    :cond_16
    const/4 v5, 0x0

    goto :goto_16

    .line 369
    .end local v64    # "_result":Z
    :sswitch_19
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 372
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->isEntApnEnabled(I)Z

    move-result v64

    .line 373
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v64, :cond_17

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v5, 0x1

    return v5

    .line 374
    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    .line 379
    .end local v31    # "_arg0":I
    .end local v64    # "_result":Z
    :sswitch_1a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 382
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getUidsForApnType(Ljava/lang/String;)[I

    move-result-object v65

    .line 383
    .local v65, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 385
    const/4 v5, 0x1

    return v5

    .line 389
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v65    # "_result":[I
    :sswitch_1b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 392
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getActiveEnterpriseNetworkType(Ljava/lang/String;)I

    move-result v49

    .line 393
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v5, 0x1

    return v5

    .line 399
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_1c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 402
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getUsersForEnterpriseNetwork(I)[I

    move-result-object v65

    .line 403
    .restart local v65    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 405
    const/4 v5, 0x1

    return v5

    .line 409
    .end local v31    # "_arg0":I
    .end local v65    # "_result":[I
    :sswitch_1d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 413
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 415
    .local v19, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 416
    .local v20, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->isEnterpriseApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v64

    .line 417
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v64, :cond_18

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v5, 0x1

    return v5

    .line 418
    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    .line 423
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v64    # "_result":Z
    :sswitch_1e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 427
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 428
    sget-object v5, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/ResultReceiver;

    .line 434
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v48, 0x1

    .line 435
    .restart local v48    # "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v43

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->startTethering(ILandroid/os/ResultReceiver;Z)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v5, 0x1

    return v5

    .line 431
    .end local v48    # "_arg2":Z
    :cond_19
    const/16 v43, 0x0

    .local v43, "_arg1":Landroid/os/ResultReceiver;
    goto :goto_19

    .line 434
    .end local v43    # "_arg1":Landroid/os/ResultReceiver;
    :cond_1a
    const/16 v48, 0x0

    goto :goto_1a

    .line 441
    .end local v31    # "_arg0":I
    :sswitch_1f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 444
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopTethering(I)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v5, 0x1

    return v5

    .line 450
    .end local v31    # "_arg0":I
    :sswitch_20
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v71

    .line 452
    .local v71, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 454
    const/4 v5, 0x1

    return v5

    .line 458
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v71

    .line 460
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 462
    const/4 v5, 0x1

    return v5

    .line 466
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v71

    .line 468
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 470
    const/4 v5, 0x1

    return v5

    .line 474
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetheredDhcpRanges()[Ljava/lang/String;

    move-result-object v71

    .line 476
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 478
    const/4 v5, 0x1

    return v5

    .line 482
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v71

    .line 484
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 486
    const/4 v5, 0x1

    return v5

    .line 490
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v71

    .line 492
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 494
    const/4 v5, 0x1

    return v5

    .line 498
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v71

    .line 500
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 502
    const/4 v5, 0x1

    return v5

    .line 506
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v40, 0x1

    .line 509
    .local v40, "_arg0":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUsbTethering(Z)I

    move-result v49

    .line 510
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v5, 0x1

    return v5

    .line 508
    .end local v40    # "_arg0":Z
    .end local v49    # "_result":I
    :cond_1b
    const/16 v40, 0x0

    goto :goto_1b

    .line 516
    :sswitch_28
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 520
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 521
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportInetCondition(II)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v5, 0x1

    return v5

    .line 527
    .end local v25    # "_arg1":I
    .end local v31    # "_arg0":I
    :sswitch_29
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 530
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 536
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v45, 0x1

    .line 537
    .restart local v45    # "_arg1":Z
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v5, 0x1

    return v5

    .line 533
    .end local v45    # "_arg1":Z
    :cond_1c
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_1c

    .line 536
    .end local v24    # "_arg0":Landroid/net/Network;
    :cond_1d
    const/16 v45, 0x0

    goto :goto_1d

    .line 543
    :sswitch_2a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v58

    .line 545
    .local v58, "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v58, :cond_1e

    .line 547
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v5, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 553
    :goto_1e
    const/4 v5, 0x1

    return v5

    .line 551
    :cond_1e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 557
    .end local v58    # "_result":Landroid/net/ProxyInfo;
    :sswitch_2b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 560
    sget-object v5, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/net/ProxyInfo;

    .line 565
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v5, 0x1

    return v5

    .line 563
    :cond_1f
    const/16 v36, 0x0

    .local v36, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_1f

    .line 571
    .end local v36    # "_arg0":Landroid/net/ProxyInfo;
    :sswitch_2c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 574
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 579
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v58

    .line 580
    .restart local v58    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v58, :cond_21

    .line 582
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v5, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 588
    :goto_21
    const/4 v5, 0x1

    return v5

    .line 577
    .end local v58    # "_result":Landroid/net/ProxyInfo;
    :cond_20
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_20

    .line 586
    .end local v24    # "_arg0":Landroid/net/Network;
    .restart local v58    # "_result":Landroid/net/ProxyInfo;
    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 592
    .end local v58    # "_result":Landroid/net/ProxyInfo;
    :sswitch_2d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 596
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 598
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 599
    .local v15, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Landroid/net/IConnectivityManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v64

    .line 600
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v64, :cond_22

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v5, 0x1

    return v5

    .line 601
    :cond_22
    const/4 v5, 0x0

    goto :goto_22

    .line 606
    .end local v15    # "_arg2":I
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v64    # "_result":Z
    :sswitch_2e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 610
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 612
    .restart local v25    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v48, 0x1

    .line 613
    .restart local v48    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v5, 0x1

    return v5

    .line 612
    .end local v48    # "_arg2":Z
    :cond_23
    const/16 v48, 0x0

    goto :goto_23

    .line 619
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":I
    :sswitch_2f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    .line 622
    sget-object v5, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/net/VpnConfig;

    .line 627
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v59

    .line 628
    .local v59, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    if-eqz v59, :cond_25

    .line 630
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    const/4 v5, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 636
    :goto_25
    const/4 v5, 0x1

    return v5

    .line 625
    .end local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_24
    const/16 v38, 0x0

    .local v38, "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_24

    .line 634
    .end local v38    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_25
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 640
    .end local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_30
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 643
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v62

    .line 644
    .local v62, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    if-eqz v62, :cond_26

    .line 646
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    const/4 v5, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/net/VpnConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 652
    :goto_26
    const/4 v5, 0x1

    return v5

    .line 650
    :cond_26
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 656
    .end local v31    # "_arg0":I
    .end local v62    # "_result":Lcom/android/internal/net/VpnConfig;
    :sswitch_31
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    .line 659
    sget-object v5, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/net/VpnProfile;

    .line 664
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v5, 0x1

    return v5

    .line 662
    :cond_27
    const/16 v39, 0x0

    .local v39, "_arg0":Lcom/android/internal/net/VpnProfile;
    goto :goto_27

    .line 670
    .end local v39    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :sswitch_32
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 673
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v61

    .line 674
    .local v61, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v61, :cond_28

    .line 676
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    const/4 v5, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/net/LegacyVpnInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 682
    :goto_28
    const/4 v5, 0x1

    return v5

    .line 680
    :cond_28
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    .line 686
    .end local v31    # "_arg0":I
    .end local v61    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :sswitch_33
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v70

    .line 688
    .local v70, "_result":[Lcom/android/internal/net/VpnInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 690
    const/4 v5, 0x1

    return v5

    .line 694
    .end local v70    # "_result":[Lcom/android/internal/net/VpnInfo;
    :sswitch_34
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->updateLockdownVpn()Z

    move-result v64

    .line 696
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    if-eqz v64, :cond_29

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v5, 0x1

    return v5

    .line 697
    :cond_29
    const/4 v5, 0x0

    goto :goto_29

    .line 702
    .end local v64    # "_result":Z
    :sswitch_35
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 706
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 708
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v48, 0x1

    .line 709
    .restart local v48    # "_arg2":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v19

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    move-result v64

    .line 710
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    if-eqz v64, :cond_2b

    const/4 v5, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    const/4 v5, 0x1

    return v5

    .line 708
    .end local v48    # "_arg2":Z
    .end local v64    # "_result":Z
    :cond_2a
    const/16 v48, 0x0

    goto :goto_2a

    .line 711
    .restart local v48    # "_arg2":Z
    .restart local v64    # "_result":Z
    :cond_2b
    const/4 v5, 0x0

    goto :goto_2b

    .line 716
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg0":I
    .end local v48    # "_arg2":Z
    .end local v64    # "_result":Z
    :sswitch_36
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 719
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v63

    .line 720
    .local v63, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    const/4 v5, 0x1

    return v5

    .line 726
    .end local v31    # "_arg0":I
    .end local v63    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 729
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkMobileProvisioning(I)I

    move-result v49

    .line 730
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 731
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v5, 0x1

    return v5

    .line 736
    .end local v31    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_38
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v63

    .line 738
    .restart local v63    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    const/4 v5, 0x1

    return v5

    .line 744
    .end local v63    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v40, 0x1

    .line 748
    .local v40, "_arg0":Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 750
    .restart local v25    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 751
    .restart local v20    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v25

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setProvisioningNotificationVisible(ZILjava/lang/String;)V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    const/4 v5, 0x1

    return v5

    .line 746
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v25    # "_arg1":I
    .end local v40    # "_arg0":Z
    :cond_2c
    const/16 v40, 0x0

    .restart local v40    # "_arg0":Z
    goto :goto_2c

    .line 757
    .end local v40    # "_arg0":Z
    :sswitch_3a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v40, 0x1

    .line 760
    .local v40, "_arg0":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setAirplaneMode(Z)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    const/4 v5, 0x1

    return v5

    .line 759
    .end local v40    # "_arg0":Z
    :cond_2d
    const/16 v40, 0x0

    goto :goto_2d

    .line 766
    :sswitch_3b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v50

    .line 768
    .local v50, "_result":Landroid/net/DhcpServerConfiguration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    if-eqz v50, :cond_2e

    .line 770
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    const/4 v5, 0x1

    move-object/from16 v0, v50

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/DhcpServerConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 776
    :goto_2e
    const/4 v5, 0x1

    return v5

    .line 774
    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 780
    .end local v50    # "_result":Landroid/net/DhcpServerConfiguration;
    :sswitch_3c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    .line 783
    sget-object v5, Landroid/net/DhcpServerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/net/DhcpServerConfiguration;

    .line 788
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    move-result v64

    .line 789
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v64, :cond_30

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 791
    const/4 v5, 0x1

    return v5

    .line 786
    .end local v64    # "_result":Z
    :cond_2f
    const/16 v33, 0x0

    .local v33, "_arg0":Landroid/net/DhcpServerConfiguration;
    goto :goto_2f

    .line 790
    .end local v33    # "_arg0":Landroid/net/DhcpServerConfiguration;
    .restart local v64    # "_result":Z
    :cond_30
    const/4 v5, 0x0

    goto :goto_30

    .line 795
    .end local v64    # "_result":Z
    :sswitch_3d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    .line 798
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 804
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 805
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/net/IConnectivityManager$Stub;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    const/4 v5, 0x1

    return v5

    .line 801
    .end local v19    # "_arg1":Ljava/lang/String;
    :cond_31
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/os/Messenger;
    goto :goto_31

    .line 811
    .end local v6    # "_arg0":Landroid/os/Messenger;
    :sswitch_3e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    .line 814
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 819
    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestBandwidthUpdate(Landroid/net/Network;)Z

    move-result v64

    .line 820
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    if-eqz v64, :cond_33

    const/4 v5, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/4 v5, 0x1

    return v5

    .line 817
    .end local v64    # "_result":Z
    :cond_32
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_32

    .line 821
    .end local v24    # "_arg0":Landroid/net/Network;
    .restart local v64    # "_result":Z
    :cond_33
    const/4 v5, 0x0

    goto :goto_33

    .line 826
    .end local v64    # "_result":Z
    :sswitch_3f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    .line 829
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 834
    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/IConnectivityManager$Stub;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 836
    const/4 v5, 0x1

    return v5

    .line 832
    :cond_34
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/os/Messenger;
    goto :goto_34

    .line 840
    .end local v6    # "_arg0":Landroid/os/Messenger;
    :sswitch_40
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 843
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .line 849
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    .line 850
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    .line 856
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37

    .line 857
    sget-object v5, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkProperties;

    .line 863
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    .line 864
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkCapabilities;

    .line 870
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 872
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    .line 873
    sget-object v5, Landroid/net/NetworkMisc;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkMisc;

    :goto_39
    move-object/from16 v5, p0

    .line 878
    invoke-virtual/range {v5 .. v11}, Landroid/net/IConnectivityManager$Stub;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result v49

    .line 879
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v5, 0x1

    return v5

    .line 846
    .end local v10    # "_arg4":I
    .end local v49    # "_result":I
    :cond_35
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/os/Messenger;
    goto :goto_35

    .line 853
    .end local v6    # "_arg0":Landroid/os/Messenger;
    :cond_36
    const/4 v7, 0x0

    .local v7, "_arg1":Landroid/net/NetworkInfo;
    goto :goto_36

    .line 860
    .end local v7    # "_arg1":Landroid/net/NetworkInfo;
    :cond_37
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/net/LinkProperties;
    goto :goto_37

    .line 867
    .end local v8    # "_arg2":Landroid/net/LinkProperties;
    :cond_38
    const/4 v9, 0x0

    .local v9, "_arg3":Landroid/net/NetworkCapabilities;
    goto :goto_38

    .line 876
    .end local v9    # "_arg3":Landroid/net/NetworkCapabilities;
    .restart local v10    # "_arg4":I
    :cond_39
    const/4 v11, 0x0

    .local v11, "_arg5":Landroid/net/NetworkMisc;
    goto :goto_39

    .line 885
    .end local v10    # "_arg4":I
    .end local v11    # "_arg5":Landroid/net/NetworkMisc;
    :sswitch_41
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 888
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 894
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    .line 895
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Messenger;

    .line 901
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 903
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 905
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10    # "_arg4":I
    move-object/from16 v12, p0

    move/from16 v17, v10

    .line 906
    invoke-virtual/range {v12 .. v17}, Landroid/net/IConnectivityManager$Stub;->requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;

    move-result-object v57

    .line 907
    .local v57, "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    if-eqz v57, :cond_3c

    .line 909
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    const/4 v5, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 915
    :goto_3c
    const/4 v5, 0x1

    return v5

    .line 891
    .end local v10    # "_arg4":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v57    # "_result":Landroid/net/NetworkRequest;
    :cond_3a
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3a

    .line 898
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3b
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/os/Messenger;
    goto :goto_3b

    .line 913
    .end local v14    # "_arg1":Landroid/os/Messenger;
    .restart local v10    # "_arg4":I
    .restart local v15    # "_arg2":I
    .restart local v16    # "_arg3":Landroid/os/IBinder;
    .restart local v57    # "_result":Landroid/net/NetworkRequest;
    :cond_3c
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .line 919
    .end local v10    # "_arg4":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v57    # "_result":Landroid/net/NetworkRequest;
    :sswitch_42
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 922
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 928
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    .line 929
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/PendingIntent;

    .line 934
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v13, v1}, Landroid/net/IConnectivityManager$Stub;->pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;

    move-result-object v57

    .line 935
    .restart local v57    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v57, :cond_3f

    .line 937
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v5, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 943
    :goto_3f
    const/4 v5, 0x1

    return v5

    .line 925
    .end local v57    # "_result":Landroid/net/NetworkRequest;
    :cond_3d
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_3d

    .line 932
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_3e
    const/16 v42, 0x0

    .local v42, "_arg1":Landroid/app/PendingIntent;
    goto :goto_3e

    .line 941
    .end local v42    # "_arg1":Landroid/app/PendingIntent;
    .restart local v57    # "_result":Landroid/net/NetworkRequest;
    :cond_3f
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 947
    .end local v57    # "_result":Landroid/net/NetworkRequest;
    :sswitch_43
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    .line 950
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/PendingIntent;

    .line 955
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 956
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    const/4 v5, 0x1

    return v5

    .line 953
    :cond_40
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/app/PendingIntent;
    goto :goto_40

    .line 961
    .end local v32    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_44
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    .line 964
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 970
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    .line 971
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Messenger;

    .line 977
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v47

    .line 978
    .local v47, "_arg2":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v13, v14, v1}, Landroid/net/IConnectivityManager$Stub;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v57

    .line 979
    .restart local v57    # "_result":Landroid/net/NetworkRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    if-eqz v57, :cond_43

    .line 981
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v5, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 987
    :goto_43
    const/4 v5, 0x1

    return v5

    .line 967
    .end local v47    # "_arg2":Landroid/os/IBinder;
    .end local v57    # "_result":Landroid/net/NetworkRequest;
    :cond_41
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_41

    .line 974
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_42
    const/4 v14, 0x0

    .restart local v14    # "_arg1":Landroid/os/Messenger;
    goto :goto_42

    .line 985
    .end local v14    # "_arg1":Landroid/os/Messenger;
    .restart local v47    # "_arg2":Landroid/os/IBinder;
    .restart local v57    # "_result":Landroid/net/NetworkRequest;
    :cond_43
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43

    .line 991
    .end local v47    # "_arg2":Landroid/os/IBinder;
    .end local v57    # "_result":Landroid/net/NetworkRequest;
    :sswitch_45
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    .line 994
    sget-object v5, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/NetworkCapabilities;

    .line 1000
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    .line 1001
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/PendingIntent;

    .line 1006
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v13, v1}, Landroid/net/IConnectivityManager$Stub;->pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    const/4 v5, 0x1

    return v5

    .line 997
    :cond_44
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_44

    .line 1004
    .end local v13    # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_45
    const/16 v42, 0x0

    .restart local v42    # "_arg1":Landroid/app/PendingIntent;
    goto :goto_45

    .line 1012
    .end local v42    # "_arg1":Landroid/app/PendingIntent;
    :sswitch_46
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    .line 1015
    sget-object v5, Landroid/net/NetworkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/NetworkRequest;

    .line 1020
    :goto_46
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    const/4 v5, 0x1

    return v5

    .line 1018
    :cond_46
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/net/NetworkRequest;
    goto :goto_46

    .line 1026
    .end local v35    # "_arg0":Landroid/net/NetworkRequest;
    :sswitch_47
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    .line 1029
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 1035
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    const/16 v45, 0x1

    .line 1037
    .local v45, "_arg1":Z
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/16 v48, 0x1

    .line 1038
    .restart local v48    # "_arg2":Z
    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v45

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    const/4 v5, 0x1

    return v5

    .line 1032
    .end local v45    # "_arg1":Z
    .end local v48    # "_arg2":Z
    :cond_47
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_47

    .line 1035
    .end local v24    # "_arg0":Landroid/net/Network;
    :cond_48
    const/16 v45, 0x0

    .restart local v45    # "_arg1":Z
    goto :goto_48

    .line 1037
    :cond_49
    const/16 v48, 0x0

    goto :goto_49

    .line 1044
    .end local v45    # "_arg1":Z
    :sswitch_48
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1047
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRestoreDefaultNetworkDelay(I)I

    move-result v49

    .line 1048
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v5, 0x1

    return v5

    .line 1054
    .end local v31    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_49
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1058
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1059
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->createEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v64

    .line 1060
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v64, :cond_4a

    const/4 v5, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v5, 0x1

    return v5

    .line 1061
    :cond_4a
    const/4 v5, 0x0

    goto :goto_4a

    .line 1066
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v64    # "_result":Z
    :sswitch_4a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1069
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 1070
    .restart local v63    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    const/4 v5, 0x1

    return v5

    .line 1076
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v63    # "_result":Ljava/lang/String;
    :sswitch_4b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1080
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b

    const/16 v45, 0x1

    .line 1081
    .local v45, "_arg1":Z
    :goto_4b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->disconnect(Ljava/lang/String;Z)Z

    move-result v64

    .line 1082
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    if-eqz v64, :cond_4c

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    const/4 v5, 0x1

    return v5

    .line 1080
    .end local v45    # "_arg1":Z
    .end local v64    # "_result":Z
    :cond_4b
    const/16 v45, 0x0

    goto :goto_4b

    .line 1083
    .restart local v45    # "_arg1":Z
    .restart local v64    # "_result":Z
    :cond_4c
    const/4 v5, 0x0

    goto :goto_4c

    .line 1088
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v45    # "_arg1":Z
    .end local v64    # "_result":Z
    :sswitch_4c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1092
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1094
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1096
    .restart local v20    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    const/16 v21, 0x1

    .line 1098
    .local v21, "_arg3":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e

    const/16 v22, 0x1

    .local v22, "_arg4":Z
    :goto_4e
    move-object/from16 v17, p0

    .line 1099
    invoke-virtual/range {v17 .. v22}, Landroid/net/IConnectivityManager$Stub;->prepareEnterpriseVpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v64

    .line 1100
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    if-eqz v64, :cond_4f

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1102
    const/4 v5, 0x1

    return v5

    .line 1096
    .end local v21    # "_arg3":Z
    .end local v22    # "_arg4":Z
    .end local v64    # "_result":Z
    :cond_4d
    const/16 v21, 0x0

    .restart local v21    # "_arg3":Z
    goto :goto_4d

    .line 1098
    :cond_4e
    const/16 v22, 0x0

    goto :goto_4e

    .line 1101
    .restart local v22    # "_arg4":Z
    .restart local v64    # "_result":Z
    :cond_4f
    const/4 v5, 0x0

    goto :goto_4f

    .line 1106
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v21    # "_arg3":Z
    .end local v22    # "_arg4":Z
    .end local v64    # "_result":Z
    :sswitch_4d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1110
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1112
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    const/16 v48, 0x1

    .line 1114
    .local v48, "_arg2":Z
    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_51

    const/16 v21, 0x1

    .line 1115
    .local v21, "_arg3":Z
    :goto_51
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v48

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/IConnectivityManager$Stub;->prepareEnterpriseVpnExt(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v64

    .line 1116
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    if-eqz v64, :cond_52

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v5, 0x1

    return v5

    .line 1112
    .end local v21    # "_arg3":Z
    .end local v48    # "_arg2":Z
    .end local v64    # "_result":Z
    :cond_50
    const/16 v48, 0x0

    .restart local v48    # "_arg2":Z
    goto :goto_50

    .line 1114
    :cond_51
    const/16 v21, 0x0

    goto :goto_51

    .line 1117
    .restart local v21    # "_arg3":Z
    .restart local v64    # "_result":Z
    :cond_52
    const/4 v5, 0x0

    goto :goto_52

    .line 1122
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg3":Z
    .end local v48    # "_arg2":Z
    .end local v64    # "_result":Z
    :sswitch_4e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53

    .line 1125
    sget-object v5, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/internal/net/VpnConfig;

    .line 1131
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1132
    .restart local v19    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->establishEnterpriseVpn(Lcom/android/internal/net/VpnConfig;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v59

    .line 1133
    .restart local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    if-eqz v59, :cond_54

    .line 1135
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    const/4 v5, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1141
    :goto_54
    const/4 v5, 0x1

    return v5

    .line 1128
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_53
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Lcom/android/internal/net/VpnConfig;
    goto :goto_53

    .line 1139
    .end local v38    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .restart local v19    # "_arg1":Ljava/lang/String;
    .restart local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_54
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    .line 1145
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v59    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_4f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1148
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->disconnectSystemVpn(I)V

    .line 1149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    const/4 v5, 0x1

    return v5

    .line 1154
    .end local v31    # "_arg0":I
    :sswitch_50
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1158
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1160
    .restart local v25    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55

    const/16 v48, 0x1

    .line 1161
    .local v48, "_arg2":Z
    :goto_55
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->updateEnterpriseVpn(Ljava/lang/String;IZ)V

    .line 1162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    const/4 v5, 0x1

    return v5

    .line 1160
    .end local v48    # "_arg2":Z
    :cond_55
    const/16 v48, 0x0

    goto :goto_55

    .line 1167
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":I
    :sswitch_51
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1170
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->knoxVpnProfileType(Ljava/lang/String;)I

    move-result v49

    .line 1171
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    const/4 v5, 0x1

    return v5

    .line 1177
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_52
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1181
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1182
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->disconnectPerAppVpn(Ljava/lang/String;I)Z

    move-result v64

    .line 1183
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    if-eqz v64, :cond_56

    const/4 v5, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    const/4 v5, 0x1

    return v5

    .line 1184
    :cond_56
    const/4 v5, 0x0

    goto :goto_56

    .line 1189
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":I
    .end local v64    # "_result":Z
    :sswitch_53
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_57

    .line 1192
    sget-object v5, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/NetworkInfo;

    .line 1197
    :goto_57
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetIdForNetworkInfo(Landroid/net/NetworkInfo;)I

    move-result v49

    .line 1198
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/4 v5, 0x1

    return v5

    .line 1195
    .end local v49    # "_result":I
    :cond_57
    const/16 v34, 0x0

    .local v34, "_arg0":Landroid/net/NetworkInfo;
    goto :goto_57

    .line 1204
    .end local v34    # "_arg0":Landroid/net/NetworkInfo;
    :sswitch_54
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1207
    .restart local v18    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getNetIdForInterface(Ljava/lang/String;)I

    move-result v49

    .line 1208
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    const/4 v5, 0x1

    return v5

    .line 1214
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v49    # "_result":I
    :sswitch_55
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1217
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getChainingEnabledForProfile(I)Z

    move-result v64

    .line 1218
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    if-eqz v64, :cond_58

    const/4 v5, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    const/4 v5, 0x1

    return v5

    .line 1219
    :cond_58
    const/4 v5, 0x0

    goto :goto_58

    .line 1224
    .end local v31    # "_arg0":I
    .end local v64    # "_result":Z
    :sswitch_56
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1228
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1230
    .restart local v19    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1231
    .restart local v20    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/IConnectivityManager$Stub;->getRoutingInfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 1232
    .restart local v63    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1234
    const/4 v5, 0x1

    return v5

    .line 1238
    .end local v19    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":Ljava/lang/String;
    .end local v31    # "_arg0":I
    .end local v63    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1241
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getProxyInfoForUid(I)[Ljava/lang/String;

    move-result-object v71

    .line 1242
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1244
    const/4 v5, 0x1

    return v5

    .line 1248
    .end local v31    # "_arg0":I
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_58
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1251
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->checkIfLocalProxyPortExists(I)Z

    move-result v64

    .line 1252
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    if-eqz v64, :cond_59

    const/4 v5, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v5, 0x1

    return v5

    .line 1253
    :cond_59
    const/4 v5, 0x0

    goto :goto_59

    .line 1258
    .end local v31    # "_arg0":I
    .end local v64    # "_result":Z
    :sswitch_59
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1262
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1263
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v64

    .line 1264
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    if-eqz v64, :cond_5a

    const/4 v5, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v5, 0x1

    return v5

    .line 1265
    :cond_5a
    const/4 v5, 0x0

    goto :goto_5a

    .line 1270
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":I
    .end local v64    # "_result":Z
    :sswitch_5a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1274
    .restart local v18    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1275
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v64

    .line 1276
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    if-eqz v64, :cond_5b

    const/4 v5, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    const/4 v5, 0x1

    return v5

    .line 1277
    :cond_5b
    const/4 v5, 0x0

    goto :goto_5b

    .line 1282
    .end local v18    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":I
    .end local v64    # "_result":Z
    :sswitch_5b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/net/Network;

    .line 1285
    .local v41, "_arg0":[Landroid/net/Network;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v64

    .line 1286
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    if-eqz v64, :cond_5c

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    const/4 v5, 0x1

    return v5

    .line 1287
    :cond_5c
    const/4 v5, 0x0

    goto :goto_5c

    .line 1292
    .end local v41    # "_arg0":[Landroid/net/Network;
    .end local v64    # "_result":Z
    :sswitch_5c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->factoryReset()V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    const/4 v5, 0x1

    return v5

    .line 1299
    :sswitch_5d
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5d

    .line 1302
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 1308
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1310
    .restart local v25    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 1311
    sget-object v5, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/Messenger;

    .line 1317
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 1319
    .restart local v16    # "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1321
    .local v28, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1323
    .local v29, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg6":Ljava/lang/String;
    move-object/from16 v23, p0

    move-object/from16 v27, v16

    .line 1324
    invoke-virtual/range {v23 .. v30}, Landroid/net/IConnectivityManager$Stub;->startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V

    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    const/4 v5, 0x1

    return v5

    .line 1305
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v25    # "_arg1":I
    .end local v28    # "_arg4":Ljava/lang/String;
    .end local v29    # "_arg5":I
    .end local v30    # "_arg6":Ljava/lang/String;
    :cond_5d
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_5d

    .line 1314
    .end local v24    # "_arg0":Landroid/net/Network;
    .restart local v25    # "_arg1":I
    :cond_5e
    const/16 v26, 0x0

    .local v26, "_arg2":Landroid/os/Messenger;
    goto :goto_5e

    .line 1330
    .end local v25    # "_arg1":I
    .end local v26    # "_arg2":Landroid/os/Messenger;
    :sswitch_5e
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    .line 1333
    sget-object v5, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/net/Network;

    .line 1339
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1340
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->stopKeepalive(Landroid/net/Network;I)V

    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    const/4 v5, 0x1

    return v5

    .line 1336
    .end local v25    # "_arg1":I
    :cond_5f
    const/16 v24, 0x0

    .restart local v24    # "_arg0":Landroid/net/Network;
    goto :goto_5f

    .line 1346
    .end local v24    # "_arg0":Landroid/net/Network;
    :sswitch_5f
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getCaptivePortalServerUrl()Ljava/lang/String;

    move-result-object v63

    .line 1348
    .restart local v63    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1350
    const/4 v5, 0x1

    return v5

    .line 1354
    .end local v63    # "_result":Ljava/lang/String;
    :sswitch_60
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1358
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1359
    .restart local v25    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setRoamingReduction(II)V

    .line 1360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1361
    const/4 v5, 0x1

    return v5

    .line 1365
    .end local v25    # "_arg1":I
    .end local v31    # "_arg0":I
    :sswitch_61
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1368
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getRoamingReduction(I)I

    move-result v49

    .line 1369
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v5, 0x1

    return v5

    .line 1375
    .end local v31    # "_arg0":I
    .end local v49    # "_result":I
    :sswitch_62
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1379
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v46

    .line 1380
    .restart local v46    # "_arg1":[B
    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->removeRouteToHostAddress(I[B)Z

    move-result v64

    .line 1381
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1382
    if-eqz v64, :cond_60

    const/4 v5, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    const/4 v5, 0x1

    return v5

    .line 1382
    :cond_60
    const/4 v5, 0x0

    goto :goto_60

    .line 1387
    .end local v31    # "_arg0":I
    .end local v46    # "_arg1":[B
    .end local v64    # "_result":Z
    :sswitch_63
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1391
    .restart local v31    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_61

    const/16 v45, 0x1

    .line 1392
    .restart local v45    # "_arg1":Z
    :goto_61
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setPolicyDataEnable(IZ)V

    .line 1393
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    const/4 v5, 0x1

    return v5

    .line 1391
    .end local v45    # "_arg1":Z
    :cond_61
    const/16 v45, 0x0

    goto :goto_61

    .line 1398
    .end local v31    # "_arg0":I
    :sswitch_64
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1401
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->getLinkForPropertiesForCapability(I)Landroid/net/LinkProperties;

    move-result-object v51

    .line 1402
    .restart local v51    # "_result":Landroid/net/LinkProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    if-eqz v51, :cond_62

    .line 1404
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1410
    :goto_62
    const/4 v5, 0x1

    return v5

    .line 1408
    :cond_62
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_62

    .line 1414
    .end local v31    # "_arg0":I
    .end local v51    # "_result":Landroid/net/LinkProperties;
    :sswitch_65
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->semIsMobilePolicyDataEnabled()Z

    move-result v64

    .line 1416
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    if-eqz v64, :cond_63

    const/4 v5, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v5, 0x1

    return v5

    .line 1417
    :cond_63
    const/4 v5, 0x0

    goto :goto_63

    .line 1422
    .end local v64    # "_result":Z
    :sswitch_66
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getKdiSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v60

    .line 1424
    .local v60, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1425
    if-eqz v60, :cond_64

    .line 1426
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    const/4 v5, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1432
    :goto_64
    const/4 v5, 0x1

    return v5

    .line 1430
    :cond_64
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_64

    .line 1436
    .end local v60    # "_result":Landroid/telephony/SignalStrength;
    :sswitch_67
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getKdiLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v52

    .line 1438
    .local v52, "_result":Landroid/net/LinkQualityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    if-eqz v52, :cond_65

    .line 1440
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1446
    :goto_65
    const/4 v5, 0x1

    return v5

    .line 1444
    :cond_65
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65

    .line 1450
    .end local v52    # "_result":Landroid/net/LinkQualityInfo;
    :sswitch_68
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_66

    const/16 v40, 0x1

    .line 1453
    .restart local v40    # "_arg0":Z
    :goto_66
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->semSetNcmTethering(Z)I

    move-result v49

    .line 1454
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1456
    const/4 v5, 0x1

    return v5

    .line 1452
    .end local v40    # "_arg0":Z
    .end local v49    # "_result":I
    :cond_66
    const/16 v40, 0x0

    goto :goto_66

    .line 1460
    :sswitch_69
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1461
    invoke-virtual/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;->getReservedNetworkId()I

    move-result v49

    .line 1462
    .restart local v49    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    move-object/from16 v0, p3

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    const/4 v5, 0x1

    return v5

    .line 1468
    .end local v49    # "_result":I
    :sswitch_6a
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 1471
    .restart local v31    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->releaseNetworkId(I)V

    .line 1472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1473
    const/4 v5, 0x1

    return v5

    .line 1477
    .end local v31    # "_arg0":I
    :sswitch_6b
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/16 v40, 0x1

    .line 1480
    .restart local v40    # "_arg0":Z
    :goto_67
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/net/IConnectivityManager$Stub;->retrieveEnterpriseProxy(Z)Landroid/net/ProxyInfo;

    move-result-object v58

    .line 1481
    .restart local v58    # "_result":Landroid/net/ProxyInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    if-eqz v58, :cond_68

    .line 1483
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    const/4 v5, 0x1

    move-object/from16 v0, v58

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/net/ProxyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1489
    :goto_68
    const/4 v5, 0x1

    return v5

    .line 1479
    .end local v40    # "_arg0":Z
    .end local v58    # "_result":Landroid/net/ProxyInfo;
    :cond_67
    const/16 v40, 0x0

    goto :goto_67

    .line 1487
    .restart local v40    # "_arg0":Z
    .restart local v58    # "_result":Landroid/net/ProxyInfo;
    :cond_68
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    .line 1493
    .end local v40    # "_arg0":Z
    .end local v58    # "_result":Landroid/net/ProxyInfo;
    :sswitch_6c
    const-string/jumbo v5, "android.net.IConnectivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_69

    .line 1496
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/Bundle;

    .line 1502
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/enterprise/proxy/IProxyCredentialsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;

    move-result-object v44

    .line 1503
    .local v44, "_arg1":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/net/IConnectivityManager$Stub;->setProxyCredentials(Landroid/os/Bundle;Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;)V

    .line 1504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1505
    const/4 v5, 0x1

    return v5

    .line 1499
    .end local v44    # "_arg1":Landroid/sec/enterprise/proxy/IProxyCredentialsCallback;
    :cond_69
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/os/Bundle;
    goto :goto_69

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
