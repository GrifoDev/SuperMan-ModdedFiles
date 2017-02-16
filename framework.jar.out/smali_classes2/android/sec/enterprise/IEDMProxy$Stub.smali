.class public abstract Landroid/sec/enterprise/IEDMProxy$Stub;
.super Landroid/os/Binder;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.enterprise.IEDMProxy"

.field static final TRANSACTION_AuditLogger:I = 0x43

.field static final TRANSACTION_AuditLoggerAsUser:I = 0x44

.field static final TRANSACTION_AuditLoggerPrivileged:I = 0x45

.field static final TRANSACTION_AuditLoggerPrivilegedAsUser:I = 0x46

.field static final TRANSACTION_addCallsCount:I = 0x1

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x20

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x23

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x21

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x24

.field static final TRANSACTION_bluetoothLog:I = 0x3c

.field static final TRANSACTION_canIncomingCall:I = 0x1d

.field static final TRANSACTION_canIncomingSms:I = 0x27

.field static final TRANSACTION_canOutgoingCall:I = 0x1e

.field static final TRANSACTION_canOutgoingSms:I = 0x26

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x25

.field static final TRANSACTION_edmAddOrUpdate:I = 0x2e

.field static final TRANSACTION_getAddHomeShorcutRequested:I = 0x89

.field static final TRANSACTION_getAliasesForPackage:I = 0x85

.field static final TRANSACTION_getAliasesForWiFi:I = 0x87

.field static final TRANSACTION_getAllowBluetoothDataTransfer:I = 0x9

.field static final TRANSACTION_getAllowUserPolicyChanges:I = 0x2a

.field static final TRANSACTION_getAllowUserProfiles:I = 0x2b

.field static final TRANSACTION_getApplicationIconFromDb:I = 0x7

.field static final TRANSACTION_getApplicationNameFromDb:I = 0x61

.field static final TRANSACTION_getApplicationStateEnabled:I = 0x41

.field static final TRANSACTION_getApplicationStateEnabledAsUser:I = 0x42

.field static final TRANSACTION_getAutomaticConnectionToWifi:I = 0x4f

.field static final TRANSACTION_getBlockedNetworks:I = 0x29

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x12

.field static final TRANSACTION_getCertificateAliasesHavingPrivateKey:I = 0x88

.field static final TRANSACTION_getCertificateChain:I = 0x7f

.field static final TRANSACTION_getELMPermissions:I = 0x80

.field static final TRANSACTION_getEmergencyCallOnly:I = 0x1f

.field static final TRANSACTION_getKeyboardMode:I = 0x78

.field static final TRANSACTION_getMinimumRequiredSecurity:I = 0x2d

.field static final TRANSACTION_getNetworkSSIDList:I = 0x28

.field static final TRANSACTION_getProKioskHideNotificationMessages:I = 0x6a

.field static final TRANSACTION_getProKioskNotificationMessagesState:I = 0x69

.field static final TRANSACTION_getProKioskState:I = 0x68

.field static final TRANSACTION_getPromptCredentialsEnabled:I = 0x2c

.field static final TRANSACTION_getSensorDisabled:I = 0x6e

.field static final TRANSACTION_getSlotIdForCaller:I = 0x82

.field static final TRANSACTION_getSlotIdForPackage:I = 0x83

.field static final TRANSACTION_getToastEnabledState:I = 0x6c

.field static final TRANSACTION_getToastGravity:I = 0x75

.field static final TRANSACTION_getToastGravityEnabledState:I = 0x74

.field static final TRANSACTION_getToastGravityXOffset:I = 0x76

.field static final TRANSACTION_getToastGravityYOffset:I = 0x77

.field static final TRANSACTION_getToastShowPackageNameState:I = 0x6d

.field static final TRANSACTION_getVolumeButtonRotationState:I = 0x70

.field static final TRANSACTION_getVolumeControlStream:I = 0x6b

.field static final TRANSACTION_getVolumePanelEnabledState:I = 0x6f

.field static final TRANSACTION_getWifiAutoSwitchDelay:I = 0x73

.field static final TRANSACTION_getWifiAutoSwitchState:I = 0x71

.field static final TRANSACTION_getWifiAutoSwitchThreshold:I = 0x72

.field static final TRANSACTION_getWifiSsidRestrictionList:I = 0x60

.field static final TRANSACTION_getWifiState:I = 0x79

.field static final TRANSACTION_isAccessControlMethodPassword:I = 0x86

.field static final TRANSACTION_isAccountAdditionAllowed:I = 0x5e

.field static final TRANSACTION_isAccountRemovalAllowed:I = 0x5d

.field static final TRANSACTION_isAndroidBeamAllowed:I = 0x5c

.field static final TRANSACTION_isApplicationForceStopDisabled:I = 0x3d

.field static final TRANSACTION_isAudioRecordAllowed:I = 0x4d

.field static final TRANSACTION_isAuditLogEnabledAsUser:I = 0x47

.field static final TRANSACTION_isBTSecureAccessAllowedAsUser:I = 0x7a

.field static final TRANSACTION_isBackgroundProcessLimitAllowed:I = 0x53

.field static final TRANSACTION_isBackupAllowed:I = 0x3f

.field static final TRANSACTION_isBlockMmsWithStorageEnabled:I = 0x57

.field static final TRANSACTION_isBlockSmsWithStorageEnabled:I = 0x56

.field static final TRANSACTION_isBluetoothDeviceAllowed:I = 0xd

.field static final TRANSACTION_isBluetoothEnabled:I = 0x11

.field static final TRANSACTION_isBluetoothLogEnabled:I = 0x3b

.field static final TRANSACTION_isBluetoothUUIDAllowed:I = 0xb

.field static final TRANSACTION_isCCMPolicyEnabledForCaller:I = 0x81

.field static final TRANSACTION_isCCMPolicyEnabledForPackage:I = 0x84

.field static final TRANSACTION_isCaCertificateTrustedAsUser:I = 0x4c

.field static final TRANSACTION_isCallingCaptureEnabled:I = 0x2

.field static final TRANSACTION_isCameraEnabled:I = 0x18

.field static final TRANSACTION_isChangeRequested:I = 0x13

.field static final TRANSACTION_isClipboardAllowed:I = 0x1b

.field static final TRANSACTION_isClipboardShareAllowed:I = 0x55

.field static final TRANSACTION_isCopyContactToSimAllowed:I = 0x62

.field static final TRANSACTION_isDateTimeChangeEnabled:I = 0x30

.field static final TRANSACTION_isDesktopConnectivityEnabled:I = 0x40

.field static final TRANSACTION_isDiscoverableEnabled:I = 0xf

.field static final TRANSACTION_isGoogleCrashReportAllowed:I = 0x32

.field static final TRANSACTION_isHardwareKeyAllowed:I = 0x35

.field static final TRANSACTION_isIncomingMmsAllowed:I = 0x3e

.field static final TRANSACTION_isIncomingSmsAllowed:I = 0x38

.field static final TRANSACTION_isIntentDisabled:I = 0x8

.field static final TRANSACTION_isKillingActivitiesOnLeaveAllowed:I = 0x54

.field static final TRANSACTION_isKnoxBluetoothEnabled:I = 0x7d

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x22

.field static final TRANSACTION_isLimitedDiscoverableEnabled:I = 0x10

.field static final TRANSACTION_isLocationProviderBlocked:I = 0x6

.field static final TRANSACTION_isMMSCaptureEnabled:I = 0x65

.field static final TRANSACTION_isMicrophoneEnabled:I = 0x1c

.field static final TRANSACTION_isNFCEnabled:I = 0x19

.field static final TRANSACTION_isNFCEnabledWithMsg:I = 0x1a

.field static final TRANSACTION_isNFCStateChangeAllowed:I = 0x63

.field static final TRANSACTION_isNonMarketAppAllowed:I = 0x17

.field static final TRANSACTION_isOcspCheckEnabled:I = 0x4b

.field static final TRANSACTION_isOutgoingCallsAllowed:I = 0xa

.field static final TRANSACTION_isOutgoingSmsAllowed:I = 0x39

.field static final TRANSACTION_isPackageAllowedToAccessExternalSdcard:I = 0x7e

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccess:I = 0x7b

.field static final TRANSACTION_isPackageWhitelistedFromBTSecureAccessUid:I = 0x7c

.field static final TRANSACTION_isPairingEnabled:I = 0xe

.field static final TRANSACTION_isPowerOffAllowed:I = 0x37

.field static final TRANSACTION_isProfileEnabled:I = 0xc

.field static final TRANSACTION_isRevocationCheckEnabled:I = 0x4a

.field static final TRANSACTION_isRoamingPushEnabled:I = 0x14

.field static final TRANSACTION_isRoamingSyncEnabled:I = 0x15

.field static final TRANSACTION_isSBeamAllowed:I = 0x5b

.field static final TRANSACTION_isSMSCaptureEnabled:I = 0x4

.field static final TRANSACTION_isSVoiceAllowed:I = 0x59

.field static final TRANSACTION_isScreenCaptureEnabled:I = 0x34

.field static final TRANSACTION_isScreenLockPatternVisibilityEnabled:I = 0x31

.field static final TRANSACTION_isSettingsChangesAllowed:I = 0x16

.field static final TRANSACTION_isSimLockedByAdmin:I = 0x5f

.field static final TRANSACTION_isTaskManagerAllowed:I = 0x36

.field static final TRANSACTION_isTimaKeystoreEnabled:I = 0x8a

.field static final TRANSACTION_isTimaKeystoreEnabledForPackage:I = 0x8b

.field static final TRANSACTION_isUrlBlocked:I = 0x3a

.field static final TRANSACTION_isUserRemoveCertificatesAllowedAsUser:I = 0x64

.field static final TRANSACTION_isVideoRecordAllowed:I = 0x4e

.field static final TRANSACTION_isWapPushAllowed:I = 0x5a

.field static final TRANSACTION_isWifiDirectAllowed:I = 0x52

.field static final TRANSACTION_isWifiStateChangeAllowed:I = 0x33

.field static final TRANSACTION_notifyCertificateFailure:I = 0x48

.field static final TRANSACTION_notifyCertificateFailureAsUser:I = 0x49

.field static final TRANSACTION_notifyCertificateRemovedAsUser:I = 0x50

.field static final TRANSACTION_notifyUserKeystoreUnlocked:I = 0x67

.field static final TRANSACTION_registerSystemUICallback:I = 0x8c

.field static final TRANSACTION_removeNetworkConfiguration:I = 0x2f

.field static final TRANSACTION_storeBlockedSmsMms:I = 0x58

.field static final TRANSACTION_storeCalling:I = 0x3

.field static final TRANSACTION_storeMMS:I = 0x66

.field static final TRANSACTION_storeSMS:I = 0x5

.field static final TRANSACTION_validateCertificateAtInstallAsUser:I = 0x51


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/IEDMProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const-string/jumbo v1, "android.sec.enterprise.IEDMProxy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Landroid/sec/enterprise/IEDMProxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 47
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 1441
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 44
    :sswitch_0
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v6, 0x1

    return v6

    .line 49
    :sswitch_1
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->addCallsCount(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v6, 0x1

    return v6

    .line 58
    .end local v7    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCallingCaptureEnabled()Z

    move-result v45

    .line 60
    .local v45, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v45, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v6, 0x1

    return v6

    .line 61
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 66
    .end local v45    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 70
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 76
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v11, 0x1

    .local v11, "_arg4":Z
    :goto_1
    move-object/from16 v6, p0

    .line 77
    invoke-virtual/range {v6 .. v11}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v6, 0x1

    return v6

    .line 76
    .end local v11    # "_arg4":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 83
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSMSCaptureEnabled()Z

    move-result v45

    .line 85
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v45, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v6, 0x1

    return v6

    .line 86
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 91
    .end local v45    # "_result":Z
    :sswitch_5
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 95
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 97
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 99
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v39, 0x1

    .line 100
    .local v39, "_arg3":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v6, 0x1

    return v6

    .line 99
    .end local v39    # "_arg3":Z
    :cond_3
    const/16 v39, 0x0

    goto :goto_3

    .line 106
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 109
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v45

    .line 110
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v45, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v6, 0x1

    return v6

    .line 111
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 116
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_7
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 120
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 121
    .local v14, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v46

    .line 122
    .local v46, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    const/4 v6, 0x1

    return v6

    .line 128
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v46    # "_result":[B
    :sswitch_8
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 131
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Intent;

    .line 136
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v45

    .line 137
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v45, :cond_6

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v6, 0x1

    return v6

    .line 134
    .end local v45    # "_result":Z
    :cond_5
    const/16 v33, 0x0

    .local v33, "_arg0":Landroid/content/Intent;
    goto :goto_5

    .line 138
    .end local v33    # "_arg0":Landroid/content/Intent;
    .restart local v45    # "_result":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    .line 143
    .end local v45    # "_result":Z
    :sswitch_9
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v28, 0x1

    .line 146
    .local v28, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowBluetoothDataTransfer(Z)Z

    move-result v45

    .line 147
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v45, :cond_8

    const/4 v6, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v6, 0x1

    return v6

    .line 145
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_7
    const/16 v28, 0x0

    goto :goto_7

    .line 148
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_8

    .line 153
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingCallsAllowed()Z

    move-result v45

    .line 155
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v45, :cond_9

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v6, 0x1

    return v6

    .line 156
    :cond_9
    const/4 v6, 0x0

    goto :goto_9

    .line 161
    .end local v45    # "_result":Z
    :sswitch_b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 164
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v45

    .line 165
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v45, :cond_a

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v6, 0x1

    return v6

    .line 166
    :cond_a
    const/4 v6, 0x0

    goto :goto_a

    .line 171
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 174
    .local v20, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isProfileEnabled(I)Z

    move-result v45

    .line 175
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v45, :cond_b

    const/4 v6, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v6, 0x1

    return v6

    .line 176
    :cond_b
    const/4 v6, 0x0

    goto :goto_b

    .line 181
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 184
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z

    move-result v45

    .line 185
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v45, :cond_c

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v6, 0x1

    return v6

    .line 186
    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    .line 191
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPairingEnabled()Z

    move-result v45

    .line 193
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v45, :cond_d

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v6, 0x1

    return v6

    .line 194
    :cond_d
    const/4 v6, 0x0

    goto :goto_d

    .line 199
    .end local v45    # "_result":Z
    :sswitch_f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDiscoverableEnabled()Z

    move-result v45

    .line 201
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v45, :cond_e

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v6, 0x1

    return v6

    .line 202
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    .line 207
    .end local v45    # "_result":Z
    :sswitch_10
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitedDiscoverableEnabled()Z

    move-result v45

    .line 209
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v45, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v6, 0x1

    return v6

    .line 210
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 215
    .end local v45    # "_result":Z
    :sswitch_11
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothEnabled()Z

    move-result v45

    .line 217
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v45, :cond_10

    const/4 v6, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v6, 0x1

    return v6

    .line 218
    :cond_10
    const/4 v6, 0x0

    goto :goto_10

    .line 223
    .end local v45    # "_result":Z
    :sswitch_12
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 226
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBrowserSettingStatus(I)Z

    move-result v45

    .line 227
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v45, :cond_11

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/4 v6, 0x1

    return v6

    .line 228
    :cond_11
    const/4 v6, 0x0

    goto :goto_11

    .line 233
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_13
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isChangeRequested()I

    move-result v40

    .line 235
    .local v40, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v6, 0x1

    return v6

    .line 241
    .end local v40    # "_result":I
    :sswitch_14
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingPushEnabled()Z

    move-result v45

    .line 243
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v45, :cond_12

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v6, 0x1

    return v6

    .line 244
    :cond_12
    const/4 v6, 0x0

    goto :goto_12

    .line 249
    .end local v45    # "_result":Z
    :sswitch_15
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRoamingSyncEnabled()Z

    move-result v45

    .line 251
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v45, :cond_13

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v6, 0x1

    return v6

    .line 252
    :cond_13
    const/4 v6, 0x0

    goto :goto_13

    .line 257
    .end local v45    # "_result":Z
    :sswitch_16
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v28, 0x1

    .line 260
    .restart local v28    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSettingsChangesAllowed(Z)Z

    move-result v45

    .line 261
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v45, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v6, 0x1

    return v6

    .line 259
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_14
    const/16 v28, 0x0

    goto :goto_14

    .line 262
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .line 267
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_17
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNonMarketAppAllowed()Z

    move-result v45

    .line 269
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v45, :cond_16

    const/4 v6, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v6, 0x1

    return v6

    .line 270
    :cond_16
    const/4 v6, 0x0

    goto :goto_16

    .line 275
    .end local v45    # "_result":Z
    :sswitch_18
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v28, 0x1

    .line 278
    .restart local v28    # "_arg0":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCameraEnabled(Z)Z

    move-result v45

    .line 279
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v45, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    const/4 v6, 0x1

    return v6

    .line 277
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_17
    const/16 v28, 0x0

    goto :goto_17

    .line 280
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    .line 285
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_19
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabled()Z

    move-result v45

    .line 287
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v45, :cond_19

    const/4 v6, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v6, 0x1

    return v6

    .line 288
    :cond_19
    const/4 v6, 0x0

    goto :goto_19

    .line 293
    .end local v45    # "_result":Z
    :sswitch_1a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v28, 0x1

    .line 296
    .restart local v28    # "_arg0":Z
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCEnabledWithMsg(Z)Z

    move-result v45

    .line 297
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v45, :cond_1b

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v6, 0x1

    return v6

    .line 295
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_1a
    const/16 v28, 0x0

    goto :goto_1a

    .line 298
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_1b
    const/4 v6, 0x0

    goto :goto_1b

    .line 303
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_1b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v28, 0x1

    .line 306
    .restart local v28    # "_arg0":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardAllowed(Z)Z

    move-result v45

    .line 307
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v45, :cond_1d

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v6, 0x1

    return v6

    .line 305
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_1c
    const/16 v28, 0x0

    goto :goto_1c

    .line 308
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_1d
    const/4 v6, 0x0

    goto :goto_1d

    .line 313
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_1c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v28, 0x1

    .line 316
    .restart local v28    # "_arg0":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMicrophoneEnabled(Z)Z

    move-result v45

    .line 317
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v45, :cond_1f

    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    const/4 v6, 0x1

    return v6

    .line 315
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_1e
    const/16 v28, 0x0

    goto :goto_1e

    .line 318
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_1f
    const/4 v6, 0x0

    goto :goto_1f

    .line 323
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_1d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 326
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v45

    .line 327
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v45, :cond_20

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v6, 0x1

    return v6

    .line 328
    :cond_20
    const/4 v6, 0x0

    goto :goto_20

    .line 333
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_1e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 336
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v45

    .line 337
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v45, :cond_21

    const/4 v6, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v6, 0x1

    return v6

    .line 338
    :cond_21
    const/4 v6, 0x0

    goto :goto_21

    .line 343
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_1f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v28, 0x1

    .line 346
    .restart local v28    # "_arg0":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v45

    .line 347
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    if-eqz v45, :cond_23

    const/4 v6, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    const/4 v6, 0x1

    return v6

    .line 345
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_22
    const/16 v28, 0x0

    goto :goto_22

    .line 348
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_23
    const/4 v6, 0x0

    goto :goto_23

    .line 353
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_20
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingCalls()Z

    move-result v45

    .line 355
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    if-eqz v45, :cond_24

    const/4 v6, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v6, 0x1

    return v6

    .line 356
    :cond_24
    const/4 v6, 0x0

    goto :goto_24

    .line 361
    .end local v45    # "_result":Z
    :sswitch_21
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v45

    .line 363
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v45, :cond_25

    const/4 v6, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v6, 0x1

    return v6

    .line 364
    :cond_25
    const/4 v6, 0x0

    goto :goto_25

    .line 369
    .end local v45    # "_result":Z
    :sswitch_22
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v45

    .line 371
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v45, :cond_26

    const/4 v6, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v6, 0x1

    return v6

    .line 372
    :cond_26
    const/4 v6, 0x0

    goto :goto_26

    .line 377
    .end local v45    # "_result":Z
    :sswitch_23
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfIncomingSms()Z

    move-result v45

    .line 379
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v45, :cond_27

    const/4 v6, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    const/4 v6, 0x1

    return v6

    .line 380
    :cond_27
    const/4 v6, 0x0

    goto :goto_27

    .line 385
    .end local v45    # "_result":Z
    :sswitch_24
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->addNumberOfOutgoingSms()Z

    move-result v45

    .line 387
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    if-eqz v45, :cond_28

    const/4 v6, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    const/4 v6, 0x1

    return v6

    .line 388
    :cond_28
    const/4 v6, 0x0

    goto :goto_28

    .line 393
    .end local v45    # "_result":Z
    :sswitch_25
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v45

    .line 395
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v45, :cond_29

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/4 v6, 0x1

    return v6

    .line 396
    :cond_29
    const/4 v6, 0x0

    goto :goto_29

    .line 401
    .end local v45    # "_result":Z
    :sswitch_26
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 404
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v45

    .line 405
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    if-eqz v45, :cond_2a

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v6, 0x1

    return v6

    .line 406
    :cond_2a
    const/4 v6, 0x0

    goto :goto_2a

    .line 411
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_27
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 414
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v45

    .line 415
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    if-eqz v45, :cond_2b

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    const/4 v6, 0x1

    return v6

    .line 416
    :cond_2b
    const/4 v6, 0x0

    goto :goto_2b

    .line 421
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_28
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v44

    .line 423
    .local v44, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 429
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_29
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getBlockedNetworks()Ljava/util/List;

    move-result-object v44

    .line 431
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 433
    const/4 v6, 0x1

    return v6

    .line 437
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserPolicyChanges()Z

    move-result v45

    .line 439
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    if-eqz v45, :cond_2c

    const/4 v6, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v6, 0x1

    return v6

    .line 440
    :cond_2c
    const/4 v6, 0x0

    goto :goto_2c

    .line 445
    .end local v45    # "_result":Z
    :sswitch_2b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v28, 0x1

    .line 449
    .local v28, "_arg0":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 450
    .restart local v14    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1, v14}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAllowUserProfiles(ZI)Z

    move-result v45

    .line 451
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v45, :cond_2e

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    const/4 v6, 0x1

    return v6

    .line 447
    .end local v14    # "_arg1":I
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_2d
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_2d

    .line 452
    .restart local v14    # "_arg1":I
    .restart local v45    # "_result":Z
    :cond_2e
    const/4 v6, 0x0

    goto :goto_2e

    .line 457
    .end local v14    # "_arg1":I
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_2c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getPromptCredentialsEnabled()Z

    move-result v45

    .line 459
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v45, :cond_2f

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    const/4 v6, 0x1

    return v6

    .line 460
    :cond_2f
    const/4 v6, 0x0

    goto :goto_2f

    .line 465
    .end local v45    # "_result":Z
    :sswitch_2d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getMinimumRequiredSecurity()I

    move-result v40

    .line 467
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v6, 0x1

    return v6

    .line 473
    .end local v40    # "_result":I
    :sswitch_2e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 476
    sget-object v6, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/WifiConfiguration;

    .line 482
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 483
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v6, 0x1

    return v6

    .line 479
    .end local v8    # "_arg1":Ljava/lang/String;
    :cond_30
    const/16 v34, 0x0

    .local v34, "_arg0":Landroid/net/wifi/WifiConfiguration;
    goto :goto_30

    .line 489
    .end local v34    # "_arg0":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 492
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v45

    .line 493
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    if-eqz v45, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    const/4 v6, 0x1

    return v6

    .line 494
    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    .line 499
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_30
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDateTimeChangeEnabled()Z

    move-result v45

    .line 501
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v45, :cond_32

    const/4 v6, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    const/4 v6, 0x1

    return v6

    .line 502
    :cond_32
    const/4 v6, 0x0

    goto :goto_32

    .line 507
    .end local v45    # "_result":Z
    :sswitch_31
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenLockPatternVisibilityEnabled()Z

    move-result v45

    .line 509
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v45, :cond_33

    const/4 v6, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v6, 0x1

    return v6

    .line 510
    :cond_33
    const/4 v6, 0x0

    goto :goto_33

    .line 515
    .end local v45    # "_result":Z
    :sswitch_32
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isGoogleCrashReportAllowed()Z

    move-result v45

    .line 517
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    if-eqz v45, :cond_34

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v6, 0x1

    return v6

    .line 518
    :cond_34
    const/4 v6, 0x0

    goto :goto_34

    .line 523
    .end local v45    # "_result":Z
    :sswitch_33
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiStateChangeAllowed()Z

    move-result v45

    .line 525
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    if-eqz v45, :cond_35

    const/4 v6, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v6, 0x1

    return v6

    .line 526
    :cond_35
    const/4 v6, 0x0

    goto :goto_35

    .line 531
    .end local v45    # "_result":Z
    :sswitch_34
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v28, 0x1

    .line 534
    .local v28, "_arg0":Z
    :goto_36
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isScreenCaptureEnabled(Z)Z

    move-result v45

    .line 535
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    if-eqz v45, :cond_37

    const/4 v6, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    const/4 v6, 0x1

    return v6

    .line 533
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_36
    const/16 v28, 0x0

    goto :goto_36

    .line 536
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_37
    const/4 v6, 0x0

    goto :goto_37

    .line 541
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_35
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 545
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    const/16 v37, 0x1

    .line 546
    .local v37, "_arg1":Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->isHardwareKeyAllowed(IZ)Z

    move-result v45

    .line 547
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v45, :cond_39

    const/4 v6, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v6, 0x1

    return v6

    .line 545
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Z
    :cond_38
    const/16 v37, 0x0

    goto :goto_38

    .line 548
    .restart local v37    # "_arg1":Z
    .restart local v45    # "_result":Z
    :cond_39
    const/4 v6, 0x0

    goto :goto_39

    .line 553
    .end local v20    # "_arg0":I
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Z
    :sswitch_36
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    const/16 v28, 0x1

    .line 556
    .restart local v28    # "_arg0":Z
    :goto_3a
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTaskManagerAllowed(Z)Z

    move-result v45

    .line 557
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    if-eqz v45, :cond_3b

    const/4 v6, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v6, 0x1

    return v6

    .line 555
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_3a
    const/16 v28, 0x0

    goto :goto_3a

    .line 558
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_3b
    const/4 v6, 0x0

    goto :goto_3b

    .line 563
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_37
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v28, 0x1

    .line 566
    .restart local v28    # "_arg0":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPowerOffAllowed(Z)Z

    move-result v45

    .line 567
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    if-eqz v45, :cond_3d

    const/4 v6, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    const/4 v6, 0x1

    return v6

    .line 565
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_3c
    const/16 v28, 0x0

    goto :goto_3c

    .line 568
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_3d
    const/4 v6, 0x0

    goto :goto_3d

    .line 573
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_38
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingSmsAllowed()Z

    move-result v45

    .line 575
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    if-eqz v45, :cond_3e

    const/4 v6, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v6, 0x1

    return v6

    .line 576
    :cond_3e
    const/4 v6, 0x0

    goto :goto_3e

    .line 581
    .end local v45    # "_result":Z
    :sswitch_39
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOutgoingSmsAllowed()Z

    move-result v45

    .line 583
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    if-eqz v45, :cond_3f

    const/4 v6, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v6, 0x1

    return v6

    .line 584
    :cond_3f
    const/4 v6, 0x0

    goto :goto_3f

    .line 589
    .end local v45    # "_result":Z
    :sswitch_3a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 592
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v45

    .line 593
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    if-eqz v45, :cond_40

    const/4 v6, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    const/4 v6, 0x1

    return v6

    .line 594
    :cond_40
    const/4 v6, 0x0

    goto :goto_40

    .line 599
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_3b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBluetoothLogEnabled()Z

    move-result v45

    .line 601
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v45, :cond_41

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v6, 0x1

    return v6

    .line 602
    :cond_41
    const/4 v6, 0x0

    goto :goto_41

    .line 607
    .end local v45    # "_result":Z
    :sswitch_3c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 611
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 612
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    const/4 v6, 0x1

    return v6

    .line 618
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 622
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 624
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 626
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 628
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 630
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    const/16 v18, 0x1

    .local v18, "_arg5":Z
    :goto_42
    move-object/from16 v12, p0

    move-object v13, v7

    move-object v15, v9

    move-object/from16 v16, v10

    .line 631
    invoke-virtual/range {v12 .. v18}, Landroid/sec/enterprise/IEDMProxy$Stub;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45

    .line 632
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    if-eqz v45, :cond_43

    const/4 v6, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v6, 0x1

    return v6

    .line 630
    .end local v18    # "_arg5":Z
    .end local v45    # "_result":Z
    :cond_42
    const/16 v18, 0x0

    goto :goto_42

    .line 633
    .restart local v18    # "_arg5":Z
    .restart local v45    # "_result":Z
    :cond_43
    const/4 v6, 0x0

    goto :goto_43

    .line 638
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Z
    .end local v45    # "_result":Z
    :sswitch_3e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isIncomingMmsAllowed()Z

    move-result v45

    .line 640
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v45, :cond_44

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    const/4 v6, 0x1

    return v6

    .line 641
    :cond_44
    const/4 v6, 0x0

    goto :goto_44

    .line 646
    .end local v45    # "_result":Z
    :sswitch_3f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    const/16 v28, 0x1

    .line 649
    .restart local v28    # "_arg0":Z
    :goto_45
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackupAllowed(Z)Z

    move-result v45

    .line 650
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    if-eqz v45, :cond_46

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    const/4 v6, 0x1

    return v6

    .line 648
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_45
    const/16 v28, 0x0

    goto :goto_45

    .line 651
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_46
    const/4 v6, 0x0

    goto :goto_46

    .line 656
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_40
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isDesktopConnectivityEnabled()Z

    move-result v45

    .line 658
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v45, :cond_47

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    const/4 v6, 0x1

    return v6

    .line 659
    :cond_47
    const/4 v6, 0x0

    goto :goto_47

    .line 664
    .end local v45    # "_result":Z
    :sswitch_41
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 668
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v37, 0x1

    .line 669
    .restart local v37    # "_arg1":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v7, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v45

    .line 670
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v45, :cond_49

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v6, 0x1

    return v6

    .line 668
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Z
    :cond_48
    const/16 v37, 0x0

    goto :goto_48

    .line 671
    .restart local v37    # "_arg1":Z
    .restart local v45    # "_result":Z
    :cond_49
    const/4 v6, 0x0

    goto :goto_49

    .line 676
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Z
    :sswitch_42
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 680
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v37, 0x1

    .line 682
    .local v37, "_arg1":Z
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 683
    .local v38, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v7, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v45

    .line 684
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v45, :cond_4b

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    const/4 v6, 0x1

    return v6

    .line 680
    .end local v37    # "_arg1":Z
    .end local v38    # "_arg2":I
    .end local v45    # "_result":Z
    :cond_4a
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Z
    goto :goto_4a

    .line 685
    .restart local v38    # "_arg2":I
    .restart local v45    # "_result":Z
    :cond_4b
    const/4 v6, 0x0

    goto :goto_4b

    .line 690
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v37    # "_arg1":Z
    .end local v38    # "_arg2":I
    .end local v45    # "_result":Z
    :sswitch_43
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 694
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 696
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v22, 0x1

    .line 698
    .local v22, "_arg2":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 700
    .local v23, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 702
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .local v25, "_arg5":Ljava/lang/String;
    move-object/from16 v19, p0

    move/from16 v21, v14

    move-object/from16 v24, v17

    .line 703
    invoke-virtual/range {v19 .. v25}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    const/4 v6, 0x1

    return v6

    .line 696
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    .end local v25    # "_arg5":Ljava/lang/String;
    :cond_4c
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_4c

    .line 709
    .end local v14    # "_arg1":I
    .end local v20    # "_arg0":I
    .end local v22    # "_arg2":Z
    :sswitch_44
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 713
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 715
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v22, 0x1

    .line 717
    .restart local v22    # "_arg2":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 719
    .restart local v23    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 721
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 723
    .restart local v25    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "_arg6":I
    move-object/from16 v19, p0

    move/from16 v21, v14

    move-object/from16 v24, v17

    .line 724
    invoke-virtual/range {v19 .. v26}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    const/4 v6, 0x1

    return v6

    .line 715
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    .end local v25    # "_arg5":Ljava/lang/String;
    .end local v26    # "_arg6":I
    :cond_4d
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_4d

    .line 730
    .end local v14    # "_arg1":I
    .end local v20    # "_arg0":I
    .end local v22    # "_arg2":Z
    :sswitch_45
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 734
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 736
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v22, 0x1

    .line 738
    .restart local v22    # "_arg2":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 740
    .restart local v23    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 742
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "_arg5":Ljava/lang/String;
    move-object/from16 v19, p0

    move/from16 v21, v14

    move-object/from16 v24, v17

    .line 743
    invoke-virtual/range {v19 .. v25}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    const/4 v6, 0x1

    return v6

    .line 736
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    .end local v25    # "_arg5":Ljava/lang/String;
    :cond_4e
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_4e

    .line 749
    .end local v14    # "_arg1":I
    .end local v20    # "_arg0":I
    .end local v22    # "_arg2":Z
    :sswitch_46
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 753
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 755
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v22, 0x1

    .line 757
    .restart local v22    # "_arg2":Z
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 759
    .restart local v23    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 761
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 763
    .restart local v25    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .restart local v26    # "_arg6":I
    move-object/from16 v19, p0

    move/from16 v21, v14

    move-object/from16 v24, v17

    .line 764
    invoke-virtual/range {v19 .. v26}, Landroid/sec/enterprise/IEDMProxy$Stub;->AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    const/4 v6, 0x1

    return v6

    .line 755
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    .end local v25    # "_arg5":Ljava/lang/String;
    .end local v26    # "_arg6":I
    :cond_4f
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_4f

    .line 770
    .end local v14    # "_arg1":I
    .end local v20    # "_arg0":I
    .end local v22    # "_arg2":Z
    :sswitch_47
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 773
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAuditLogEnabledAsUser(I)Z

    move-result v45

    .line 774
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    if-eqz v45, :cond_50

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    const/4 v6, 0x1

    return v6

    .line 775
    :cond_50
    const/4 v6, 0x0

    goto :goto_50

    .line 780
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_48
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 784
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 786
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v22, 0x1

    .line 787
    .local v22, "_arg2":Z
    :goto_51
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v7, v8, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    const/4 v6, 0x1

    return v6

    .line 786
    .end local v22    # "_arg2":Z
    :cond_51
    const/16 v22, 0x0

    goto :goto_51

    .line 793
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    :sswitch_49
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 797
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 799
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/16 v22, 0x1

    .line 801
    .local v22, "_arg2":Z
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 802
    .restart local v23    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v6, 0x1

    return v6

    .line 799
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    :cond_52
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_52

    .line 808
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    :sswitch_4a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isRevocationCheckEnabled()Z

    move-result v45

    .line 810
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v45, :cond_53

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v6, 0x1

    return v6

    .line 811
    :cond_53
    const/4 v6, 0x0

    goto :goto_53

    .line 816
    .end local v45    # "_result":Z
    :sswitch_4b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isOcspCheckEnabled()Z

    move-result v45

    .line 818
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v45, :cond_54

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v6, 0x1

    return v6

    .line 819
    :cond_54
    const/4 v6, 0x0

    goto :goto_54

    .line 824
    .end local v45    # "_result":Z
    :sswitch_4c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .line 828
    .local v36, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_55

    const/16 v37, 0x1

    .line 830
    .restart local v37    # "_arg1":Z
    :goto_55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/16 v22, 0x1

    .line 832
    .restart local v22    # "_arg2":Z
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 833
    .restart local v23    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCaCertificateTrustedAsUser([BZZI)Z

    move-result v45

    .line 834
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    if-eqz v45, :cond_57

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v6, 0x1

    return v6

    .line 828
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Z
    :cond_55
    const/16 v37, 0x0

    .restart local v37    # "_arg1":Z
    goto :goto_55

    .line 830
    :cond_56
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Z
    goto :goto_56

    .line 835
    .restart local v23    # "_arg3":I
    .restart local v45    # "_result":Z
    :cond_57
    const/4 v6, 0x0

    goto :goto_57

    .line 840
    .end local v22    # "_arg2":Z
    .end local v23    # "_arg3":I
    .end local v36    # "_arg0":[B
    .end local v37    # "_arg1":Z
    .end local v45    # "_result":Z
    :sswitch_4d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v28, 0x1

    .line 843
    .restart local v28    # "_arg0":Z
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAudioRecordAllowed(Z)Z

    move-result v45

    .line 844
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v45, :cond_59

    const/4 v6, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v6, 0x1

    return v6

    .line 842
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_58
    const/16 v28, 0x0

    goto :goto_58

    .line 845
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_59
    const/4 v6, 0x0

    goto :goto_59

    .line 850
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_4e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    const/16 v28, 0x1

    .line 853
    .restart local v28    # "_arg0":Z
    :goto_5a
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isVideoRecordAllowed(Z)Z

    move-result v45

    .line 854
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v45, :cond_5b

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v6, 0x1

    return v6

    .line 852
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_5a
    const/16 v28, 0x0

    goto :goto_5a

    .line 855
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_5b
    const/4 v6, 0x0

    goto :goto_5b

    .line 860
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_4f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAutomaticConnectionToWifi()Z

    move-result v45

    .line 862
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 863
    if-eqz v45, :cond_5c

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    const/4 v6, 0x1

    return v6

    .line 863
    :cond_5c
    const/4 v6, 0x0

    goto :goto_5c

    .line 868
    .end local v45    # "_result":Z
    :sswitch_50
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 872
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 873
    .restart local v14    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    .line 874
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 875
    const/4 v6, 0x1

    return v6

    .line 879
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    :sswitch_51
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .line 883
    .restart local v36    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 884
    .restart local v14    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14}, Landroid/sec/enterprise/IEDMProxy$Stub;->validateCertificateAtInstallAsUser([BI)I

    move-result v40

    .line 885
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    const/4 v6, 0x1

    return v6

    .line 891
    .end local v14    # "_arg1":I
    .end local v36    # "_arg0":[B
    .end local v40    # "_result":I
    :sswitch_52
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    const/16 v28, 0x1

    .line 894
    .restart local v28    # "_arg0":Z
    :goto_5d
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWifiDirectAllowed(Z)Z

    move-result v45

    .line 895
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 896
    if-eqz v45, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 897
    const/4 v6, 0x1

    return v6

    .line 893
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_5d
    const/16 v28, 0x0

    goto :goto_5d

    .line 896
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    .line 901
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_53
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBackgroundProcessLimitAllowed()Z

    move-result v45

    .line 903
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    if-eqz v45, :cond_5f

    const/4 v6, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v6, 0x1

    return v6

    .line 904
    :cond_5f
    const/4 v6, 0x0

    goto :goto_5f

    .line 909
    .end local v45    # "_result":Z
    :sswitch_54
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKillingActivitiesOnLeaveAllowed()Z

    move-result v45

    .line 911
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    if-eqz v45, :cond_60

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    const/4 v6, 0x1

    return v6

    .line 912
    :cond_60
    const/4 v6, 0x0

    goto :goto_60

    .line 917
    .end local v45    # "_result":Z
    :sswitch_55
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isClipboardShareAllowed()Z

    move-result v45

    .line 919
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v45, :cond_61

    const/4 v6, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v6, 0x1

    return v6

    .line 920
    :cond_61
    const/4 v6, 0x0

    goto :goto_61

    .line 925
    .end local v45    # "_result":Z
    :sswitch_56
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockSmsWithStorageEnabled()Z

    move-result v45

    .line 927
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    if-eqz v45, :cond_62

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    const/4 v6, 0x1

    return v6

    .line 928
    :cond_62
    const/4 v6, 0x0

    goto :goto_62

    .line 933
    .end local v45    # "_result":Z
    :sswitch_57
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBlockMmsWithStorageEnabled()Z

    move-result v45

    .line 935
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v45, :cond_63

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    const/4 v6, 0x1

    return v6

    .line 936
    :cond_63
    const/4 v6, 0x0

    goto :goto_63

    .line 941
    .end local v45    # "_result":Z
    :sswitch_58
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    const/16 v28, 0x1

    .line 945
    .local v28, "_arg0":Z
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v29

    .line 947
    .local v29, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 949
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 951
    .restart local v23    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "_arg4":Ljava/lang/String;
    move-object/from16 v27, p0

    move-object/from16 v30, v9

    move/from16 v31, v23

    move-object/from16 v32, v17

    .line 952
    invoke-virtual/range {v27 .. v32}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v6, 0x1

    return v6

    .line 943
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v23    # "_arg3":I
    .end local v28    # "_arg0":Z
    .end local v29    # "_arg1":[B
    :cond_64
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Z
    goto :goto_64

    .line 958
    .end local v28    # "_arg0":Z
    :sswitch_59
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    const/16 v28, 0x1

    .line 961
    .local v28, "_arg0":Z
    :goto_65
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSVoiceAllowed(Z)Z

    move-result v45

    .line 962
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    if-eqz v45, :cond_66

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 964
    const/4 v6, 0x1

    return v6

    .line 960
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_65
    const/16 v28, 0x0

    goto :goto_65

    .line 963
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_66
    const/4 v6, 0x0

    goto :goto_66

    .line 968
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_5a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isWapPushAllowed()Z

    move-result v45

    .line 970
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    if-eqz v45, :cond_67

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v6, 0x1

    return v6

    .line 971
    :cond_67
    const/4 v6, 0x0

    goto :goto_67

    .line 976
    .end local v45    # "_result":Z
    :sswitch_5b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    const/16 v28, 0x1

    .line 979
    .restart local v28    # "_arg0":Z
    :goto_68
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSBeamAllowed(Z)Z

    move-result v45

    .line 980
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v45, :cond_69

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v6, 0x1

    return v6

    .line 978
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_68
    const/16 v28, 0x0

    goto :goto_68

    .line 981
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_69
    const/4 v6, 0x0

    goto :goto_69

    .line 986
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_5c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v28, 0x1

    .line 989
    .restart local v28    # "_arg0":Z
    :goto_6a
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAndroidBeamAllowed(Z)Z

    move-result v45

    .line 990
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    if-eqz v45, :cond_6b

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 992
    const/4 v6, 0x1

    return v6

    .line 988
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :cond_6a
    const/16 v28, 0x0

    goto :goto_6a

    .line 991
    .restart local v28    # "_arg0":Z
    .restart local v45    # "_result":Z
    :cond_6b
    const/4 v6, 0x0

    goto :goto_6b

    .line 996
    .end local v28    # "_arg0":Z
    .end local v45    # "_result":Z
    :sswitch_5d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1000
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1002
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/16 v22, 0x1

    .line 1003
    .local v22, "_arg2":Z
    :goto_6c
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v7, v8, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45

    .line 1004
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    if-eqz v45, :cond_6d

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v6, 0x1

    return v6

    .line 1002
    .end local v22    # "_arg2":Z
    .end local v45    # "_result":Z
    :cond_6c
    const/16 v22, 0x0

    goto :goto_6c

    .line 1005
    .restart local v22    # "_arg2":Z
    .restart local v45    # "_result":Z
    :cond_6d
    const/4 v6, 0x0

    goto :goto_6d

    .line 1010
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    .end local v45    # "_result":Z
    :sswitch_5e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1014
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1016
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    const/16 v22, 0x1

    .line 1017
    .restart local v22    # "_arg2":Z
    :goto_6e
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v7, v8, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v45

    .line 1018
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v45, :cond_6f

    const/4 v6, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v6, 0x1

    return v6

    .line 1016
    .end local v22    # "_arg2":Z
    .end local v45    # "_result":Z
    :cond_6e
    const/16 v22, 0x0

    goto :goto_6e

    .line 1019
    .restart local v22    # "_arg2":Z
    .restart local v45    # "_result":Z
    :cond_6f
    const/4 v6, 0x0

    goto :goto_6f

    .line 1024
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Z
    .end local v45    # "_result":Z
    :sswitch_5f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1027
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v45

    .line 1028
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    if-eqz v45, :cond_70

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v6, 0x1

    return v6

    .line 1029
    :cond_70
    const/4 v6, 0x0

    goto :goto_70

    .line 1034
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_60
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1037
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v44

    .line 1038
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1040
    const/4 v6, 0x1

    return v6

    .line 1044
    .end local v20    # "_arg0":I
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_61
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1048
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1049
    .restart local v14    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/sec/enterprise/IEDMProxy$Stub;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v41

    .line 1050
    .local v41, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    move-object/from16 v0, p3

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1052
    const/4 v6, 0x1

    return v6

    .line 1056
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v41    # "_result":Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1059
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCopyContactToSimAllowed(I)Z

    move-result v45

    .line 1060
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v45, :cond_71

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v6, 0x1

    return v6

    .line 1061
    :cond_71
    const/4 v6, 0x0

    goto :goto_71

    .line 1066
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_63
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isNFCStateChangeAllowed()Z

    move-result v45

    .line 1068
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    if-eqz v45, :cond_72

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    const/4 v6, 0x1

    return v6

    .line 1069
    :cond_72
    const/4 v6, 0x0

    goto :goto_72

    .line 1074
    .end local v45    # "_result":Z
    :sswitch_64
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1077
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v45

    .line 1078
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    if-eqz v45, :cond_73

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    const/4 v6, 0x1

    return v6

    .line 1079
    :cond_73
    const/4 v6, 0x0

    goto :goto_73

    .line 1084
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_65
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isMMSCaptureEnabled()Z

    move-result v45

    .line 1086
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    if-eqz v45, :cond_74

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/4 v6, 0x1

    return v6

    .line 1087
    :cond_74
    const/4 v6, 0x0

    goto :goto_74

    .line 1092
    .end local v45    # "_result":Z
    :sswitch_66
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1096
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1098
    .restart local v8    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1100
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    const/16 v39, 0x1

    .line 1101
    .restart local v39    # "_arg3":Z
    :goto_75
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    const/4 v6, 0x1

    return v6

    .line 1100
    .end local v39    # "_arg3":Z
    :cond_75
    const/16 v39, 0x0

    goto :goto_75

    .line 1107
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    :sswitch_67
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1110
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->notifyUserKeystoreUnlocked(I)V

    .line 1111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    const/4 v6, 0x1

    return v6

    .line 1116
    .end local v20    # "_arg0":I
    :sswitch_68
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskState()Z

    move-result v45

    .line 1118
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    if-eqz v45, :cond_76

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    const/4 v6, 0x1

    return v6

    .line 1119
    :cond_76
    const/4 v6, 0x0

    goto :goto_76

    .line 1124
    .end local v45    # "_result":Z
    :sswitch_69
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskNotificationMessagesState()Z

    move-result v45

    .line 1126
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1127
    if-eqz v45, :cond_77

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1128
    const/4 v6, 0x1

    return v6

    .line 1127
    :cond_77
    const/4 v6, 0x0

    goto :goto_77

    .line 1132
    .end local v45    # "_result":Z
    :sswitch_6a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getProKioskHideNotificationMessages()I

    move-result v40

    .line 1134
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    const/4 v6, 0x1

    return v6

    .line 1140
    .end local v40    # "_result":I
    :sswitch_6b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumeControlStream()I

    move-result v40

    .line 1142
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    const/4 v6, 0x1

    return v6

    .line 1148
    .end local v40    # "_result":I
    :sswitch_6c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastEnabledState()Z

    move-result v45

    .line 1150
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    if-eqz v45, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    const/4 v6, 0x1

    return v6

    .line 1151
    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    .line 1156
    .end local v45    # "_result":Z
    :sswitch_6d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastShowPackageNameState()Z

    move-result v45

    .line 1158
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    if-eqz v45, :cond_79

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v6, 0x1

    return v6

    .line 1159
    :cond_79
    const/4 v6, 0x0

    goto :goto_79

    .line 1164
    .end local v45    # "_result":Z
    :sswitch_6e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSensorDisabled()I

    move-result v40

    .line 1166
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1168
    const/4 v6, 0x1

    return v6

    .line 1172
    .end local v40    # "_result":I
    :sswitch_6f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumePanelEnabledState()Z

    move-result v45

    .line 1174
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    if-eqz v45, :cond_7a

    const/4 v6, 0x1

    :goto_7a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    const/4 v6, 0x1

    return v6

    .line 1175
    :cond_7a
    const/4 v6, 0x0

    goto :goto_7a

    .line 1180
    .end local v45    # "_result":Z
    :sswitch_70
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getVolumeButtonRotationState()Z

    move-result v45

    .line 1182
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    if-eqz v45, :cond_7b

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    const/4 v6, 0x1

    return v6

    .line 1183
    :cond_7b
    const/4 v6, 0x0

    goto :goto_7b

    .line 1188
    .end local v45    # "_result":Z
    :sswitch_71
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiAutoSwitchState()Z

    move-result v45

    .line 1190
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1191
    if-eqz v45, :cond_7c

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    const/4 v6, 0x1

    return v6

    .line 1191
    :cond_7c
    const/4 v6, 0x0

    goto :goto_7c

    .line 1196
    .end local v45    # "_result":Z
    :sswitch_72
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiAutoSwitchThreshold()I

    move-result v40

    .line 1198
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    const/4 v6, 0x1

    return v6

    .line 1204
    .end local v40    # "_result":I
    :sswitch_73
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiAutoSwitchDelay()I

    move-result v40

    .line 1206
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    const/4 v6, 0x1

    return v6

    .line 1212
    .end local v40    # "_result":I
    :sswitch_74
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityEnabledState()Z

    move-result v45

    .line 1214
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    if-eqz v45, :cond_7d

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    const/4 v6, 0x1

    return v6

    .line 1215
    :cond_7d
    const/4 v6, 0x0

    goto :goto_7d

    .line 1220
    .end local v45    # "_result":Z
    :sswitch_75
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravity()I

    move-result v40

    .line 1222
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    const/4 v6, 0x1

    return v6

    .line 1228
    .end local v40    # "_result":I
    :sswitch_76
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityXOffset()I

    move-result v40

    .line 1230
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    const/4 v6, 0x1

    return v6

    .line 1236
    .end local v40    # "_result":I
    :sswitch_77
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getToastGravityYOffset()I

    move-result v40

    .line 1238
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v6, 0x1

    return v6

    .line 1244
    .end local v40    # "_result":I
    :sswitch_78
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getKeyboardMode()I

    move-result v40

    .line 1246
    .restart local v40    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    const/4 v6, 0x1

    return v6

    .line 1252
    .end local v40    # "_result":I
    :sswitch_79
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1253
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getWifiState()Z

    move-result v45

    .line 1254
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    if-eqz v45, :cond_7e

    const/4 v6, 0x1

    :goto_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/4 v6, 0x1

    return v6

    .line 1255
    :cond_7e
    const/4 v6, 0x0

    goto :goto_7e

    .line 1260
    .end local v45    # "_result":Z
    :sswitch_7a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1263
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isBTSecureAccessAllowedAsUser(I)Z

    move-result v45

    .line 1264
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    if-eqz v45, :cond_7f

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v6, 0x1

    return v6

    .line 1265
    :cond_7f
    const/4 v6, 0x0

    goto :goto_7f

    .line 1270
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_7b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1273
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z

    move-result v45

    .line 1274
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1275
    if-eqz v45, :cond_80

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    const/4 v6, 0x1

    return v6

    .line 1275
    :cond_80
    const/4 v6, 0x0

    goto :goto_80

    .line 1280
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_7c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1283
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageWhitelistedFromBTSecureAccessUid(I)Z

    move-result v45

    .line 1284
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    if-eqz v45, :cond_81

    const/4 v6, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    const/4 v6, 0x1

    return v6

    .line 1285
    :cond_81
    const/4 v6, 0x0

    goto :goto_81

    .line 1290
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_7d
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1293
    .restart local v20    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->isKnoxBluetoothEnabled(I)Z

    move-result v45

    .line 1294
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    if-eqz v45, :cond_82

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    const/4 v6, 0x1

    return v6

    .line 1295
    :cond_82
    const/4 v6, 0x0

    goto :goto_82

    .line 1300
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_7e
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1304
    .restart local v20    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1305
    .restart local v14    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/sec/enterprise/IEDMProxy$Stub;->isPackageAllowedToAccessExternalSdcard(II)Z

    move-result v45

    .line 1306
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    if-eqz v45, :cond_83

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v6, 0x1

    return v6

    .line 1307
    :cond_83
    const/4 v6, 0x0

    goto :goto_83

    .line 1312
    .end local v14    # "_arg1":I
    .end local v20    # "_arg0":I
    .end local v45    # "_result":Z
    :sswitch_7f
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1315
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->getCertificateChain(Ljava/lang/String;)[B

    move-result-object v46

    .line 1316
    .restart local v46    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    move-object/from16 v0, p3

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1318
    const/4 v6, 0x1

    return v6

    .line 1322
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v46    # "_result":[B
    :sswitch_80
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1325
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v44

    .line 1326
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1328
    const/4 v6, 0x1

    return v6

    .line 1332
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_81
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1333
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCCMPolicyEnabledForCaller()Z

    move-result v45

    .line 1334
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    if-eqz v45, :cond_84

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    const/4 v6, 0x1

    return v6

    .line 1335
    :cond_84
    const/4 v6, 0x0

    goto :goto_84

    .line 1340
    .end local v45    # "_result":Z
    :sswitch_82
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1343
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSlotIdForCaller(Ljava/lang/String;)J

    move-result-wide v42

    .line 1344
    .local v42, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    move-object/from16 v0, p3

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1346
    const/4 v6, 0x1

    return v6

    .line 1350
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":J
    :sswitch_83
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1354
    .restart local v7    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1355
    .restart local v8    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/sec/enterprise/IEDMProxy$Stub;->getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v42

    .line 1356
    .restart local v42    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v0, p3

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1358
    const/4 v6, 0x1

    return v6

    .line 1362
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v42    # "_result":J
    :sswitch_84
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1365
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z

    move-result v45

    .line 1366
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    if-eqz v45, :cond_85

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    const/4 v6, 0x1

    return v6

    .line 1367
    :cond_85
    const/4 v6, 0x0

    goto :goto_85

    .line 1372
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_85
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1375
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v44

    .line 1376
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1378
    const/4 v6, 0x1

    return v6

    .line 1382
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_86
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isAccessControlMethodPassword()Z

    move-result v45

    .line 1384
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    if-eqz v45, :cond_86

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    const/4 v6, 0x1

    return v6

    .line 1385
    :cond_86
    const/4 v6, 0x0

    goto :goto_86

    .line 1390
    .end local v45    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v44

    .line 1392
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1394
    const/4 v6, 0x1

    return v6

    .line 1398
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_88
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getCertificateAliasesHavingPrivateKey()Ljava/util/List;

    move-result-object v44

    .line 1400
    .restart local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    move-object/from16 v0, p3

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1402
    const/4 v6, 0x1

    return v6

    .line 1406
    .end local v44    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_89
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->getAddHomeShorcutRequested()Z

    move-result v45

    .line 1408
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    if-eqz v45, :cond_87

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    const/4 v6, 0x1

    return v6

    .line 1409
    :cond_87
    const/4 v6, 0x0

    goto :goto_87

    .line 1414
    .end local v45    # "_result":Z
    :sswitch_8a
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p0 .. p0}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTimaKeystoreEnabled()Z

    move-result v45

    .line 1416
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    if-eqz v45, :cond_88

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v6, 0x1

    return v6

    .line 1417
    :cond_88
    const/4 v6, 0x0

    goto :goto_88

    .line 1422
    .end local v45    # "_result":Z
    :sswitch_8b
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1425
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/sec/enterprise/IEDMProxy$Stub;->isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z

    move-result v45

    .line 1426
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    if-eqz v45, :cond_89

    const/4 v6, 0x1

    :goto_89
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1428
    const/4 v6, 0x1

    return v6

    .line 1427
    :cond_89
    const/4 v6, 0x0

    goto :goto_89

    .line 1432
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Z
    :sswitch_8c
    const-string/jumbo v6, "android.sec.enterprise.IEDMProxy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;

    move-result-object v35

    .line 1435
    .local v35, "_arg0":Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/IEDMProxy$Stub;->registerSystemUICallback(Landroid/sec/enterprise/adapterlayer/ISystemUIAdapterCallback;)Z

    move-result v45

    .line 1436
    .restart local v45    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    if-eqz v45, :cond_8a

    const/4 v6, 0x1

    :goto_8a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1438
    const/4 v6, 0x1

    return v6

    .line 1437
    :cond_8a
    const/4 v6, 0x0

    goto :goto_8a

    .line 40
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
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
