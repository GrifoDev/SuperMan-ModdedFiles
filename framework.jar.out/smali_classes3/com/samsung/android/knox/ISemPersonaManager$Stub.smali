.class public abstract Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.super Landroid/os/Binder;
.source "ISemPersonaManager.java"

# interfaces
.implements Lcom/samsung/android/knox/ISemPersonaManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ISemPersonaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ISemPersonaManager"

.field static final TRANSACTION_addAppForPersona:I = 0x32

.field static final TRANSACTION_addLockOnImage:I = 0x1f

.field static final TRANSACTION_addPackageToInstallWhiteList:I = 0x38

.field static final TRANSACTION_addPackageToNonSecureAppList:I = 0x88

.field static final TRANSACTION_adminLockPersona:I = 0x2e

.field static final TRANSACTION_adminUnLockPersona:I = 0x2f

.field static final TRANSACTION_canAccess:I = 0x6d

.field static final TRANSACTION_clearAppListForPersona:I = 0x35

.field static final TRANSACTION_clearNonSecureAppList:I = 0x8a

.field static final TRANSACTION_convertContainerType:I = 0x52

.field static final TRANSACTION_createPersona:I = 0x8

.field static final TRANSACTION_disablePersonaKeyGuard:I = 0x42

.field static final TRANSACTION_doWhenUnlock:I = 0x4e

.field static final TRANSACTION_enablePersonaKeyGuard:I = 0x43

.field static final TRANSACTION_exists:I = 0x10

.field static final TRANSACTION_fireEvent:I = 0x4

.field static final TRANSACTION_getAdminUidForPersona:I = 0x25

.field static final TRANSACTION_getAppListForPersona:I = 0x34

.field static final TRANSACTION_getAppPackageNamesAllWhiteLists:I = 0x9c

.field static final TRANSACTION_getContainerAppIcon:I = 0x95

.field static final TRANSACTION_getContainerHideUsageStatsApps:I = 0x87

.field static final TRANSACTION_getContainerName:I = 0x92

.field static final TRANSACTION_getContainerOrder:I = 0x99

.field static final TRANSACTION_getCustomBadgedResourceIdIconifRequired:I = 0x84

.field static final TRANSACTION_getDefaultQuickSettings:I = 0x85

.field static final TRANSACTION_getDisabledHomeLaunchers:I = 0x41

.field static final TRANSACTION_getECBadge:I = 0x8f

.field static final TRANSACTION_getECIcon:I = 0x90

.field static final TRANSACTION_getECName:I = 0x8e

.field static final TRANSACTION_getFidoRpContext:I = 0x96

.field static final TRANSACTION_getFingerCount:I = 0x67

.field static final TRANSACTION_getFingerprintHash:I = 0x80

.field static final TRANSACTION_getFingerprintIndex:I = 0x7f

.field static final TRANSACTION_getFocusedUser:I = 0x71

.field static final TRANSACTION_getForegroundUser:I = 0x70

.field static final TRANSACTION_getIsAdminLockedJustBefore:I = 0x63

.field static final TRANSACTION_getIsFingerAsSupplement:I = 0x53

.field static final TRANSACTION_getIsFingerIdentifyFailed:I = 0x65

.field static final TRANSACTION_getIsFingerReset:I = 0x5f

.field static final TRANSACTION_getIsFingerTimeout:I = 0x5b

.field static final TRANSACTION_getIsIrisReset:I = 0x61

.field static final TRANSACTION_getIsIrisTimeout:I = 0x5d

.field static final TRANSACTION_getIsQuickAccessUIEnabled:I = 0x59

.field static final TRANSACTION_getIsUnlockedAfterTurnOn:I = 0x57

.field static final TRANSACTION_getKeyguardShowState:I = 0x4f

.field static final TRANSACTION_getKnoxIconChanged:I = 0x79

.field static final TRANSACTION_getKnoxIconChangedAsUser:I = 0x7b

.field static final TRANSACTION_getKnoxNameChanged:I = 0x78

.field static final TRANSACTION_getKnoxNameChangedAsUser:I = 0x7a

.field static final TRANSACTION_getKnoxSecurityTimeout:I = 0x6e

.field static final TRANSACTION_getLastKeyguardUnlockTime:I = 0x55

.field static final TRANSACTION_getMoveToKnoxStatus:I = 0x18

.field static final TRANSACTION_getMyknoxId:I = 0x94

.field static final TRANSACTION_getNonSecureAppList:I = 0x89

.field static final TRANSACTION_getNormalizedState:I = 0x1c

.field static final TRANSACTION_getPackageInfo:I = 0x86

.field static final TRANSACTION_getPackagesFromInstallWhiteList:I = 0x3b

.field static final TRANSACTION_getParentId:I = 0x16

.field static final TRANSACTION_getParentUserForCurrentPersona:I = 0x13

.field static final TRANSACTION_getPasswordHint:I = 0x45

.field static final TRANSACTION_getPersonaBackgroundTime:I = 0x20

.field static final TRANSACTION_getPersonaIcon:I = 0x15

.field static final TRANSACTION_getPersonaIdentification:I = 0x24

.field static final TRANSACTION_getPersonaIds:I = 0x30

.field static final TRANSACTION_getPersonaInfo:I = 0xf

.field static final TRANSACTION_getPersonaSamsungAccount:I = 0x28

.field static final TRANSACTION_getPersonaType:I = 0x1a

.field static final TRANSACTION_getPersonas:I = 0xe

.field static final TRANSACTION_getPersonasForCreator:I = 0x12

.field static final TRANSACTION_getPersonasForUser:I = 0x11

.field static final TRANSACTION_getPreviousState:I = 0x2

.field static final TRANSACTION_getScreenOffTime:I = 0x3d

.field static final TRANSACTION_getSecureFolderId:I = 0x8d

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_getUserManagedPersonas:I = 0x2a

.field static final TRANSACTION_handleHomeShow:I = 0x2c

.field static final TRANSACTION_handleNotificationWhenUnlock:I = 0x9e

.field static final TRANSACTION_hideScrim:I = 0x51

.field static final TRANSACTION_inState:I = 0x3

.field static final TRANSACTION_installApplications:I = 0x1d

.field static final TRANSACTION_isAttribute:I = 0x6

.field static final TRANSACTION_isBootCompleted:I = 0x9a

.field static final TRANSACTION_isECContainer:I = 0x91

.field static final TRANSACTION_isEnabledFingerprintIndex:I = 0x7e

.field static final TRANSACTION_isExternalStorageEnabled:I = 0x9b

.field static final TRANSACTION_isFOTAUpgrade:I = 0xc

.field static final TRANSACTION_isFingerLockscreenActivated:I = 0x6a

.field static final TRANSACTION_isFingerSupplementActivated:I = 0x69

.field static final TRANSACTION_isFotaUpgradeVersionChanged:I = 0x8b

.field static final TRANSACTION_isKioskContainerExistOnDevice:I = 0x47

.field static final TRANSACTION_isKioskModeEnabled:I = 0x46

.field static final TRANSACTION_isKnoxKeyguardShown:I = 0x50

.field static final TRANSACTION_isKnoxMultiWindowExist:I = 0x98

.field static final TRANSACTION_isNFCAllowed:I = 0x7c

.field static final TRANSACTION_isPackageInInstallWhiteList:I = 0x3a

.field static final TRANSACTION_isPossibleAddAppsToContainer:I = 0x93

.field static final TRANSACTION_isResetPersonaOnRebootEnabled:I = 0x4b

.field static final TRANSACTION_isSessionExpired:I = 0x2d

.field static final TRANSACTION_launchPersonaHome:I = 0xa

.field static final TRANSACTION_lockPersona:I = 0x2b

.field static final TRANSACTION_markForRemoval:I = 0x26

.field static final TRANSACTION_mountOldContainer:I = 0x74

.field static final TRANSACTION_needToSkipResetOnReboot:I = 0xd

.field static final TRANSACTION_notifyKeyguardShow:I = 0x4d

.field static final TRANSACTION_onKeyguardBackPressed:I = 0x73

.field static final TRANSACTION_onWakeLockChange:I = 0x40

.field static final TRANSACTION_refreshTimer:I = 0x3e

.field static final TRANSACTION_registerKnoxModeChangeObserver:I = 0x21

.field static final TRANSACTION_registerSystemPersonaObserver:I = 0x22

.field static final TRANSACTION_registerUser:I = 0x7

.field static final TRANSACTION_removeAppForPersona:I = 0x33

.field static final TRANSACTION_removeKnoxAppsinFota:I = 0x8c

.field static final TRANSACTION_removePackageFromInstallWhiteList:I = 0x39

.field static final TRANSACTION_removePersona:I = 0xb

.field static final TRANSACTION_resetPassword:I = 0x37

.field static final TRANSACTION_resetPersona:I = 0x23

.field static final TRANSACTION_resetPersonaOnReboot:I = 0x49

.field static final TRANSACTION_resetPersonaPassword:I = 0x82

.field static final TRANSACTION_savePasswordInTima:I = 0x36

.field static final TRANSACTION_setAccessPermission:I = 0x6c

.field static final TRANSACTION_setAttribute:I = 0x5

.field static final TRANSACTION_setBackPressed:I = 0x48

.field static final TRANSACTION_setFidoRpContext:I = 0x97

.field static final TRANSACTION_setFingerCount:I = 0x68

.field static final TRANSACTION_setFingerprintHash:I = 0x81

.field static final TRANSACTION_setFingerprintIndex:I = 0x7d

.field static final TRANSACTION_setFocusedUser:I = 0x72

.field static final TRANSACTION_setFsMountState:I = 0x44

.field static final TRANSACTION_setIsAdminLockedJustBefore:I = 0x64

.field static final TRANSACTION_setIsFingerAsSupplement:I = 0x54

.field static final TRANSACTION_setIsFingerIdentifyFailed:I = 0x66

.field static final TRANSACTION_setIsFingerReset:I = 0x60

.field static final TRANSACTION_setIsFingerTimeout:I = 0x5c

.field static final TRANSACTION_setIsIrisReset:I = 0x62

.field static final TRANSACTION_setIsIrisTimeout:I = 0x5e

.field static final TRANSACTION_setIsQuickAccessUIEnabled:I = 0x5a

.field static final TRANSACTION_setIsUnlockedAfterTurnOn:I = 0x58

.field static final TRANSACTION_setKnoxBackupPin:I = 0x77

.field static final TRANSACTION_setKnoxSecurityTimeout:I = 0x6f

.field static final TRANSACTION_setLastKeyguardUnlockTime:I = 0x56

.field static final TRANSACTION_setMaximumScreenOffTimeoutFromDeviceAdmin:I = 0x3c

.field static final TRANSACTION_setMoveToKnoxStatus:I = 0x17

.field static final TRANSACTION_setPersonaIcon:I = 0x14

.field static final TRANSACTION_setPersonaName:I = 0x19

.field static final TRANSACTION_setPersonaSamsungAccount:I = 0x29

.field static final TRANSACTION_setPersonaType:I = 0x1b

.field static final TRANSACTION_setShownHelp:I = 0x6b

.field static final TRANSACTION_settingSyncAllowed:I = 0x31

.field static final TRANSACTION_setupComplete:I = 0x83

.field static final TRANSACTION_showKeyguard:I = 0x4c

.field static final TRANSACTION_startActivityThroughPersona:I = 0x9d

.field static final TRANSACTION_switchPersonaAndLaunch:I = 0x9

.field static final TRANSACTION_unInstallSystemApplications:I = 0x1e

.field static final TRANSACTION_unmarkForRemoval:I = 0x27

.field static final TRANSACTION_unmountOldContainer:I = 0x75

.field static final TRANSACTION_updatePersonaInfo:I = 0x4a

.field static final TRANSACTION_userActivity:I = 0x3f

.field static final TRANSACTION_verifyKnoxBackupPin:I = 0x76


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.samsung.android.knox.ISemPersonaManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.samsung.android.knox.ISemPersonaManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/ISemPersonaManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/samsung/android/knox/ISemPersonaManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 61
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 1827
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 53
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v54

    .line 54
    .local v54, "_result":Lcom/samsung/android/knox/SemPersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v54, :cond_0

    .line 56
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/knox/SemPersonaState;->writeToParcel(Landroid/os/Parcel;I)V

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
    .end local v4    # "_arg0":I
    .end local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :sswitch_2
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPreviousState(I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v54

    .line 70
    .restart local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v54, :cond_1

    .line 72
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/knox/SemPersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 76
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 82
    .end local v4    # "_arg0":I
    .end local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :sswitch_3
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    sget-object v5, Lcom/samsung/android/knox/SemPersonaState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/knox/SemPersonaState;

    .line 91
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 92
    .local v17, "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v58

    .line 93
    .local v58, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v58, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v5, 0x1

    return v5

    .line 88
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :cond_2
    const/16 v35, 0x0

    .local v35, "_arg0":Lcom/samsung/android/knox/SemPersonaState;
    goto :goto_2

    .line 94
    .end local v35    # "_arg0":Lcom/samsung/android/knox/SemPersonaState;
    .restart local v17    # "_arg1":I
    .restart local v58    # "_result":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 99
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :sswitch_4
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    sget-object v5, Landroid/content/pm/PersonaNewEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/PersonaNewEvent;

    .line 108
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 109
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Lcom/samsung/android/knox/SemPersonaState;

    move-result-object v54

    .line 110
    .restart local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v54, :cond_5

    .line 112
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/knox/SemPersonaState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_5
    const/4 v5, 0x1

    return v5

    .line 105
    .end local v17    # "_arg1":I
    .end local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :cond_4
    const/16 v33, 0x0

    .local v33, "_arg0":Landroid/content/pm/PersonaNewEvent;
    goto :goto_4

    .line 116
    .end local v33    # "_arg0":Landroid/content/pm/PersonaNewEvent;
    .restart local v17    # "_arg1":I
    .restart local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 122
    .end local v17    # "_arg1":I
    .end local v54    # "_result":Lcom/samsung/android/knox/SemPersonaState;
    :sswitch_5
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 125
    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/PersonaAttribute;

    .line 131
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v44, 0x1

    .line 133
    .local v44, "_arg1":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 134
    .local v18, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v44

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-result v58

    .line 135
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v58, :cond_8

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v5, 0x1

    return v5

    .line 128
    .end local v18    # "_arg2":I
    .end local v44    # "_arg1":Z
    .end local v58    # "_result":Z
    :cond_6
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_6

    .line 131
    .end local v32    # "_arg0":Landroid/content/pm/PersonaAttribute;
    :cond_7
    const/16 v44, 0x0

    .restart local v44    # "_arg1":Z
    goto :goto_7

    .line 136
    .restart local v18    # "_arg2":I
    .restart local v58    # "_result":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 141
    .end local v18    # "_arg2":I
    .end local v44    # "_arg1":Z
    .end local v58    # "_result":Z
    :sswitch_6
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    sget-object v5, Landroid/content/pm/PersonaAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/PersonaAttribute;

    .line 150
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 151
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v58

    .line 152
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v58, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v5, 0x1

    return v5

    .line 147
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :cond_9
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/pm/PersonaAttribute;
    goto :goto_9

    .line 153
    .end local v32    # "_arg0":Landroid/content/pm/PersonaAttribute;
    .restart local v17    # "_arg1":I
    .restart local v58    # "_result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 158
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :sswitch_7
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPersonaCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaCallback;

    move-result-object v30

    .line 161
    .local v30, "_arg0":Landroid/content/pm/IPersonaCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerUser(Landroid/content/pm/IPersonaCallback;)Z

    move-result v58

    .line 162
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v58, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v5, 0x1

    return v5

    .line 163
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 168
    .end local v30    # "_arg0":Landroid/content/pm/IPersonaCallback;
    .end local v58    # "_result":Z
    :sswitch_8
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 176
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 178
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 180
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 181
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 187
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .local v14, "_arg7":I
    move-object/from16 v5, p0

    .line 190
    invoke-virtual/range {v5 .. v14}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v48

    .line 191
    .local v48, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v5, 0x1

    return v5

    .line 184
    .end local v13    # "_arg6":Ljava/lang/String;
    .end local v14    # "_arg7":I
    .end local v48    # "_result":I
    :cond_c
    const/4 v12, 0x0

    .local v12, "_arg5":Landroid/net/Uri;
    goto :goto_c

    .line 197
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/net/Uri;
    :sswitch_9
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 202
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Intent;

    .line 207
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    move-result v58

    .line 208
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v58, :cond_e

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    const/4 v5, 0x1

    return v5

    .line 205
    .end local v58    # "_result":Z
    :cond_d
    const/16 v40, 0x0

    .local v40, "_arg1":Landroid/content/Intent;
    goto :goto_d

    .line 209
    .end local v40    # "_arg1":Landroid/content/Intent;
    .restart local v58    # "_result":Z
    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .line 214
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 217
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->launchPersonaHome(I)Z

    move-result v58

    .line 218
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v58, :cond_f

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v5, 0x1

    return v5

    .line 219
    :cond_f
    const/4 v5, 0x0

    goto :goto_f

    .line 224
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 227
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->removePersona(I)I

    move-result v48

    .line 228
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

    return v5

    .line 234
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFOTAUpgrade()Z

    move-result v58

    .line 236
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v58, :cond_10

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v5, 0x1

    return v5

    .line 237
    :cond_10
    const/4 v5, 0x0

    goto :goto_10

    .line 242
    .end local v58    # "_result":Z
    :sswitch_d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->needToSkipResetOnReboot()Z

    move-result v58

    .line 244
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v58, :cond_11

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v5, 0x1

    return v5

    .line 245
    :cond_11
    const/4 v5, 0x0

    goto :goto_11

    .line 250
    .end local v58    # "_result":Z
    :sswitch_e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/16 v16, 0x1

    .line 253
    .local v16, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonas(Z)Ljava/util/List;

    move-result-object v56

    .line 254
    .local v56, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 256
    const/4 v5, 0x1

    return v5

    .line 252
    .end local v16    # "_arg0":Z
    .end local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_12
    const/16 v16, 0x0

    goto :goto_12

    .line 260
    :sswitch_f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 263
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v53

    .line 264
    .local v53, "_result":Lcom/samsung/android/knox/SemPersonaInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v53, :cond_13

    .line 266
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v5, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/knox/SemPersonaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_13
    const/4 v5, 0x1

    return v5

    .line 270
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 276
    .end local v4    # "_arg0":I
    .end local v53    # "_result":Lcom/samsung/android/knox/SemPersonaInfo;
    :sswitch_10
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 279
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->exists(I)Z

    move-result v58

    .line 280
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    if-eqz v58, :cond_14

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v5, 0x1

    return v5

    .line 281
    :cond_14
    const/4 v5, 0x0

    goto :goto_14

    .line 286
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_11
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 290
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v44, 0x1

    .line 291
    .local v44, "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonasForUser(IZ)Ljava/util/List;

    move-result-object v56

    .line 292
    .restart local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    const/4 v5, 0x1

    return v5

    .line 290
    .end local v44    # "_arg1":Z
    .end local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_15
    const/16 v44, 0x0

    goto :goto_15

    .line 298
    .end local v4    # "_arg0":I
    :sswitch_12
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 302
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v44, 0x1

    .line 303
    .restart local v44    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonasForCreator(IZ)Ljava/util/List;

    move-result-object v56

    .line 304
    .restart local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 306
    const/4 v5, 0x1

    return v5

    .line 302
    .end local v44    # "_arg1":Z
    .end local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_16
    const/16 v44, 0x0

    goto :goto_16

    .line 310
    .end local v4    # "_arg0":I
    :sswitch_13
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getParentUserForCurrentPersona()I

    move-result v48

    .line 312
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v5, 0x1

    return v5

    .line 318
    .end local v48    # "_result":I
    :sswitch_14
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 322
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 323
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/graphics/Bitmap;

    .line 328
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v5, 0x1

    return v5

    .line 326
    :cond_17
    const/16 v41, 0x0

    .local v41, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_17

    .line 334
    .end local v4    # "_arg0":I
    .end local v41    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_15
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 337
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaIcon(I)Landroid/graphics/Bitmap;

    move-result-object v52

    .line 338
    .local v52, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v52, :cond_18

    .line 340
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    :goto_18
    const/4 v5, 0x1

    return v5

    .line 344
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 350
    .end local v4    # "_arg0":I
    .end local v52    # "_result":Landroid/graphics/Bitmap;
    :sswitch_16
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 353
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getParentId(I)I

    move-result v48

    .line 354
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    const/4 v5, 0x1

    return v5

    .line 360
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_17
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v16, 0x1

    .line 363
    .restart local v16    # "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setMoveToKnoxStatus(Z)V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v5, 0x1

    return v5

    .line 362
    .end local v16    # "_arg0":Z
    :cond_19
    const/16 v16, 0x0

    goto :goto_19

    .line 369
    :sswitch_18
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getMoveToKnoxStatus()Z

    move-result v58

    .line 371
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v58, :cond_1a

    const/4 v5, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    const/4 v5, 0x1

    return v5

    .line 372
    :cond_1a
    const/4 v5, 0x0

    goto :goto_1a

    .line 377
    .end local v58    # "_result":Z
    :sswitch_19
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 381
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 382
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonaName(ILjava/lang/String;)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v5, 0x1

    return v5

    .line 388
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 391
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaType(I)Ljava/lang/String;

    move-result-object v55

    .line 392
    .local v55, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x1

    return v5

    .line 398
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 402
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 403
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonaType(ILjava/lang/String;)V

    .line 404
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    const/4 v5, 0x1

    return v5

    .line 409
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 412
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getNormalizedState(I)I

    move-result v48

    .line 413
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v5, 0x1

    return v5

    .line 419
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_1d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 423
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v43

    .line 424
    .local v43, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->installApplications(ILjava/util/List;)Z

    move-result v58

    .line 425
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v58, :cond_1b

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v5, 0x1

    return v5

    .line 426
    :cond_1b
    const/4 v5, 0x0

    goto :goto_1b

    .line 431
    .end local v4    # "_arg0":I
    .end local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v58    # "_result":Z
    :sswitch_1e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 435
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v43

    .line 436
    .restart local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->unInstallSystemApplications(ILjava/util/List;)I

    move-result v48

    .line 437
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v5, 0x1

    return v5

    .line 443
    .end local v4    # "_arg0":I
    .end local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v48    # "_result":I
    :sswitch_1f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 446
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/graphics/Bitmap;

    .line 451
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v52

    .line 452
    .restart local v52    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v52, :cond_1d

    .line 454
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    :goto_1d
    const/4 v5, 0x1

    return v5

    .line 449
    .end local v52    # "_result":Landroid/graphics/Bitmap;
    :cond_1c
    const/16 v34, 0x0

    .local v34, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_1c

    .line 458
    .end local v34    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v52    # "_result":Landroid/graphics/Bitmap;
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 464
    .end local v52    # "_result":Landroid/graphics/Bitmap;
    :sswitch_20
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 467
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaBackgroundTime(I)J

    move-result-wide v50

    .line 468
    .local v50, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    const/4 v5, 0x1

    return v5

    .line 474
    .end local v4    # "_arg0":I
    .end local v50    # "_result":J
    :sswitch_21
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IKnoxModeChangeObserver;

    move-result-object v29

    .line 477
    .local v29, "_arg0":Landroid/content/pm/IKnoxModeChangeObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z

    move-result v58

    .line 478
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v58, :cond_1e

    const/4 v5, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v5, 0x1

    return v5

    .line 479
    :cond_1e
    const/4 v5, 0x0

    goto :goto_1e

    .line 484
    .end local v29    # "_arg0":Landroid/content/pm/IKnoxModeChangeObserver;
    .end local v58    # "_result":Z
    :sswitch_22
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/ISystemPersonaObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/ISystemPersonaObserver;

    move-result-object v31

    .line 487
    .local v31, "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    move-result v58

    .line 488
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v58, :cond_1f

    const/4 v5, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    const/4 v5, 0x1

    return v5

    .line 489
    :cond_1f
    const/4 v5, 0x0

    goto :goto_1f

    .line 494
    .end local v31    # "_arg0":Landroid/content/pm/ISystemPersonaObserver;
    .end local v58    # "_result":Z
    :sswitch_23
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 497
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->resetPersona(I)I

    move-result v48

    .line 498
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v5, 0x1

    return v5

    .line 504
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_24
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 507
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaIdentification(I)Ljava/lang/String;

    move-result-object v55

    .line 508
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    const/4 v5, 0x1

    return v5

    .line 514
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 517
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAdminUidForPersona(I)I

    move-result v48

    .line 518
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    const/4 v5, 0x1

    return v5

    .line 524
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_26
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 528
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 529
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/ComponentName;

    .line 534
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->markForRemoval(ILandroid/content/ComponentName;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v5, 0x1

    return v5

    .line 532
    :cond_20
    const/16 v39, 0x0

    .local v39, "_arg1":Landroid/content/ComponentName;
    goto :goto_20

    .line 540
    .end local v4    # "_arg0":I
    .end local v39    # "_arg1":Landroid/content/ComponentName;
    :sswitch_27
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 543
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->unmarkForRemoval(I)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    const/4 v5, 0x1

    return v5

    .line 549
    .end local v4    # "_arg0":I
    :sswitch_28
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 552
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaSamsungAccount(I)Ljava/lang/String;

    move-result-object v55

    .line 553
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    const/4 v5, 0x1

    return v5

    .line 559
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 563
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 564
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setPersonaSamsungAccount(ILjava/lang/String;)V

    .line 565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    const/4 v5, 0x1

    return v5

    .line 570
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/16 v16, 0x1

    .line 573
    .restart local v16    # "_arg0":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getUserManagedPersonas(Z)Ljava/util/List;

    move-result-object v56

    .line 574
    .restart local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 576
    const/4 v5, 0x1

    return v5

    .line 572
    .end local v16    # "_arg0":Z
    .end local v56    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/SemPersonaInfo;>;"
    :cond_21
    const/16 v16, 0x0

    goto :goto_21

    .line 580
    :sswitch_2b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 583
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->lockPersona(I)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v5, 0x1

    return v5

    .line 589
    .end local v4    # "_arg0":I
    :sswitch_2c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->handleHomeShow()Z

    move-result v58

    .line 591
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v58, :cond_22

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v5, 0x1

    return v5

    .line 592
    :cond_22
    const/4 v5, 0x0

    goto :goto_22

    .line 597
    .end local v58    # "_result":Z
    :sswitch_2d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 600
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isSessionExpired(I)Z

    move-result v58

    .line 601
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v58, :cond_23

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v5, 0x1

    return v5

    .line 602
    :cond_23
    const/4 v5, 0x0

    goto :goto_23

    .line 607
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_2e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 611
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 612
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->adminLockPersona(ILjava/lang/String;)Z

    move-result v58

    .line 613
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v58, :cond_24

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v5, 0x1

    return v5

    .line 614
    :cond_24
    const/4 v5, 0x0

    goto :goto_24

    .line 619
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_2f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 622
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->adminUnLockPersona(I)Z

    move-result v58

    .line 623
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v58, :cond_25

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    const/4 v5, 0x1

    return v5

    .line 624
    :cond_25
    const/4 v5, 0x0

    goto :goto_25

    .line 629
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_30
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPersonaIds()[I

    move-result-object v60

    .line 631
    .local v60, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 633
    const/4 v5, 0x1

    return v5

    .line 637
    .end local v60    # "_result":[I
    :sswitch_31
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 640
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->settingSyncAllowed(I)Z

    move-result v58

    .line 641
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    if-eqz v58, :cond_26

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/4 v5, 0x1

    return v5

    .line 642
    :cond_26
    const/4 v5, 0x0

    goto :goto_26

    .line 647
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_32
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 651
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 653
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 654
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    const/4 v5, 0x1

    return v5

    .line 660
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    :sswitch_33
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 664
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 666
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 667
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V

    .line 668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    const/4 v5, 0x1

    return v5

    .line 673
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    :sswitch_34
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 677
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 678
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v57

    .line 679
    .local v57, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 681
    const/4 v5, 0x1

    return v5

    .line 685
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_35
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 689
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 690
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->clearAppListForPersona(Ljava/lang/String;I)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v5, 0x1

    return v5

    .line 696
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_36
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 700
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 701
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->savePasswordInTima(ILjava/lang/String;)Z

    move-result v58

    .line 702
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    if-eqz v58, :cond_27

    const/4 v5, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v5, 0x1

    return v5

    .line 703
    :cond_27
    const/4 v5, 0x0

    goto :goto_27

    .line 708
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_37
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 711
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->resetPassword(Ljava/lang/String;)Z

    move-result v58

    .line 712
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v58, :cond_28

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v5, 0x1

    return v5

    .line 713
    :cond_28
    const/4 v5, 0x0

    goto :goto_28

    .line 718
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_38
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 722
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 723
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addPackageToInstallWhiteList(Ljava/lang/String;I)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v5, 0x1

    return v5

    .line 729
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_39
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 733
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 734
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v5, 0x1

    return v5

    .line 740
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_3a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 744
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 745
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z

    move-result v58

    .line 746
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    if-eqz v58, :cond_29

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v5, 0x1

    return v5

    .line 747
    :cond_29
    const/4 v5, 0x0

    goto :goto_29

    .line 752
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :sswitch_3b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 755
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPackagesFromInstallWhiteList(I)Ljava/util/List;

    move-result-object v57

    .line 756
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 758
    const/4 v5, 0x1

    return v5

    .line 762
    .end local v4    # "_arg0":I
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 766
    .local v26, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 767
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v5, 0x1

    return v5

    .line 773
    .end local v17    # "_arg1":I
    .end local v26    # "_arg0":J
    :sswitch_3d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 776
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getScreenOffTime(I)J

    move-result-wide v50

    .line 777
    .restart local v50    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    move-object/from16 v0, p3

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 779
    const/4 v5, 0x1

    return v5

    .line 783
    .end local v4    # "_arg0":I
    .end local v50    # "_result":J
    :sswitch_3e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 786
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->refreshTimer(I)V

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    const/4 v5, 0x1

    return v5

    .line 792
    .end local v4    # "_arg0":I
    :sswitch_3f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 795
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->userActivity(I)V

    .line 796
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 797
    const/4 v5, 0x1

    return v5

    .line 801
    .end local v4    # "_arg0":I
    :sswitch_40
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v16, 0x1

    .line 805
    .local v16, "_arg0":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 807
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 809
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 811
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg4":Ljava/lang/String;
    move-object/from16 v15, p0

    move-object/from16 v20, v11

    .line 812
    invoke-virtual/range {v15 .. v20}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->onWakeLockChange(ZIIILjava/lang/String;)V

    .line 813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 814
    const/4 v5, 0x1

    return v5

    .line 803
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v16    # "_arg0":Z
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    :cond_2a
    const/16 v16, 0x0

    .restart local v16    # "_arg0":Z
    goto :goto_2a

    .line 818
    .end local v16    # "_arg0":Z
    :sswitch_41
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 822
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v44, 0x1

    .line 823
    .restart local v44    # "_arg1":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDisabledHomeLaunchers(IZ)Ljava/util/List;

    move-result-object v57

    .line 824
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 826
    const/4 v5, 0x1

    return v5

    .line 822
    .end local v44    # "_arg1":Z
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2b
    const/16 v44, 0x0

    goto :goto_2b

    .line 830
    .end local v4    # "_arg0":I
    :sswitch_42
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 833
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->disablePersonaKeyGuard(I)Z

    move-result v58

    .line 834
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    if-eqz v58, :cond_2c

    const/4 v5, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v5, 0x1

    return v5

    .line 835
    :cond_2c
    const/4 v5, 0x0

    goto :goto_2c

    .line 840
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_43
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 843
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->enablePersonaKeyGuard(I)Z

    move-result v58

    .line 844
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v58, :cond_2d

    const/4 v5, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    const/4 v5, 0x1

    return v5

    .line 845
    :cond_2d
    const/4 v5, 0x0

    goto :goto_2d

    .line 850
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_44
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 854
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v44, 0x1

    .line 855
    .restart local v44    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFsMountState(IZ)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    const/4 v5, 0x1

    return v5

    .line 854
    .end local v44    # "_arg1":Z
    :cond_2e
    const/16 v44, 0x0

    goto :goto_2e

    .line 861
    .end local v4    # "_arg0":I
    :sswitch_45
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPasswordHint()Ljava/lang/String;

    move-result-object v55

    .line 863
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    const/4 v5, 0x1

    return v5

    .line 869
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_46
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 872
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKioskModeEnabled(I)Z

    move-result v58

    .line 873
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    if-eqz v58, :cond_2f

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v5, 0x1

    return v5

    .line 874
    :cond_2f
    const/4 v5, 0x0

    goto :goto_2f

    .line 879
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_47
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKioskContainerExistOnDevice()Z

    move-result v58

    .line 881
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    if-eqz v58, :cond_30

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v5, 0x1

    return v5

    .line 882
    :cond_30
    const/4 v5, 0x0

    goto :goto_30

    .line 887
    .end local v58    # "_result":Z
    :sswitch_48
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 891
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_31

    const/16 v44, 0x1

    .line 892
    .restart local v44    # "_arg1":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setBackPressed(IZ)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v5, 0x1

    return v5

    .line 891
    .end local v44    # "_arg1":Z
    :cond_31
    const/16 v44, 0x0

    goto :goto_31

    .line 898
    .end local v4    # "_arg0":I
    :sswitch_49
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 902
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    const/16 v44, 0x1

    .line 903
    .restart local v44    # "_arg1":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->resetPersonaOnReboot(IZ)Z

    move-result v58

    .line 904
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v58, :cond_33

    const/4 v5, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v5, 0x1

    return v5

    .line 902
    .end local v44    # "_arg1":Z
    .end local v58    # "_result":Z
    :cond_32
    const/16 v44, 0x0

    goto :goto_32

    .line 905
    .restart local v44    # "_arg1":Z
    .restart local v58    # "_result":Z
    :cond_33
    const/4 v5, 0x0

    goto :goto_33

    .line 910
    .end local v4    # "_arg0":I
    .end local v44    # "_arg1":Z
    .end local v58    # "_result":Z
    :sswitch_4a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 914
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 916
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 918
    .restart local v18    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 919
    .restart local v19    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v4, v7, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v58

    .line 920
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    if-eqz v58, :cond_34

    const/4 v5, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    const/4 v5, 0x1

    return v5

    .line 921
    :cond_34
    const/4 v5, 0x0

    goto :goto_34

    .line 926
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v58    # "_result":Z
    :sswitch_4b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 929
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isResetPersonaOnRebootEnabled(I)Z

    move-result v58

    .line 930
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    if-eqz v58, :cond_35

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    const/4 v5, 0x1

    return v5

    .line 931
    :cond_35
    const/4 v5, 0x0

    goto :goto_35

    .line 936
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_4c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 940
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 941
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->showKeyguard(II)V

    .line 942
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    const/4 v5, 0x1

    return v5

    .line 947
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    :sswitch_4d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 951
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/16 v44, 0x1

    .line 952
    .restart local v44    # "_arg1":Z
    :goto_36
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->notifyKeyguardShow(IZ)V

    .line 953
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    const/4 v5, 0x1

    return v5

    .line 951
    .end local v44    # "_arg1":Z
    :cond_36
    const/16 v44, 0x0

    goto :goto_36

    .line 958
    .end local v4    # "_arg0":I
    :sswitch_4e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 962
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemIUnlockAction$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/SemIUnlockAction;

    move-result-object v42

    .line 963
    .local v42, "_arg1":Lcom/samsung/android/knox/SemIUnlockAction;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->doWhenUnlock(ILcom/samsung/android/knox/SemIUnlockAction;)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    return v5

    .line 969
    .end local v4    # "_arg0":I
    .end local v42    # "_arg1":Lcom/samsung/android/knox/SemIUnlockAction;
    :sswitch_4f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 972
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKeyguardShowState(I)Z

    move-result v58

    .line 973
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v58, :cond_37

    const/4 v5, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v5, 0x1

    return v5

    .line 974
    :cond_37
    const/4 v5, 0x0

    goto :goto_37

    .line 979
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_50
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 982
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxKeyguardShown(I)Z

    move-result v58

    .line 983
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    if-eqz v58, :cond_38

    const/4 v5, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v5, 0x1

    return v5

    .line 984
    :cond_38
    const/4 v5, 0x0

    goto :goto_38

    .line 989
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_51
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->hideScrim()V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v5, 0x1

    return v5

    .line 996
    :sswitch_52
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1000
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1001
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->convertContainerType(II)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    const/4 v5, 0x1

    return v5

    .line 1007
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    :sswitch_53
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1010
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsFingerAsSupplement(I)Z

    move-result v58

    .line 1011
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    if-eqz v58, :cond_39

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v5, 0x1

    return v5

    .line 1012
    :cond_39
    const/4 v5, 0x0

    goto :goto_39

    .line 1017
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_54
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1021
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v44, 0x1

    .line 1022
    .restart local v44    # "_arg1":Z
    :goto_3a
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsFingerAsSupplement(IZ)V

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    const/4 v5, 0x1

    return v5

    .line 1021
    .end local v44    # "_arg1":Z
    :cond_3a
    const/16 v44, 0x0

    goto :goto_3a

    .line 1028
    .end local v4    # "_arg0":I
    :sswitch_55
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1031
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getLastKeyguardUnlockTime(I)J

    move-result-wide v50

    .line 1032
    .restart local v50    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    move-object/from16 v0, p3

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1034
    const/4 v5, 0x1

    return v5

    .line 1038
    .end local v4    # "_arg0":I
    .end local v50    # "_result":J
    :sswitch_56
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1042
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .line 1043
    .local v36, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setLastKeyguardUnlockTime(IJ)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    const/4 v5, 0x1

    return v5

    .line 1049
    .end local v4    # "_arg0":I
    .end local v36    # "_arg1":J
    :sswitch_57
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1052
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsUnlockedAfterTurnOn(I)Z

    move-result v58

    .line 1053
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    if-eqz v58, :cond_3b

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    const/4 v5, 0x1

    return v5

    .line 1054
    :cond_3b
    const/4 v5, 0x0

    goto :goto_3b

    .line 1059
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_58
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1063
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v44, 0x1

    .line 1064
    .restart local v44    # "_arg1":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsUnlockedAfterTurnOn(IZ)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v5, 0x1

    return v5

    .line 1063
    .end local v44    # "_arg1":Z
    :cond_3c
    const/16 v44, 0x0

    goto :goto_3c

    .line 1070
    .end local v4    # "_arg0":I
    :sswitch_59
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1073
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsQuickAccessUIEnabled(I)Z

    move-result v58

    .line 1074
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v58, :cond_3d

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v5, 0x1

    return v5

    .line 1075
    :cond_3d
    const/4 v5, 0x0

    goto :goto_3d

    .line 1080
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_5a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1084
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v44, 0x1

    .line 1085
    .restart local v44    # "_arg1":Z
    :goto_3e
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsQuickAccessUIEnabled(IZ)V

    .line 1086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    const/4 v5, 0x1

    return v5

    .line 1084
    .end local v44    # "_arg1":Z
    :cond_3e
    const/16 v44, 0x0

    goto :goto_3e

    .line 1091
    .end local v4    # "_arg0":I
    :sswitch_5b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1094
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsFingerTimeout(I)Z

    move-result v58

    .line 1095
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    if-eqz v58, :cond_3f

    const/4 v5, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1097
    const/4 v5, 0x1

    return v5

    .line 1096
    :cond_3f
    const/4 v5, 0x0

    goto :goto_3f

    .line 1101
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_5c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1105
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_40

    const/16 v44, 0x1

    .line 1106
    .restart local v44    # "_arg1":Z
    :goto_40
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsFingerTimeout(IZ)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v5, 0x1

    return v5

    .line 1105
    .end local v44    # "_arg1":Z
    :cond_40
    const/16 v44, 0x0

    goto :goto_40

    .line 1112
    .end local v4    # "_arg0":I
    :sswitch_5d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1115
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsIrisTimeout(I)Z

    move-result v58

    .line 1116
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    if-eqz v58, :cond_41

    const/4 v5, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1118
    const/4 v5, 0x1

    return v5

    .line 1117
    :cond_41
    const/4 v5, 0x0

    goto :goto_41

    .line 1122
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_5e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1126
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/16 v44, 0x1

    .line 1127
    .restart local v44    # "_arg1":Z
    :goto_42
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsIrisTimeout(IZ)V

    .line 1128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    const/4 v5, 0x1

    return v5

    .line 1126
    .end local v44    # "_arg1":Z
    :cond_42
    const/16 v44, 0x0

    goto :goto_42

    .line 1133
    .end local v4    # "_arg0":I
    :sswitch_5f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1136
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsFingerReset(I)Z

    move-result v58

    .line 1137
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    if-eqz v58, :cond_43

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1139
    const/4 v5, 0x1

    return v5

    .line 1138
    :cond_43
    const/4 v5, 0x0

    goto :goto_43

    .line 1143
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_60
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1147
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/16 v44, 0x1

    .line 1148
    .restart local v44    # "_arg1":Z
    :goto_44
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsFingerReset(IZ)V

    .line 1149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1150
    const/4 v5, 0x1

    return v5

    .line 1147
    .end local v44    # "_arg1":Z
    :cond_44
    const/16 v44, 0x0

    goto :goto_44

    .line 1154
    .end local v4    # "_arg0":I
    :sswitch_61
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1157
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsIrisReset(I)Z

    move-result v58

    .line 1158
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    if-eqz v58, :cond_45

    const/4 v5, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v5, 0x1

    return v5

    .line 1159
    :cond_45
    const/4 v5, 0x0

    goto :goto_45

    .line 1164
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_62
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1168
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/16 v44, 0x1

    .line 1169
    .restart local v44    # "_arg1":Z
    :goto_46
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsIrisReset(IZ)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    const/4 v5, 0x1

    return v5

    .line 1168
    .end local v44    # "_arg1":Z
    :cond_46
    const/16 v44, 0x0

    goto :goto_46

    .line 1175
    .end local v4    # "_arg0":I
    :sswitch_63
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1178
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsAdminLockedJustBefore(I)Z

    move-result v58

    .line 1179
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    if-eqz v58, :cond_47

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    const/4 v5, 0x1

    return v5

    .line 1180
    :cond_47
    const/4 v5, 0x0

    goto :goto_47

    .line 1185
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_64
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1189
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    const/16 v44, 0x1

    .line 1190
    .restart local v44    # "_arg1":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsAdminLockedJustBefore(IZ)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v5, 0x1

    return v5

    .line 1189
    .end local v44    # "_arg1":Z
    :cond_48
    const/16 v44, 0x0

    goto :goto_48

    .line 1196
    .end local v4    # "_arg0":I
    :sswitch_65
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1199
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getIsFingerIdentifyFailed(I)Z

    move-result v58

    .line 1200
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    if-eqz v58, :cond_49

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v5, 0x1

    return v5

    .line 1201
    :cond_49
    const/4 v5, 0x0

    goto :goto_49

    .line 1206
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_66
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1210
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    const/16 v44, 0x1

    .line 1211
    .restart local v44    # "_arg1":Z
    :goto_4a
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setIsFingerIdentifyFailed(IZ)V

    .line 1212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    const/4 v5, 0x1

    return v5

    .line 1210
    .end local v44    # "_arg1":Z
    :cond_4a
    const/16 v44, 0x0

    goto :goto_4a

    .line 1217
    .end local v4    # "_arg0":I
    :sswitch_67
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1220
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFingerCount(I)I

    move-result v48

    .line 1221
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    const/4 v5, 0x1

    return v5

    .line 1227
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_68
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1231
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1232
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFingerCount(II)V

    .line 1233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    const/4 v5, 0x1

    return v5

    .line 1238
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    :sswitch_69
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1241
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFingerSupplementActivated(I)Z

    move-result v58

    .line 1242
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    if-eqz v58, :cond_4b

    const/4 v5, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    const/4 v5, 0x1

    return v5

    .line 1243
    :cond_4b
    const/4 v5, 0x0

    goto :goto_4b

    .line 1248
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_6a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1251
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFingerLockscreenActivated(I)Z

    move-result v58

    .line 1252
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    if-eqz v58, :cond_4c

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    const/4 v5, 0x1

    return v5

    .line 1253
    :cond_4c
    const/4 v5, 0x0

    goto :goto_4c

    .line 1258
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_6b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1262
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1264
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    const/16 v46, 0x1

    .line 1265
    .local v46, "_arg2":Z
    :goto_4d
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v46

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setShownHelp(IIZ)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    const/4 v5, 0x1

    return v5

    .line 1264
    .end local v46    # "_arg2":Z
    :cond_4d
    const/16 v46, 0x0

    goto :goto_4d

    .line 1271
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    :sswitch_6c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1275
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1277
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4e

    const/16 v46, 0x1

    .line 1278
    .restart local v46    # "_arg2":Z
    :goto_4e
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v46

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setAccessPermission(Ljava/lang/String;IZ)V

    .line 1279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1280
    const/4 v5, 0x1

    return v5

    .line 1277
    .end local v46    # "_arg2":Z
    :cond_4e
    const/16 v46, 0x0

    goto :goto_4e

    .line 1284
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    :sswitch_6d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1288
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1289
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->canAccess(Ljava/lang/String;I)Z

    move-result v58

    .line 1290
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    if-eqz v58, :cond_4f

    const/4 v5, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v5, 0x1

    return v5

    .line 1291
    :cond_4f
    const/4 v5, 0x0

    goto :goto_4f

    .line 1296
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :sswitch_6e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1299
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxSecurityTimeout(I)I

    move-result v48

    .line 1300
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    const/4 v5, 0x1

    return v5

    .line 1306
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_6f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1310
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1311
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setKnoxSecurityTimeout(II)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    const/4 v5, 0x1

    return v5

    .line 1317
    .end local v4    # "_arg0":I
    .end local v17    # "_arg1":I
    :sswitch_70
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getForegroundUser()I

    move-result v48

    .line 1319
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1321
    const/4 v5, 0x1

    return v5

    .line 1325
    .end local v48    # "_result":I
    :sswitch_71
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFocusedUser()I

    move-result v48

    .line 1327
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1329
    const/4 v5, 0x1

    return v5

    .line 1333
    .end local v48    # "_result":I
    :sswitch_72
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1336
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFocusedUser(I)V

    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    const/4 v5, 0x1

    return v5

    .line 1342
    .end local v4    # "_arg0":I
    :sswitch_73
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1345
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->onKeyguardBackPressed(I)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    const/4 v5, 0x1

    return v5

    .line 1351
    .end local v4    # "_arg0":I
    :sswitch_74
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1355
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1357
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1359
    .local v23, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1361
    .restart local v19    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "_arg4":I
    move-object/from16 v20, p0

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move/from16 v24, v19

    .line 1362
    invoke-virtual/range {v20 .. v25}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->mountOldContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v58

    .line 1363
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    if-eqz v58, :cond_50

    const/4 v5, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    const/4 v5, 0x1

    return v5

    .line 1364
    :cond_50
    const/4 v5, 0x0

    goto :goto_50

    .line 1369
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v25    # "_arg4":I
    .end local v58    # "_result":Z
    :sswitch_75
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1372
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->unmountOldContainer(Ljava/lang/String;)Z

    move-result v58

    .line 1373
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    if-eqz v58, :cond_51

    const/4 v5, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    const/4 v5, 0x1

    return v5

    .line 1374
    :cond_51
    const/4 v5, 0x0

    goto :goto_51

    .line 1379
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_76
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1383
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1384
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->verifyKnoxBackupPin(ILjava/lang/String;)Z

    move-result v58

    .line 1385
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    if-eqz v58, :cond_52

    const/4 v5, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    const/4 v5, 0x1

    return v5

    .line 1386
    :cond_52
    const/4 v5, 0x0

    goto :goto_52

    .line 1391
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v58    # "_result":Z
    :sswitch_77
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1395
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1396
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setKnoxBackupPin(ILjava/lang/String;)V

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    const/4 v5, 0x1

    return v5

    .line 1402
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_78
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1406
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1407
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxNameChanged(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v55

    .line 1408
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1410
    const/4 v5, 0x1

    return v5

    .line 1414
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_79
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1418
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1419
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxIconChanged(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v52

    .line 1420
    .restart local v52    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    if-eqz v52, :cond_53

    .line 1422
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1423
    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1428
    :goto_53
    const/4 v5, 0x1

    return v5

    .line 1426
    :cond_53
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 1432
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v52    # "_result":Landroid/graphics/Bitmap;
    :sswitch_7a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1435
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxNameChangedAsUser(I)Ljava/lang/String;

    move-result-object v55

    .line 1436
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1437
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1438
    const/4 v5, 0x1

    return v5

    .line 1442
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_7b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1445
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getKnoxIconChangedAsUser(I)Landroid/graphics/Bitmap;

    move-result-object v52

    .line 1446
    .restart local v52    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    if-eqz v52, :cond_54

    .line 1448
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    const/4 v5, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1454
    :goto_54
    const/4 v5, 0x1

    return v5

    .line 1452
    :cond_54
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    .line 1458
    .end local v4    # "_arg0":I
    .end local v52    # "_result":Landroid/graphics/Bitmap;
    :sswitch_7c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1461
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isNFCAllowed(I)Z

    move-result v58

    .line 1462
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    if-eqz v58, :cond_55

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    const/4 v5, 0x1

    return v5

    .line 1463
    :cond_55
    const/4 v5, 0x0

    goto :goto_55

    .line 1468
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_7d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1472
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_56

    const/16 v44, 0x1

    .line 1474
    .local v44, "_arg1":Z
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v47

    .line 1475
    .local v47, "_arg2":[I
    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v47

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFingerprintIndex(IZ[I)V

    .line 1476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1477
    const/4 v5, 0x1

    return v5

    .line 1472
    .end local v44    # "_arg1":Z
    .end local v47    # "_arg2":[I
    :cond_56
    const/16 v44, 0x0

    .restart local v44    # "_arg1":Z
    goto :goto_56

    .line 1481
    .end local v4    # "_arg0":I
    .end local v44    # "_arg1":Z
    :sswitch_7e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1484
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isEnabledFingerprintIndex(I)Z

    move-result v58

    .line 1485
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    if-eqz v58, :cond_57

    const/4 v5, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    const/4 v5, 0x1

    return v5

    .line 1486
    :cond_57
    const/4 v5, 0x0

    goto :goto_57

    .line 1491
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_7f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1494
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFingerprintIndex(I)[I

    move-result-object v60

    .line 1495
    .restart local v60    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1497
    const/4 v5, 0x1

    return v5

    .line 1501
    .end local v4    # "_arg0":I
    .end local v60    # "_result":[I
    :sswitch_80
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1504
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFingerprintHash(I)Ljava/util/List;

    move-result-object v57

    .line 1505
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1506
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1507
    const/4 v5, 0x1

    return v5

    .line 1511
    .end local v4    # "_arg0":I
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_81
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1515
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v43

    .line 1516
    .restart local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFingerprintHash(ILjava/util/List;)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    const/4 v5, 0x1

    return v5

    .line 1522
    .end local v4    # "_arg0":I
    .end local v43    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_82
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1526
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1528
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1529
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v7, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->resetPersonaPassword(ILjava/lang/String;I)V

    .line 1530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    const/4 v5, 0x1

    return v5

    .line 1535
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    :sswitch_83
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1538
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setupComplete(I)V

    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1540
    const/4 v5, 0x1

    return v5

    .line 1544
    .end local v4    # "_arg0":I
    :sswitch_84
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1548
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1549
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getCustomBadgedResourceIdIconifRequired(Ljava/lang/String;I)I

    move-result v48

    .line 1550
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1551
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1552
    const/4 v5, 0x1

    return v5

    .line 1556
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v48    # "_result":I
    :sswitch_85
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getDefaultQuickSettings()Ljava/lang/String;

    move-result-object v55

    .line 1558
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1560
    const/4 v5, 0x1

    return v5

    .line 1564
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_86
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1568
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1570
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1571
    .restart local v18    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v49

    .line 1572
    .local v49, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    if-eqz v49, :cond_58

    .line 1574
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1575
    const/4 v5, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1580
    :goto_58
    const/4 v5, 0x1

    return v5

    .line 1578
    :cond_58
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_58

    .line 1584
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v49    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_87
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerHideUsageStatsApps()Ljava/util/List;

    move-result-object v57

    .line 1586
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1588
    const/4 v5, 0x1

    return v5

    .line 1592
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_88
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1595
    .restart local v6    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->addPackageToNonSecureAppList(Ljava/lang/String;)V

    .line 1596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    const/4 v5, 0x1

    return v5

    .line 1601
    .end local v6    # "_arg0":Ljava/lang/String;
    :sswitch_89
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getNonSecureAppList()Ljava/util/List;

    move-result-object v57

    .line 1603
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1605
    const/4 v5, 0x1

    return v5

    .line 1609
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_8a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->clearNonSecureAppList()V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    const/4 v5, 0x1

    return v5

    .line 1616
    :sswitch_8b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isFotaUpgradeVersionChanged()Z

    move-result v58

    .line 1618
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    if-eqz v58, :cond_59

    const/4 v5, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    const/4 v5, 0x1

    return v5

    .line 1619
    :cond_59
    const/4 v5, 0x0

    goto :goto_59

    .line 1624
    .end local v58    # "_result":Z
    :sswitch_8c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1627
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->removeKnoxAppsinFota(I)V

    .line 1628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    const/4 v5, 0x1

    return v5

    .line 1633
    .end local v4    # "_arg0":I
    :sswitch_8d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getSecureFolderId()I

    move-result v48

    .line 1635
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1636
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1637
    const/4 v5, 0x1

    return v5

    .line 1641
    .end local v48    # "_result":I
    :sswitch_8e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1644
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECName(I)Ljava/lang/String;

    move-result-object v55

    .line 1645
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1647
    const/4 v5, 0x1

    return v5

    .line 1651
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_8f
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1654
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECBadge(I)[B

    move-result-object v59

    .line 1655
    .local v59, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1657
    const/4 v5, 0x1

    return v5

    .line 1661
    .end local v4    # "_arg0":I
    .end local v59    # "_result":[B
    :sswitch_90
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1664
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getECIcon(I)[B

    move-result-object v59

    .line 1665
    .restart local v59    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1666
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1667
    const/4 v5, 0x1

    return v5

    .line 1671
    .end local v4    # "_arg0":I
    .end local v59    # "_result":[B
    :sswitch_91
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1674
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isECContainer(I)Z

    move-result v58

    .line 1675
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1676
    if-eqz v58, :cond_5a

    const/4 v5, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    const/4 v5, 0x1

    return v5

    .line 1676
    :cond_5a
    const/4 v5, 0x0

    goto :goto_5a

    .line 1681
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_92
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1684
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerName(I)Ljava/lang/String;

    move-result-object v55

    .line 1685
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1687
    const/4 v5, 0x1

    return v5

    .line 1691
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_93
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1695
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1696
    .restart local v17    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isPossibleAddAppsToContainer(Ljava/lang/String;I)Z

    move-result v58

    .line 1697
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    if-eqz v58, :cond_5b

    const/4 v5, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1699
    const/4 v5, 0x1

    return v5

    .line 1698
    :cond_5b
    const/4 v5, 0x0

    goto :goto_5b

    .line 1703
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v58    # "_result":Z
    :sswitch_94
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1704
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getMyknoxId()I

    move-result v48

    .line 1705
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    const/4 v5, 0x1

    return v5

    .line 1711
    .end local v48    # "_result":I
    :sswitch_95
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1714
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerAppIcon(I)[B

    move-result-object v59

    .line 1715
    .restart local v59    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1717
    const/4 v5, 0x1

    return v5

    .line 1721
    .end local v4    # "_arg0":I
    .end local v59    # "_result":[B
    :sswitch_96
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1724
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getFidoRpContext(I)Ljava/lang/String;

    move-result-object v55

    .line 1725
    .restart local v55    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1726
    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1727
    const/4 v5, 0x1

    return v5

    .line 1731
    .end local v4    # "_arg0":I
    .end local v55    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1735
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1736
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->setFidoRpContext(ILjava/lang/String;)V

    .line 1737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    const/4 v5, 0x1

    return v5

    .line 1742
    .end local v4    # "_arg0":I
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_98
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isKnoxMultiWindowExist()Z

    move-result v58

    .line 1744
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    if-eqz v58, :cond_5c

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    const/4 v5, 0x1

    return v5

    .line 1745
    :cond_5c
    const/4 v5, 0x0

    goto :goto_5c

    .line 1750
    .end local v58    # "_result":Z
    :sswitch_99
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1753
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getContainerOrder(I)I

    move-result v48

    .line 1754
    .restart local v48    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    move-object/from16 v0, p3

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    const/4 v5, 0x1

    return v5

    .line 1760
    .end local v4    # "_arg0":I
    .end local v48    # "_result":I
    :sswitch_9a
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1761
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isBootCompleted()Z

    move-result v58

    .line 1762
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1763
    if-eqz v58, :cond_5d

    const/4 v5, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    const/4 v5, 0x1

    return v5

    .line 1763
    :cond_5d
    const/4 v5, 0x0

    goto :goto_5d

    .line 1768
    .end local v58    # "_result":Z
    :sswitch_9b
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1771
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->isExternalStorageEnabled(I)Z

    move-result v58

    .line 1772
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    if-eqz v58, :cond_5e

    const/4 v5, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    const/4 v5, 0x1

    return v5

    .line 1773
    :cond_5e
    const/4 v5, 0x0

    goto :goto_5e

    .line 1778
    .end local v4    # "_arg0":I
    .end local v58    # "_result":Z
    :sswitch_9c
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1781
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->getAppPackageNamesAllWhiteLists(I)Ljava/util/List;

    move-result-object v57

    .line 1782
    .restart local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1784
    const/4 v5, 0x1

    return v5

    .line 1788
    .end local v4    # "_arg0":I
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9d
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    .line 1791
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Intent;

    .line 1796
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->startActivityThroughPersona(Landroid/content/Intent;)Z

    move-result v58

    .line 1797
    .restart local v58    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    if-eqz v58, :cond_60

    const/4 v5, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1799
    const/4 v5, 0x1

    return v5

    .line 1794
    .end local v58    # "_result":Z
    :cond_5f
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/content/Intent;
    goto :goto_5f

    .line 1798
    .end local v28    # "_arg0":Landroid/content/Intent;
    .restart local v58    # "_result":Z
    :cond_60
    const/4 v5, 0x0

    goto :goto_60

    .line 1803
    .end local v58    # "_result":Z
    :sswitch_9e
    const-string/jumbo v5, "com.samsung.android.knox.ISemPersonaManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1807
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_61

    .line 1808
    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/app/PendingIntent;

    .line 1814
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_62

    .line 1815
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/Bundle;

    .line 1821
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1822
    .restart local v10    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    invoke-virtual {v0, v4, v1, v2, v10}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->handleNotificationWhenUnlock(ILandroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    const/4 v5, 0x1

    return v5

    .line 1811
    .end local v10    # "_arg3":Ljava/lang/String;
    :cond_61
    const/16 v38, 0x0

    .local v38, "_arg1":Landroid/app/PendingIntent;
    goto :goto_61

    .line 1818
    .end local v38    # "_arg1":Landroid/app/PendingIntent;
    :cond_62
    const/16 v45, 0x0

    .local v45, "_arg2":Landroid/os/Bundle;
    goto :goto_62

    .line 41
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
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
