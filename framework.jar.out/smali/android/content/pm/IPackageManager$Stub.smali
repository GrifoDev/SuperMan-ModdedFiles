.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_AASADebug:I = 0x1e

.field static final TRANSACTION_AASAToken_RegisterPackage:I = 0x20

.field static final TRANSACTION_AASAToken_UnRegisterPackage:I = 0x21

.field static final TRANSACTION_AASA_AddPackageToDataByService:I = 0x24

.field static final TRANSACTION_AASA_allowByPackage:I = 0x19

.field static final TRANSACTION_AASA_blockByPackage:I = 0x18

.field static final TRANSACTION_AASA_getSEInfo:I = 0x16

.field static final TRANSACTION_AASA_managedPermission:I = 0x14

.field static final TRANSACTION_AASA_managedPermissionByUID:I = 0x15

.field static final TRANSACTION_AASA_readDataByPackages:I = 0x1d

.field static final TRANSACTION_AASA_readPackagesByType:I = 0x1c

.field static final TRANSACTION_AASA_readUids:I = 0x22

.field static final TRANSACTION_AASA_removePackage:I = 0x1b

.field static final TRANSACTION_AASA_updatePackage:I = 0x1a

.field static final TRANSACTION_AASAsetFirstWorkingVal:I = 0x1f

.field static final TRANSACTION_ASKS_isBlockedAutoRunPackage:I = 0x26

.field static final TRANSACTION_SKA_checkDevice:I = 0x23

.field static final TRANSACTION_SKA_setMode:I = 0x25

.field static final TRANSACTION_activitySupportsIntent:I = 0xf

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x62

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0xba

.field static final TRANSACTION_addPermission:I = 0x28

.field static final TRANSACTION_addPermissionAsync:I = 0x96

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x60

.field static final TRANSACTION_addPreferredActivity:I = 0x5c

.field static final TRANSACTION_applyOverlays:I = 0xca

.field static final TRANSACTION_applyRuntimePermissions:I = 0x2a

.field static final TRANSACTION_applyRuntimePermissionsForAllApplications:I = 0x2b

.field static final TRANSACTION_canForwardTo:I = 0x43

.field static final TRANSACTION_cancelEMPHandlerSendPendingBroadcast:I = 0xcd

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x7

.field static final TRANSACTION_checkPackageStartable:I = 0x1

.field static final TRANSACTION_checkPermission:I = 0x13

.field static final TRANSACTION_checkSignatures:I = 0x38

.field static final TRANSACTION_checkUidPermission:I = 0x27

.field static final TRANSACTION_checkUidSignatures:I = 0x39

.field static final TRANSACTION_clearApplicationProfileData:I = 0x7c

.field static final TRANSACTION_clearApplicationUserData:I = 0x7b

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x63

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x61

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x5e

.field static final TRANSACTION_clearPackagePreferredActivitiesAsUser:I = 0xaf

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x6

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x79

.field static final TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x7a

.field static final TRANSACTION_deletePackage:I = 0x57

.field static final TRANSACTION_deletePackageAsUser:I = 0x56

.field static final TRANSACTION_dumpProfiles:I = 0x8d

.field static final TRANSACTION_enterSafeMode:I = 0x82

.field static final TRANSACTION_extendVerificationTimeout:I = 0x9b

.field static final TRANSACTION_finishPackageInstall:I = 0x54

.field static final TRANSACTION_flushPackageRestrictionsAsUser:I = 0x75

.field static final TRANSACTION_forceDexOpt:I = 0x8e

.field static final TRANSACTION_freeStorage:I = 0x78

.field static final TRANSACTION_freeStorageAndNotify:I = 0x77

.field static final TRANSACTION_getActivityInfo:I = 0xd

.field static final TRANSACTION_getAllIntentFilters:I = 0xa0

.field static final TRANSACTION_getAllPackages:I = 0x3a

.field static final TRANSACTION_getAllPermissionGroups:I = 0xb

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x41

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x73

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0xb2

.field static final TRANSACTION_getApplicationInfo:I = 0xc

.field static final TRANSACTION_getBlockUninstallForUser:I = 0xb5

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x71

.field static final TRANSACTION_getComponentMetadataForIconTray:I = 0x87

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x68

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0xa2

.field static final TRANSACTION_getDisplayChooserResolveInfo:I = 0xe

.field static final TRANSACTION_getEphemeralApplicationCookie:I = 0xc1

.field static final TRANSACTION_getEphemeralApplicationIcon:I = 0xc3

.field static final TRANSACTION_getEphemeralApplications:I = 0xc0

.field static final TRANSACTION_getFlagsForUid:I = 0x3e

.field static final TRANSACTION_getGrantedPermissions:I = 0xad

.field static final TRANSACTION_getHomeActivities:I = 0x6e

.field static final TRANSACTION_getInstallLocation:I = 0x98

.field static final TRANSACTION_getInstalledApplications:I = 0x4c

.field static final TRANSACTION_getInstalledPackages:I = 0x4a

.field static final TRANSACTION_getInstallerPackageName:I = 0x58

.field static final TRANSACTION_getInstrumentationInfo:I = 0x51

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x6a

.field static final TRANSACTION_getIntentFilterVerifications:I = 0x9f

.field static final TRANSACTION_getIntentVerificationStatus:I = 0x9d

.field static final TRANSACTION_getKeySetByAlias:I = 0xb6

.field static final TRANSACTION_getLastChosenActivity:I = 0x5a

.field static final TRANSACTION_getMetadataForIconTray:I = 0x86

.field static final TRANSACTION_getMoveStatus:I = 0x91

.field static final TRANSACTION_getNameForUid:I = 0x3c

.field static final TRANSACTION_getPackageGids:I = 0x5

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInstaller:I = 0xb3

.field static final TRANSACTION_getPackageSizeInfo:I = 0x7d

.field static final TRANSACTION_getPackageUid:I = 0x4

.field static final TRANSACTION_getPackagesForUid:I = 0x3b

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x4b

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0xbf

.field static final TRANSACTION_getPermissionFlags:I = 0x33

.field static final TRANSACTION_getPermissionGrantBackup:I = 0x6c

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xa

.field static final TRANSACTION_getPermissionInfo:I = 0x8

.field static final TRANSACTION_getPersistentApplications:I = 0x4d

.field static final TRANSACTION_getPreferredActivities:I = 0x5f

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x66

.field static final TRANSACTION_getPreviousCodePaths:I = 0xc9

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x3f

.field static final TRANSACTION_getProgressionOfPackageChanged:I = 0xcc

.field static final TRANSACTION_getProviderInfo:I = 0x12

.field static final TRANSACTION_getReceiverInfo:I = 0x10

.field static final TRANSACTION_getRequestedRuntimePermissions:I = 0x2f

.field static final TRANSACTION_getRuntimePermissionGroups:I = 0x2e

.field static final TRANSACTION_getServiceInfo:I = 0x11

.field static final TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0xc6

.field static final TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0xc7

.field static final TRANSACTION_getSignatureInfo:I = 0x17

.field static final TRANSACTION_getSigningKeySet:I = 0xb7

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x7f

.field static final TRANSACTION_getSystemFeatureLevel:I = 0x81

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x7e

.field static final TRANSACTION_getUidForSharedUser:I = 0x3d

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0xa3

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0xbc

.field static final TRANSACTION_grantRuntimePermission:I = 0x30

.field static final TRANSACTION_hasSystemFeature:I = 0x80

.field static final TRANSACTION_hasSystemUidErrors:I = 0x85

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x99

.field static final TRANSACTION_installExistingPackageAsUserForMDM:I = 0xae

.field static final TRANSACTION_installPackageAsUser:I = 0x53

.field static final TRANSACTION_isEphemeralApplication:I = 0xc4

.field static final TRANSACTION_isFirstBoot:I = 0xa4

.field static final TRANSACTION_isOnlyCoreApps:I = 0xa5

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0xc8

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0xb8

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0xb9

.field static final TRANSACTION_isPackageSuspendedForUser:I = 0x65

.field static final TRANSACTION_isPermissionEnforced:I = 0xa8

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0xbd

.field static final TRANSACTION_isPermissionRevokedByUserFixed:I = 0xbe

.field static final TRANSACTION_isProtectedBroadcast:I = 0x37

.field static final TRANSACTION_isSafeMode:I = 0x83

.field static final TRANSACTION_isStorageLow:I = 0xb0

.field static final TRANSACTION_isUidPrivileged:I = 0x40

.field static final TRANSACTION_isUpgrade:I = 0xa6

.field static final TRANSACTION_logAppProcessStartIfNeeded:I = 0x74

.field static final TRANSACTION_movePackage:I = 0x94

.field static final TRANSACTION_movePrimaryStorage:I = 0x95

.field static final TRANSACTION_nextPackageToClean:I = 0x90

.field static final TRANSACTION_notifyPackageUse:I = 0x89

.field static final TRANSACTION_performDexOpt:I = 0x8b

.field static final TRANSACTION_performDexOptIfNeeded:I = 0x8a

.field static final TRANSACTION_performDexOptMode:I = 0x8c

.field static final TRANSACTION_queryContentProviders:I = 0x50

.field static final TRANSACTION_queryInstrumentation:I = 0x52

.field static final TRANSACTION_queryIntentActivities:I = 0x44

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x45

.field static final TRANSACTION_queryIntentContentProviders:I = 0x49

.field static final TRANSACTION_queryIntentReceivers:I = 0x46

.field static final TRANSACTION_queryIntentServices:I = 0x48

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x9

.field static final TRANSACTION_queryRuntimePermissionGroupByPermission:I = 0x2c

.field static final TRANSACTION_queryRuntimePermissionsByPermissionGroup:I = 0x2d

.field static final TRANSACTION_querySyncProviders:I = 0x4f

.field static final TRANSACTION_registerMoveCallback:I = 0x92

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0xbb

.field static final TRANSACTION_removePermission:I = 0x29

.field static final TRANSACTION_replacePreferredActivity:I = 0x5d

.field static final TRANSACTION_resetApplicationPreferences:I = 0x59

.field static final TRANSACTION_resetRuntimePermissions:I = 0x32

.field static final TRANSACTION_resolveContentProvider:I = 0x4e

.field static final TRANSACTION_resolveIntent:I = 0x42

.field static final TRANSACTION_resolveService:I = 0x47

.field static final TRANSACTION_restoreDefaultApps:I = 0x69

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x6b

.field static final TRANSACTION_restorePermissionGrants:I = 0x6d

.field static final TRANSACTION_restorePreferredActivities:I = 0x67

.field static final TRANSACTION_revokeExternalPermissions:I = 0xa9

.field static final TRANSACTION_revokePermissionEDM:I = 0xab

.field static final TRANSACTION_revokeRuntimePermission:I = 0x31

.field static final TRANSACTION_rollbackPermission:I = 0xac

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x72

.field static final TRANSACTION_setApplicationEnabledSettingWithList:I = 0xcb

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0xb1

.field static final TRANSACTION_setBlockUninstallForUser:I = 0xb4

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x70

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0xa1

.field static final TRANSACTION_setEphemeralApplicationCookie:I = 0xc2

.field static final TRANSACTION_setHomeActivity:I = 0x6f

.field static final TRANSACTION_setInstallLocation:I = 0x97

.field static final TRANSACTION_setInstallerPackageName:I = 0x55

.field static final TRANSACTION_setLastChosenActivity:I = 0x5b

.field static final TRANSACTION_setLicensePermissions:I = 0xaa

.field static final TRANSACTION_setPackageStoppedState:I = 0x76

.field static final TRANSACTION_setPackagesSuspendedAsUser:I = 0x64

.field static final TRANSACTION_setPermissionEnforced:I = 0xa7

.field static final TRANSACTION_setRequiredForSystemUser:I = 0xc5

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x36

.field static final TRANSACTION_systemReady:I = 0x84

.field static final TRANSACTION_unregisterMoveCallback:I = 0x93

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x8f

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0x9e

.field static final TRANSACTION_updatePackagesIfNeeded:I = 0x88

.field static final TRANSACTION_updatePermissionFlags:I = 0x34

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x35

.field static final TRANSACTION_verifyIntentFilter:I = 0x9c

.field static final TRANSACTION_verifyPendingInstall:I = 0x9a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 108
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 2865
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 48
    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v6, 0x1

    return v6

    .line 53
    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 57
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 58
    .local v40, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v6, 0x1

    return v6

    .line 64
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 68
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 69
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v104

    .line 70
    .local v104, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v104, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    const/4 v6, 0x1

    return v6

    .line 71
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 76
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 80
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 82
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 83
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v93

    .line 84
    .local v93, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v93, :cond_1

    .line 86
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v6, 0x1

    move-object/from16 v0, v93

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 90
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 96
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v93    # "_result":Landroid/content/pm/PackageInfo;
    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 100
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 102
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 103
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;II)I

    move-result v85

    .line 104
    .local v85, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v6, 0x1

    return v6

    .line 110
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 114
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 116
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 117
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v106

    .line 118
    .local v106, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 120
    const/4 v6, 0x1

    return v6

    .line 124
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v106    # "_result":[I
    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v64

    .line 127
    .local v64, "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 128
    .local v107, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 130
    const/4 v6, 0x1

    return v6

    .line 134
    .end local v64    # "_arg0":[Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v64

    .line 137
    .restart local v64    # "_arg0":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 138
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 140
    const/4 v6, 0x1

    return v6

    .line 144
    .end local v64    # "_arg0":[Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 148
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 149
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v96

    .line 150
    .local v96, "_result":Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v96, :cond_2

    .line 152
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v6, 0x1

    move-object/from16 v0, v96

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 156
    :cond_2
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 162
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v96    # "_result":Landroid/content/pm/PermissionInfo;
    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 166
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 167
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 168
    .local v94, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v94, :cond_3

    .line 170
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    :goto_3
    const/4 v6, 0x1

    return v6

    .line 174
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 180
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 184
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 185
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v95

    .line 186
    .local v95, "_result":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v95, :cond_4

    .line 188
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    const/4 v6, 0x1

    move-object/from16 v0, v95

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 194
    :goto_4
    const/4 v6, 0x1

    return v6

    .line 192
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 198
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v95    # "_result":Landroid/content/pm/PermissionGroupInfo;
    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 201
    .local v55, "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 202
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v94, :cond_5

    .line 204
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 208
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 214
    .end local v55    # "_arg0":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 218
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 220
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 221
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v88

    .line 222
    .local v88, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v88, :cond_6

    .line 224
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v6, 0x1

    move-object/from16 v0, v88

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 230
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 228
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 234
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v88    # "_result":Landroid/content/pm/ApplicationInfo;
    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 237
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 243
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 245
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 246
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v87

    .line 247
    .local v87, "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v87, :cond_8

    .line 249
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v6, 0x1

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 255
    :goto_8
    const/4 v6, 0x1

    return v6

    .line 240
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_7
    const/16 v19, 0x0

    .local v19, "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    .line 253
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v40    # "_arg1":I
    .restart local v87    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 259
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getDisplayChooserResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v98

    .line 261
    .local v98, "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v98, :cond_9

    .line 263
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 269
    :goto_9
    const/4 v6, 0x1

    return v6

    .line 267
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 273
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 276
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 282
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 283
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/Intent;

    .line 289
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 290
    .local v46, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v68

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v104

    .line 291
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v104, :cond_c

    const/4 v6, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v6, 0x1

    return v6

    .line 279
    .end local v46    # "_arg2":Ljava/lang/String;
    .end local v104    # "_result":Z
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 286
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    :cond_b
    const/16 v68, 0x0

    .local v68, "_arg1":Landroid/content/Intent;
    goto :goto_b

    .line 292
    .end local v68    # "_arg1":Landroid/content/Intent;
    .restart local v46    # "_arg2":Ljava/lang/String;
    .restart local v104    # "_result":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    .line 297
    .end local v46    # "_arg2":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 300
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 306
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 308
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 309
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v87

    .line 310
    .restart local v87    # "_result":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v87, :cond_e

    .line 312
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v6, 0x1

    move-object/from16 v0, v87

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 318
    :goto_e
    const/4 v6, 0x1

    return v6

    .line 303
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_d
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d

    .line 316
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v40    # "_arg1":I
    .restart local v87    # "_result":Landroid/content/pm/ActivityInfo;
    :cond_e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 322
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v87    # "_result":Landroid/content/pm/ActivityInfo;
    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 325
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 331
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 333
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 334
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v99

    .line 335
    .local v99, "_result":Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    if-eqz v99, :cond_10

    .line 337
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v6, 0x1

    move-object/from16 v0, v99

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 343
    :goto_10
    const/4 v6, 0x1

    return v6

    .line 328
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v99    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_f
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f

    .line 341
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v40    # "_arg1":I
    .restart local v99    # "_result":Landroid/content/pm/ServiceInfo;
    :cond_10
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 347
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v99    # "_result":Landroid/content/pm/ServiceInfo;
    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 350
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 356
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 358
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 359
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v97

    .line 360
    .local v97, "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v97, :cond_12

    .line 362
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 368
    :goto_12
    const/4 v6, 0x1

    return v6

    .line 353
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_11
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    .line 366
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    .restart local v9    # "_arg2":I
    .restart local v40    # "_arg1":I
    .restart local v97    # "_result":Landroid/content/pm/ProviderInfo;
    :cond_12
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 372
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 376
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 378
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 379
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v85

    .line 380
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v6, 0x1

    return v6

    .line 386
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 390
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 391
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v85

    .line 392
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v6, 0x1

    return v6

    .line 398
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 402
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 403
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermissionByUID(ILjava/lang/String;)I

    move-result v85

    .line 404
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v6, 0x1

    return v6

    .line 410
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v55    # "_arg0":I
    .end local v85    # "_result":I
    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 414
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 415
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_getSEInfo(ILjava/lang/String;)[B

    move-result-object v105

    .line 416
    .local v105, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 418
    const/4 v6, 0x1

    return v6

    .line 422
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v55    # "_arg0":I
    .end local v105    # "_result":[B
    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 425
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getSignatureInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .line 426
    .local v102, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    const/4 v6, 0x1

    return v6

    .line 432
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/4 v7, 0x1

    .line 436
    .local v7, "_arg0":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/4 v8, 0x1

    .line 438
    .local v8, "_arg1":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 440
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 442
    .local v10, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 443
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->AASA_blockByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v6, 0x1

    return v6

    .line 434
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_13

    .line 436
    :cond_14
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_14

    .line 449
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v7, 0x1

    .line 453
    .restart local v7    # "_arg0":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v8, 0x1

    .line 455
    .restart local v8    # "_arg1":Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 457
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 459
    .restart local v10    # "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg4":Ljava/lang/String;
    move-object/from16 v6, p0

    .line 460
    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->AASA_allowByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v6, 0x1

    return v6

    .line 451
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":[Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    :cond_15
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_15

    .line 453
    :cond_16
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_16

    .line 466
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 470
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 472
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    .line 473
    .local v21, "_arg2":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v14, v1}, Landroid/content/pm/IPackageManager$Stub;->AASA_updatePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v6, 0x1

    return v6

    .line 479
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":[Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 483
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 484
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_removePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v6, 0x1

    return v6

    .line 490
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 493
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->AASA_readPackagesByType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 494
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 496
    const/4 v6, 0x1

    return v6

    .line 500
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 504
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 505
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_readDataByPackages(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 506
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 508
    const/4 v6, 0x1

    return v6

    .line 512
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASADebug()V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v6, 0x1

    return v6

    .line 519
    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASAsetFirstWorkingVal()V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    const/4 v6, 0x1

    return v6

    .line 526
    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 530
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 531
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_RegisterPackage(Ljava/lang/String;I)Z

    move-result v104

    .line 532
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v104, :cond_17

    const/4 v6, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v6, 0x1

    return v6

    .line 533
    :cond_17
    const/4 v6, 0x0

    goto :goto_17

    .line 538
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 542
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 543
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_UnRegisterPackage(Ljava/lang/String;I)Z

    move-result v104

    .line 544
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v104, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v6, 0x1

    return v6

    .line 545
    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    .line 550
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_readUids()[Ljava/lang/String;

    move-result-object v107

    .line 552
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 554
    const/4 v6, 0x1

    return v6

    .line 558
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 561
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->SKA_checkDevice(I)[Ljava/lang/String;

    move-result-object v107

    .line 562
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 564
    const/4 v6, 0x1

    return v6

    .line 568
    .end local v55    # "_arg0":I
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 571
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->AASA_AddPackageToDataByService(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v6, 0x1

    return v6

    .line 577
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 580
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->SKA_setMode(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v6, 0x1

    return v6

    .line 586
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 589
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->ASKS_isBlockedAutoRunPackage(Ljava/lang/String;)Z

    move-result v104

    .line 590
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    if-eqz v104, :cond_19

    const/4 v6, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    const/4 v6, 0x1

    return v6

    .line 591
    :cond_19
    const/4 v6, 0x0

    goto :goto_19

    .line 596
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 600
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 601
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v85

    .line 602
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v6, 0x1

    return v6

    .line 608
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 611
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/pm/PermissionInfo;

    .line 616
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v104

    .line 617
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    if-eqz v104, :cond_1b

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    const/4 v6, 0x1

    return v6

    .line 614
    .end local v104    # "_result":Z
    :cond_1a
    const/16 v59, 0x0

    .local v59, "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_1a

    .line 618
    .end local v59    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v104    # "_result":Z
    :cond_1b
    const/4 v6, 0x0

    goto :goto_1b

    .line 623
    .end local v104    # "_result":Z
    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 626
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v6, 0x1

    return v6

    .line 632
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 636
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v75

    .line 638
    .local v75, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 640
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 641
    .local v16, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v104

    .line 642
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v104, :cond_1c

    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v6, 0x1

    return v6

    .line 643
    :cond_1c
    const/4 v6, 0x0

    goto :goto_1c

    .line 648
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v104    # "_result":Z
    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 652
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 653
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissionsForAllApplications(II)Z

    move-result v104

    .line 654
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    if-eqz v104, :cond_1d

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v6, 0x1

    return v6

    .line 655
    :cond_1d
    const/4 v6, 0x0

    goto :goto_1d

    .line 660
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    .end local v104    # "_result":Z
    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 664
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 665
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v102

    .line 666
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    const/4 v6, 0x1

    return v6

    .line 672
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 675
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v103

    .line 676
    .local v103, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 678
    const/4 v6, 0x1

    return v6

    .line 682
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionGroups()Ljava/util/List;

    move-result-object v103

    .line 684
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 686
    const/4 v6, 0x1

    return v6

    .line 690
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 693
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v103

    .line 694
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 696
    const/4 v6, 0x1

    return v6

    .line 700
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 704
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 706
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 707
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    const/4 v6, 0x1

    return v6

    .line 713
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 717
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 719
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 720
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v6, 0x1

    return v6

    .line 726
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    const/4 v6, 0x1

    return v6

    .line 733
    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 737
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 739
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 740
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v85

    .line 741
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v6, 0x1

    return v6

    .line 747
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 751
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 753
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 755
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 757
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "_arg4":I
    move-object/from16 v12, p0

    move v15, v9

    .line 758
    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    const/4 v6, 0x1

    return v6

    .line 764
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 768
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 770
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 771
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/4 v6, 0x1

    return v6

    .line 777
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 781
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 783
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 784
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v104

    .line 785
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v104, :cond_1e

    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v6, 0x1

    return v6

    .line 786
    :cond_1e
    const/4 v6, 0x0

    goto :goto_1e

    .line 791
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 794
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v104

    .line 795
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    if-eqz v104, :cond_1f

    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v6, 0x1

    return v6

    .line 796
    :cond_1f
    const/4 v6, 0x0

    goto :goto_1f

    .line 801
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 805
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 806
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v85

    .line 807
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    const/4 v6, 0x1

    return v6

    .line 813
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 817
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 818
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v85

    .line 819
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v6, 0x1

    return v6

    .line 825
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    .end local v85    # "_result":I
    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    move-result-object v103

    .line 827
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 829
    const/4 v6, 0x1

    return v6

    .line 833
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 836
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v107

    .line 837
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 839
    const/4 v6, 0x1

    return v6

    .line 843
    .end local v55    # "_arg0":I
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 846
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v102

    .line 847
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 849
    const/4 v6, 0x1

    return v6

    .line 853
    .end local v55    # "_arg0":I
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 856
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v85

    .line 857
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    const/4 v6, 0x1

    return v6

    .line 863
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 866
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v85

    .line 867
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    const/4 v6, 0x1

    return v6

    .line 873
    .end local v55    # "_arg0":I
    .end local v85    # "_result":I
    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 876
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v85

    .line 877
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v6, 0x1

    return v6

    .line 883
    .end local v55    # "_arg0":I
    .end local v85    # "_result":I
    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 886
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v104

    .line 887
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v104, :cond_20

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v6, 0x1

    return v6

    .line 888
    :cond_20
    const/4 v6, 0x0

    goto :goto_20

    .line 893
    .end local v55    # "_arg0":I
    .end local v104    # "_result":Z
    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 896
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v107

    .line 897
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 899
    const/4 v6, 0x1

    return v6

    .line 903
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    .line 906
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 912
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 914
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 916
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 917
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v98

    .line 918
    .restart local v98    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v98, :cond_22

    .line 920
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 926
    :goto_22
    const/4 v6, 0x1

    return v6

    .line 909
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_21
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/content/Intent;
    goto :goto_21

    .line 924
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_22
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    .line 930
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 933
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 939
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 941
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 943
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 944
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v104

    .line 945
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    if-eqz v104, :cond_24

    const/4 v6, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    const/4 v6, 0x1

    return v6

    .line 936
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v104    # "_result":Z
    :cond_23
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_23

    .line 946
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v104    # "_result":Z
    :cond_24
    const/4 v6, 0x0

    goto :goto_24

    .line 951
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v104    # "_result":Z
    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 954
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 960
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 962
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 964
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 965
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 966
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    if-eqz v94, :cond_26

    .line 968
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 969
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 974
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 957
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_25
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_25

    .line 972
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 978
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    .line 981
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 987
    :goto_27
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/Intent;

    .line 989
    .local v20, "_arg1":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    .line 991
    .restart local v21    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    .line 992
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    .line 998
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1000
    .restart local v11    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1002
    .local v24, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "_arg6":I
    move-object/from16 v18, p0

    move-object/from16 v23, v11

    .line 1003
    invoke-virtual/range {v18 .. v25}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1004
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    if-eqz v94, :cond_29

    .line 1006
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1012
    :goto_29
    const/4 v6, 0x1

    return v6

    .line 984
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg1":[Landroid/content/Intent;
    .end local v21    # "_arg2":[Ljava/lang/String;
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_27
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_27

    .line 995
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    .restart local v20    # "_arg1":[Landroid/content/Intent;
    .restart local v21    # "_arg2":[Ljava/lang/String;
    :cond_28
    const/16 v22, 0x0

    .local v22, "_arg3":Landroid/content/Intent;
    goto :goto_28

    .line 1010
    .end local v22    # "_arg3":Landroid/content/Intent;
    .restart local v11    # "_arg4":Ljava/lang/String;
    .restart local v24    # "_arg5":I
    .restart local v25    # "_arg6":I
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_29
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 1016
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg1":[Landroid/content/Intent;
    .end local v21    # "_arg2":[Ljava/lang/String;
    .end local v24    # "_arg5":I
    .end local v25    # "_arg6":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    .line 1019
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 1025
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1027
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1029
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1030
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1031
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    if-eqz v94, :cond_2b

    .line 1033
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1039
    :goto_2b
    const/4 v6, 0x1

    return v6

    .line 1022
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_2a
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_2a

    .line 1037
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 1043
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    .line 1046
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 1052
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1054
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1056
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1057
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v98

    .line 1058
    .restart local v98    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    if-eqz v98, :cond_2d

    .line 1060
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1066
    :goto_2d
    const/4 v6, 0x1

    return v6

    .line 1049
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2c
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_2c

    .line 1064
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 1070
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    .line 1073
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 1079
    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1081
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1083
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1084
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1085
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    if-eqz v94, :cond_2f

    .line 1087
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1088
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1093
    :goto_2f
    const/4 v6, 0x1

    return v6

    .line 1076
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_2e
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_2e

    .line 1091
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_2f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    .line 1097
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 1100
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 1106
    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1108
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1110
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1111
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1112
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    if-eqz v94, :cond_31

    .line 1114
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1120
    :goto_31
    const/4 v6, 0x1

    return v6

    .line 1103
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_30
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_30

    .line 1118
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_arg3":I
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_31
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 1124
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1128
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1129
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1130
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    if-eqz v94, :cond_32

    .line 1132
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1133
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1138
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 1136
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1142
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v64

    .line 1146
    .restart local v64    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1148
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1149
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1150
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    if-eqz v94, :cond_33

    .line 1152
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1158
    :goto_33
    const/4 v6, 0x1

    return v6

    .line 1156
    :cond_33
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 1162
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v64    # "_arg0":[Ljava/lang/String;
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1166
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1167
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1168
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1169
    if-eqz v94, :cond_34

    .line 1170
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1176
    :goto_34
    const/4 v6, 0x1

    return v6

    .line 1174
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    .line 1180
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1183
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1184
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    if-eqz v94, :cond_35

    .line 1186
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1192
    :goto_35
    const/4 v6, 0x1

    return v6

    .line 1190
    :cond_35
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    .line 1196
    .end local v55    # "_arg0":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1200
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1202
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1203
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v97

    .line 1204
    .restart local v97    # "_result":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    if-eqz v97, :cond_36

    .line 1206
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1212
    :goto_36
    const/4 v6, 0x1

    return v6

    .line 1210
    :cond_36
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 1216
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v97    # "_result":Landroid/content/pm/ProviderInfo;
    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 1220
    .local v48, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v74

    .line 1221
    .local v74, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v74

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 1222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1223
    move-object/from16 v0, p3

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1224
    move-object/from16 v0, p3

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1225
    const/4 v6, 0x1

    return v6

    .line 1229
    .end local v48    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v74    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1233
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1235
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1236
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1237
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    if-eqz v94, :cond_37

    .line 1239
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1245
    :goto_37
    const/4 v6, 0x1

    return v6

    .line 1243
    :cond_37
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 1249
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    .line 1252
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 1258
    :goto_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1259
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v90

    .line 1260
    .local v90, "_result":Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    if-eqz v90, :cond_39

    .line 1262
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v6, 0x1

    move-object/from16 v0, v90

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1268
    :goto_39
    const/4 v6, 0x1

    return v6

    .line 1255
    .end local v40    # "_arg1":I
    .end local v90    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_38
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_38

    .line 1266
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    .restart local v40    # "_arg1":I
    .restart local v90    # "_result":Landroid/content/pm/InstrumentationInfo;
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 1272
    .end local v40    # "_arg1":I
    .end local v90    # "_result":Landroid/content/pm/InstrumentationInfo;
    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1276
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1277
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1278
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    if-eqz v94, :cond_3a

    .line 1280
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1286
    :goto_3a
    const/4 v6, 0x1

    return v6

    .line 1284
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 1290
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1294
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v28

    .line 1296
    .local v28, "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1298
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1300
    .local v30, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg4":I
    move-object/from16 v26, p0

    move-object/from16 v27, v13

    move/from16 v29, v9

    move/from16 v31, v17

    .line 1301
    invoke-virtual/range {v26 .. v31}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    const/4 v6, 0x1

    return v6

    .line 1307
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v28    # "_arg1":Landroid/content/pm/IPackageInstallObserver2;
    .end local v30    # "_arg3":Ljava/lang/String;
    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1311
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v8, 0x1

    .line 1312
    .local v8, "_arg1":Z
    :goto_3b
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    .line 1313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    const/4 v6, 0x1

    return v6

    .line 1311
    .end local v8    # "_arg1":Z
    :cond_3b
    const/4 v8, 0x0

    goto :goto_3b

    .line 1318
    .end local v55    # "_arg0":I
    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1322
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1323
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    const/4 v6, 0x1

    return v6

    .line 1329
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1333
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v71

    .line 1335
    .local v71, "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1337
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1338
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 1339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    const/4 v6, 0x1

    return v6

    .line 1344
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v71    # "_arg1":Landroid/content/pm/IPackageDeleteObserver;
    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1348
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v70

    .line 1350
    .local v70, "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1352
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1353
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 1354
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    const/4 v6, 0x1

    return v6

    .line 1359
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v70    # "_arg1":Landroid/content/pm/IPackageDeleteObserver2;
    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1361
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1362
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v102

    .line 1363
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1365
    const/4 v6, 0x1

    return v6

    .line 1369
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1372
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v6, 0x1

    return v6

    .line 1378
    .end local v55    # "_arg0":I
    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    .line 1381
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 1387
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1389
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1390
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v98

    .line 1391
    .restart local v98    # "_result":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    if-eqz v98, :cond_3d

    .line 1393
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1399
    :goto_3d
    const/4 v6, 0x1

    return v6

    .line 1384
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_3c
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_3c

    .line 1397
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    .restart local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :cond_3d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 1403
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v98    # "_result":Landroid/content/pm/ResolveInfo;
    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 1406
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/Intent;

    .line 1412
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1414
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1416
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    .line 1417
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 1423
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1425
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    .line 1426
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/ComponentName;

    :goto_40
    move-object/from16 v31, p0

    move-object/from16 v33, v14

    move/from16 v34, v9

    move/from16 v36, v17

    .line 1431
    invoke-virtual/range {v31 .. v37}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 1432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    const/4 v6, 0x1

    return v6

    .line 1409
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg4":I
    :cond_3e
    const/16 v32, 0x0

    .restart local v32    # "_arg0":Landroid/content/Intent;
    goto :goto_3e

    .line 1420
    .end local v32    # "_arg0":Landroid/content/Intent;
    .restart local v9    # "_arg2":I
    .restart local v14    # "_arg1":Ljava/lang/String;
    :cond_3f
    const/16 v35, 0x0

    .local v35, "_arg3":Landroid/content/IntentFilter;
    goto :goto_3f

    .line 1429
    .end local v35    # "_arg3":Landroid/content/IntentFilter;
    .restart local v17    # "_arg4":I
    :cond_40
    const/16 v37, 0x0

    .local v37, "_arg5":Landroid/content/ComponentName;
    goto :goto_40

    .line 1437
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v37    # "_arg5":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    .line 1440
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/IntentFilter;

    .line 1446
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1448
    .restart local v40    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/content/ComponentName;

    .line 1450
    .local v41, "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    .line 1451
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/ComponentName;

    .line 1457
    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg4":I
    move-object/from16 v38, p0

    move/from16 v43, v17

    .line 1458
    invoke-virtual/range {v38 .. v43}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v6, 0x1

    return v6

    .line 1443
    .end local v17    # "_arg4":I
    .end local v40    # "_arg1":I
    .end local v41    # "_arg2":[Landroid/content/ComponentName;
    :cond_41
    const/16 v39, 0x0

    .local v39, "_arg0":Landroid/content/IntentFilter;
    goto :goto_41

    .line 1454
    .end local v39    # "_arg0":Landroid/content/IntentFilter;
    .restart local v40    # "_arg1":I
    .restart local v41    # "_arg2":[Landroid/content/ComponentName;
    :cond_42
    const/16 v42, 0x0

    .local v42, "_arg3":Landroid/content/ComponentName;
    goto :goto_42

    .line 1464
    .end local v40    # "_arg1":I
    .end local v41    # "_arg2":[Landroid/content/ComponentName;
    .end local v42    # "_arg3":Landroid/content/ComponentName;
    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1467
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/IntentFilter;

    .line 1473
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1475
    .restart local v40    # "_arg1":I
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/content/ComponentName;

    .line 1477
    .restart local v41    # "_arg2":[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    .line 1478
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/ComponentName;

    .line 1484
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg4":I
    move-object/from16 v38, p0

    move/from16 v43, v17

    .line 1485
    invoke-virtual/range {v38 .. v43}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1487
    const/4 v6, 0x1

    return v6

    .line 1470
    .end local v17    # "_arg4":I
    .end local v40    # "_arg1":I
    .end local v41    # "_arg2":[Landroid/content/ComponentName;
    :cond_43
    const/16 v39, 0x0

    .restart local v39    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_43

    .line 1481
    .end local v39    # "_arg0":Landroid/content/IntentFilter;
    .restart local v40    # "_arg1":I
    .restart local v41    # "_arg2":[Landroid/content/ComponentName;
    :cond_44
    const/16 v42, 0x0

    .restart local v42    # "_arg3":Landroid/content/ComponentName;
    goto :goto_44

    .line 1491
    .end local v40    # "_arg1":I
    .end local v41    # "_arg2":[Landroid/content/ComponentName;
    .end local v42    # "_arg3":Landroid/content/ComponentName;
    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1494
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    const/4 v6, 0x1

    return v6

    .line 1500
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1502
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1504
    .local v61, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v73, Ljava/util/ArrayList;

    invoke-direct/range {v73 .. v73}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v73, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1507
    .restart local v46    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v73

    move-object/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v85

    .line 1508
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    move-object/from16 v0, p3

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1511
    move-object/from16 v0, p3

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1512
    const/4 v6, 0x1

    return v6

    .line 1516
    .end local v46    # "_arg2":Ljava/lang/String;
    .end local v61    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v73    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v85    # "_result":I
    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    .line 1519
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/IntentFilter;

    .line 1525
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    .line 1526
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/content/ComponentName;

    .line 1532
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1533
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 1534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    const/4 v6, 0x1

    return v6

    .line 1522
    .end local v9    # "_arg2":I
    :cond_45
    const/16 v39, 0x0

    .restart local v39    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_45

    .line 1529
    .end local v39    # "_arg0":Landroid/content/IntentFilter;
    :cond_46
    const/16 v65, 0x0

    .local v65, "_arg1":Landroid/content/ComponentName;
    goto :goto_46

    .line 1539
    .end local v65    # "_arg1":Landroid/content/ComponentName;
    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1543
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1544
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    const/4 v6, 0x1

    return v6

    .line 1550
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    .line 1553
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/IntentFilter;

    .line 1559
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1561
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1563
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1565
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg4":I
    move-object/from16 v43, p0

    move-object/from16 v44, v39

    move-object/from16 v45, v14

    move/from16 v46, v9

    move/from16 v47, v16

    move/from16 v48, v17

    .line 1566
    invoke-virtual/range {v43 .. v48}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 1567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    const/4 v6, 0x1

    return v6

    .line 1556
    .end local v9    # "_arg2":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    :cond_47
    const/16 v39, 0x0

    .restart local v39    # "_arg0":Landroid/content/IntentFilter;
    goto :goto_47

    .line 1572
    .end local v39    # "_arg0":Landroid/content/IntentFilter;
    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1576
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1577
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 1578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    const/4 v6, 0x1

    return v6

    .line 1583
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v55    # "_arg0":I
    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v64

    .line 1587
    .restart local v64    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/4 v8, 0x1

    .line 1589
    .local v8, "_arg1":Z
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1590
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object v107

    .line 1591
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1593
    const/4 v6, 0x1

    return v6

    .line 1587
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v107    # "_result":[Ljava/lang/String;
    :cond_48
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_48

    .line 1597
    .end local v8    # "_arg1":Z
    .end local v64    # "_arg0":[Ljava/lang/String;
    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1601
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1602
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v104

    .line 1603
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    if-eqz v104, :cond_49

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    const/4 v6, 0x1

    return v6

    .line 1604
    :cond_49
    const/4 v6, 0x0

    goto :goto_49

    .line 1609
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1612
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v105

    .line 1613
    .restart local v105    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1614
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1615
    const/4 v6, 0x1

    return v6

    .line 1619
    .end local v55    # "_arg0":I
    .end local v105    # "_result":[B
    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v63

    .line 1623
    .local v63, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1624
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 1625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    const/4 v6, 0x1

    return v6

    .line 1630
    .end local v40    # "_arg1":I
    .end local v63    # "_arg0":[B
    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1633
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v105

    .line 1634
    .restart local v105    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1636
    const/4 v6, 0x1

    return v6

    .line 1640
    .end local v55    # "_arg0":I
    .end local v105    # "_result":[B
    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v63

    .line 1644
    .restart local v63    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1645
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 1646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1647
    const/4 v6, 0x1

    return v6

    .line 1651
    .end local v40    # "_arg1":I
    .end local v63    # "_arg0":[B
    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1654
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v105

    .line 1655
    .restart local v105    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1657
    const/4 v6, 0x1

    return v6

    .line 1661
    .end local v55    # "_arg0":I
    .end local v105    # "_result":[B
    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v63

    .line 1665
    .restart local v63    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1666
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    .line 1667
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    const/4 v6, 0x1

    return v6

    .line 1672
    .end local v40    # "_arg1":I
    .end local v63    # "_arg0":[B
    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1675
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGrantBackup(I)[B

    move-result-object v105

    .line 1676
    .restart local v105    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1677
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1678
    const/4 v6, 0x1

    return v6

    .line 1682
    .end local v55    # "_arg0":I
    .end local v105    # "_result":[B
    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v63

    .line 1686
    .restart local v63    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1687
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePermissionGrants([BI)V

    .line 1688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    const/4 v6, 0x1

    return v6

    .line 1693
    .end local v40    # "_arg1":I
    .end local v63    # "_arg0":[B
    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    new-instance v62, Ljava/util/ArrayList;

    invoke-direct/range {v62 .. v62}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    .local v62, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v86

    .line 1697
    .local v86, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    if-eqz v86, :cond_4a

    .line 1699
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    const/4 v6, 0x1

    move-object/from16 v0, v86

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1705
    :goto_4a
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1706
    const/4 v6, 0x1

    return v6

    .line 1703
    :cond_4a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 1710
    .end local v62    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v86    # "_result":Landroid/content/ComponentName;
    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    .line 1713
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 1719
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1720
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 1721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    const/4 v6, 0x1

    return v6

    .line 1716
    .end local v40    # "_arg1":I
    :cond_4b
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4b

    .line 1726
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    .line 1729
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 1735
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1737
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1739
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1740
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1742
    const/4 v6, 0x1

    return v6

    .line 1732
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v40    # "_arg1":I
    :cond_4c
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    .line 1746
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 1749
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    .line 1755
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1756
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v85

    .line 1757
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1758
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    const/4 v6, 0x1

    return v6

    .line 1752
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :cond_4d
    const/16 v19, 0x0

    .restart local v19    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4d

    .line 1763
    .end local v19    # "_arg0":Landroid/content/ComponentName;
    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1767
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1769
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1771
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1773
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "_arg4":Ljava/lang/String;
    move-object/from16 v43, p0

    move-object/from16 v44, v13

    move/from16 v45, v40

    move/from16 v46, v9

    move/from16 v47, v16

    move-object/from16 v48, v11

    .line 1774
    invoke-virtual/range {v43 .. v48}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    const/4 v6, 0x1

    return v6

    .line 1780
    .end local v9    # "_arg2":I
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v40    # "_arg1":I
    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1784
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1785
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v85

    .line 1786
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1787
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1788
    const/4 v6, 0x1

    return v6

    .line 1792
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1794
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1796
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1798
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 1800
    .restart local v46    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1802
    .restart local v30    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "_arg4":I
    move-object/from16 v43, p0

    move-object/from16 v44, v13

    move/from16 v45, v40

    move-object/from16 v47, v30

    move/from16 v48, v17

    .line 1803
    invoke-virtual/range {v43 .. v48}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1805
    const/4 v6, 0x1

    return v6

    .line 1809
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v30    # "_arg3":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v46    # "_arg2":Ljava/lang/String;
    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 1812
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    .line 1813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    const/4 v6, 0x1

    return v6

    .line 1818
    .end local v55    # "_arg0":I
    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1822
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v8, 0x1

    .line 1824
    .restart local v8    # "_arg1":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1825
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1827
    const/4 v6, 0x1

    return v6

    .line 1822
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    :cond_4e
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_4e

    .line 1831
    .end local v8    # "_arg1":Z
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1835
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v66

    .line 1837
    .local v66, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v81

    .line 1838
    .local v81, "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    move-object/from16 v3, v81

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    const/4 v6, 0x1

    return v6

    .line 1844
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v66    # "_arg1":J
    .end local v81    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1848
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v66

    .line 1850
    .restart local v66    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    .line 1851
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/content/IntentSender;

    .line 1856
    :goto_4f
    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    move-object/from16 v3, v77

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    .line 1857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    const/4 v6, 0x1

    return v6

    .line 1854
    :cond_4f
    const/16 v77, 0x0

    .local v77, "_arg2":Landroid/content/IntentSender;
    goto :goto_4f

    .line 1862
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v66    # "_arg1":J
    .end local v77    # "_arg2":Landroid/content/IntentSender;
    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1866
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v69

    .line 1867
    .local v69, "_arg1":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 1868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1869
    const/4 v6, 0x1

    return v6

    .line 1873
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v69    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1877
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1879
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v81

    .line 1880
    .restart local v81    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v81

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 1881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1882
    const/4 v6, 0x1

    return v6

    .line 1886
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v81    # "_arg2":Landroid/content/pm/IPackageDataObserver;
    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1890
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v69

    .line 1892
    .restart local v69    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1893
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    const/4 v6, 0x1

    return v6

    .line 1899
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v69    # "_arg1":Landroid/content/pm/IPackageDataObserver;
    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1902
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 1903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    const/4 v6, 0x1

    return v6

    .line 1908
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1912
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1914
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v82

    .line 1915
    .local v82, "_arg2":Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v82

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 1916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1917
    const/4 v6, 0x1

    return v6

    .line 1921
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v82    # "_arg2":Landroid/content/pm/IPackageStatsObserver;
    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v107

    .line 1923
    .restart local v107    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move-object/from16 v0, p3

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1925
    const/4 v6, 0x1

    return v6

    .line 1929
    .end local v107    # "_result":[Ljava/lang/String;
    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 1931
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    if-eqz v94, :cond_50

    .line 1933
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1939
    :goto_50
    const/4 v6, 0x1

    return v6

    .line 1937
    :cond_50
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    .line 1943
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1947
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1948
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v104

    .line 1949
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    if-eqz v104, :cond_51

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    const/4 v6, 0x1

    return v6

    .line 1950
    :cond_51
    const/4 v6, 0x0

    goto :goto_51

    .line 1955
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1958
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v85

    .line 1959
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1961
    const/4 v6, 0x1

    return v6

    .line 1965
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1966
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 1967
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    const/4 v6, 0x1

    return v6

    .line 1972
    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v104

    .line 1974
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    if-eqz v104, :cond_52

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1976
    const/4 v6, 0x1

    return v6

    .line 1975
    :cond_52
    const/4 v6, 0x0

    goto :goto_52

    .line 1980
    .end local v104    # "_result":Z
    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 1982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1983
    const/4 v6, 0x1

    return v6

    .line 1987
    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v104

    .line 1989
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    if-eqz v104, :cond_53

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1991
    const/4 v6, 0x1

    return v6

    .line 1990
    :cond_53
    const/4 v6, 0x0

    goto :goto_53

    .line 1995
    .end local v104    # "_result":Z
    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1999
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2001
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2002
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v104

    .line 2003
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2004
    if-eqz v104, :cond_54

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    const/4 v6, 0x1

    return v6

    .line 2004
    :cond_54
    const/4 v6, 0x0

    goto :goto_54

    .line 2009
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2013
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2015
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 2017
    .restart local v46    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 2018
    .restart local v16    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v104

    .line 2019
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    if-eqz v104, :cond_55

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2021
    const/4 v6, 0x1

    return v6

    .line 2020
    :cond_55
    const/4 v6, 0x0

    goto :goto_55

    .line 2025
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v46    # "_arg2":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2026
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->updatePackagesIfNeeded()V

    .line 2027
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2028
    const/4 v6, 0x1

    return v6

    .line 2032
    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2036
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2037
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    .line 2038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    const/4 v6, 0x1

    return v6

    .line 2043
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2045
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2046
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->performDexOptIfNeeded(Ljava/lang/String;)Z

    move-result v104

    .line 2047
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    if-eqz v104, :cond_56

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    const/4 v6, 0x1

    return v6

    .line 2048
    :cond_56
    const/4 v6, 0x0

    goto :goto_56

    .line 2053
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2057
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    const/4 v8, 0x1

    .line 2059
    .restart local v8    # "_arg1":Z
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2061
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v51, 0x1

    .line 2062
    .local v51, "_arg3":Z
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v13, v8, v9, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v104

    .line 2063
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    if-eqz v104, :cond_59

    const/4 v6, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2065
    const/4 v6, 0x1

    return v6

    .line 2057
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v51    # "_arg3":Z
    .end local v104    # "_result":Z
    :cond_57
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_57

    .line 2061
    .restart local v9    # "_arg2":I
    :cond_58
    const/16 v51, 0x0

    goto :goto_58

    .line 2064
    .restart local v51    # "_arg3":Z
    .restart local v104    # "_result":Z
    :cond_59
    const/4 v6, 0x0

    goto :goto_59

    .line 2069
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v51    # "_arg3":Z
    .end local v104    # "_result":Z
    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2073
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v8, 0x1

    .line 2075
    .restart local v8    # "_arg1":Z
    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 2077
    .restart local v46    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    const/16 v51, 0x1

    .line 2078
    .restart local v51    # "_arg3":Z
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v51

    invoke-virtual {v0, v13, v8, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v104

    .line 2079
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2080
    if-eqz v104, :cond_5c

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    const/4 v6, 0x1

    return v6

    .line 2073
    .end local v8    # "_arg1":Z
    .end local v46    # "_arg2":Ljava/lang/String;
    .end local v51    # "_arg3":Z
    .end local v104    # "_result":Z
    :cond_5a
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_5a

    .line 2077
    .restart local v46    # "_arg2":Ljava/lang/String;
    :cond_5b
    const/16 v51, 0x0

    goto :goto_5b

    .line 2080
    .restart local v51    # "_arg3":Z
    .restart local v104    # "_result":Z
    :cond_5c
    const/4 v6, 0x0

    goto :goto_5c

    .line 2085
    .end local v8    # "_arg1":Z
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v46    # "_arg2":Ljava/lang/String;
    .end local v51    # "_arg3":Z
    .end local v104    # "_result":Z
    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2088
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->dumpProfiles(Ljava/lang/String;)V

    .line 2089
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2090
    const/4 v6, 0x1

    return v6

    .line 2094
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2097
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    .line 2098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2099
    const/4 v6, 0x1

    return v6

    .line 2103
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    const/4 v7, 0x1

    .line 2107
    .restart local v7    # "_arg0":Z
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5e

    const/4 v8, 0x1

    .line 2108
    .local v8, "_arg1":Z
    :goto_5e
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 2109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    const/4 v6, 0x1

    return v6

    .line 2105
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    :cond_5d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_5d

    .line 2107
    :cond_5e
    const/4 v8, 0x0

    goto :goto_5e

    .line 2114
    .end local v7    # "_arg0":Z
    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    .line 2117
    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/content/pm/PackageCleanItem;

    .line 2122
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v92

    .line 2123
    .local v92, "_result":Landroid/content/pm/PackageCleanItem;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    if-eqz v92, :cond_60

    .line 2125
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    const/4 v6, 0x1

    move-object/from16 v0, v92

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2131
    :goto_60
    const/4 v6, 0x1

    return v6

    .line 2120
    .end local v92    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_5f
    const/16 v58, 0x0

    .local v58, "_arg0":Landroid/content/pm/PackageCleanItem;
    goto :goto_5f

    .line 2129
    .end local v58    # "_arg0":Landroid/content/pm/PackageCleanItem;
    .restart local v92    # "_result":Landroid/content/pm/PackageCleanItem;
    :cond_60
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_60

    .line 2135
    .end local v92    # "_result":Landroid/content/pm/PackageCleanItem;
    :sswitch_91
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2138
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v85

    .line 2139
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    const/4 v6, 0x1

    return v6

    .line 2145
    .end local v55    # "_arg0":I
    .end local v85    # "_result":I
    :sswitch_92
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v57

    .line 2148
    .local v57, "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 2149
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    const/4 v6, 0x1

    return v6

    .line 2154
    .end local v57    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_93
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v57

    .line 2157
    .restart local v57    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 2158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    const/4 v6, 0x1

    return v6

    .line 2163
    .end local v57    # "_arg0":Landroid/content/pm/IPackageMoveObserver;
    :sswitch_94
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2167
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2168
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v85

    .line 2169
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2171
    const/4 v6, 0x1

    return v6

    .line 2175
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_95
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2178
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v85

    .line 2179
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2181
    const/4 v6, 0x1

    return v6

    .line 2185
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_96
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    .line 2188
    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/pm/PermissionInfo;

    .line 2193
    :goto_61
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v104

    .line 2194
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2195
    if-eqz v104, :cond_62

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2196
    const/4 v6, 0x1

    return v6

    .line 2191
    .end local v104    # "_result":Z
    :cond_61
    const/16 v59, 0x0

    .restart local v59    # "_arg0":Landroid/content/pm/PermissionInfo;
    goto :goto_61

    .line 2195
    .end local v59    # "_arg0":Landroid/content/pm/PermissionInfo;
    .restart local v104    # "_result":Z
    :cond_62
    const/4 v6, 0x0

    goto :goto_62

    .line 2200
    .end local v104    # "_result":Z
    :sswitch_97
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2203
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v104

    .line 2204
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2205
    if-eqz v104, :cond_63

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    const/4 v6, 0x1

    return v6

    .line 2205
    :cond_63
    const/4 v6, 0x0

    goto :goto_63

    .line 2210
    .end local v55    # "_arg0":I
    .end local v104    # "_result":Z
    :sswitch_98
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v85

    .line 2212
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    const/4 v6, 0x1

    return v6

    .line 2218
    .end local v85    # "_result":I
    :sswitch_99
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2222
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2223
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v85

    .line 2224
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2225
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2226
    const/4 v6, 0x1

    return v6

    .line 2230
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :sswitch_9a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2234
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2235
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 2236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2237
    const/4 v6, 0x1

    return v6

    .line 2241
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    :sswitch_9b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2245
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2247
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v78

    .line 2248
    .local v78, "_arg2":J
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    move-wide/from16 v3, v78

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 2249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    const/4 v6, 0x1

    return v6

    .line 2254
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    .end local v78    # "_arg2":J
    :sswitch_9c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2258
    .restart local v55    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2260
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v83

    .line 2261
    .local v83, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v40

    move-object/from16 v3, v83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 2262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    const/4 v6, 0x1

    return v6

    .line 2267
    .end local v40    # "_arg1":I
    .end local v55    # "_arg0":I
    .end local v83    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_9d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2271
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2272
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v85

    .line 2273
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2274
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    const/4 v6, 0x1

    return v6

    .line 2279
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :sswitch_9e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2283
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2285
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2286
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v104

    .line 2287
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    if-eqz v104, :cond_64

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2289
    const/4 v6, 0x1

    return v6

    .line 2288
    :cond_64
    const/4 v6, 0x0

    goto :goto_64

    .line 2293
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_9f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2296
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 2297
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2298
    if-eqz v94, :cond_65

    .line 2299
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2305
    :goto_65
    const/4 v6, 0x1

    return v6

    .line 2303
    :cond_65
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65

    .line 2309
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2312
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 2313
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    if-eqz v94, :cond_66

    .line 2315
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2321
    :goto_66
    const/4 v6, 0x1

    return v6

    .line 2319
    :cond_66
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_66

    .line 2325
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_a1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2329
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2330
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v104

    .line 2331
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2332
    if-eqz v104, :cond_67

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2333
    const/4 v6, 0x1

    return v6

    .line 2332
    :cond_67
    const/4 v6, 0x0

    goto :goto_67

    .line 2337
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_a2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2340
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v102

    .line 2341
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2342
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2343
    const/4 v6, 0x1

    return v6

    .line 2347
    .end local v55    # "_arg0":I
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_a3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2348
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v100

    .line 2349
    .local v100, "_result":Landroid/content/pm/VerifierDeviceIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    if-eqz v100, :cond_68

    .line 2351
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2352
    const/4 v6, 0x1

    move-object/from16 v0, v100

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2357
    :goto_68
    const/4 v6, 0x1

    return v6

    .line 2355
    :cond_68
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    .line 2361
    .end local v100    # "_result":Landroid/content/pm/VerifierDeviceIdentity;
    :sswitch_a4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2362
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v104

    .line 2363
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    if-eqz v104, :cond_69

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2365
    const/4 v6, 0x1

    return v6

    .line 2364
    :cond_69
    const/4 v6, 0x0

    goto :goto_69

    .line 2369
    .end local v104    # "_result":Z
    :sswitch_a5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2370
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v104

    .line 2371
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2372
    if-eqz v104, :cond_6a

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    const/4 v6, 0x1

    return v6

    .line 2372
    :cond_6a
    const/4 v6, 0x0

    goto :goto_6a

    .line 2377
    .end local v104    # "_result":Z
    :sswitch_a6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2378
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v104

    .line 2379
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2380
    if-eqz v104, :cond_6b

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2381
    const/4 v6, 0x1

    return v6

    .line 2380
    :cond_6b
    const/4 v6, 0x0

    goto :goto_6b

    .line 2385
    .end local v104    # "_result":Z
    :sswitch_a7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2389
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/4 v8, 0x1

    .line 2390
    .restart local v8    # "_arg1":Z
    :goto_6c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 2391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2392
    const/4 v6, 0x1

    return v6

    .line 2389
    .end local v8    # "_arg1":Z
    :cond_6c
    const/4 v8, 0x0

    goto :goto_6c

    .line 2396
    .end local v13    # "_arg0":Ljava/lang/String;
    :sswitch_a8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2399
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v104

    .line 2400
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2401
    if-eqz v104, :cond_6d

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2402
    const/4 v6, 0x1

    return v6

    .line 2401
    :cond_6d
    const/4 v6, 0x0

    goto :goto_6d

    .line 2406
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_a9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e

    .line 2409
    sget-object v6, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/pm/ResolveInfo;

    .line 2415
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v75

    .line 2416
    .restart local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v75

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v85

    .line 2417
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2418
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2419
    const/4 v6, 0x1

    return v6

    .line 2412
    .end local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v85    # "_result":I
    :cond_6e
    const/16 v60, 0x0

    .local v60, "_arg0":Landroid/content/pm/ResolveInfo;
    goto :goto_6e

    .line 2423
    .end local v60    # "_arg0":Landroid/content/pm/ResolveInfo;
    :sswitch_aa
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2426
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->setLicensePermissions(Ljava/lang/String;)I

    move-result v85

    .line 2427
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2429
    const/4 v6, 0x1

    return v6

    .line 2433
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v85    # "_result":I
    :sswitch_ab
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2437
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v75

    .line 2439
    .restart local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    const/16 v84, 0x1

    .line 2440
    .local v84, "_arg2":Z
    :goto_6f
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v84

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v103

    .line 2441
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2442
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2443
    const/4 v6, 0x1

    return v6

    .line 2439
    .end local v84    # "_arg2":Z
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6f
    const/16 v84, 0x0

    goto :goto_6f

    .line 2447
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ac
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2451
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v75

    .line 2453
    .restart local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    const/16 v84, 0x1

    .line 2454
    .restart local v84    # "_arg2":Z
    :goto_70
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move/from16 v2, v84

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v103

    .line 2455
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2456
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2457
    const/4 v6, 0x1

    return v6

    .line 2453
    .end local v84    # "_arg2":Z
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_70
    const/16 v84, 0x0

    goto :goto_70

    .line 2461
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ad
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2464
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v103

    .line 2465
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2466
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2467
    const/4 v6, 0x1

    return v6

    .line 2471
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ae
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2475
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2476
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v85

    .line 2477
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    const/4 v6, 0x1

    return v6

    .line 2483
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v85    # "_result":I
    :sswitch_af
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2487
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2488
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V

    .line 2489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2490
    const/4 v6, 0x1

    return v6

    .line 2494
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    :sswitch_b0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2495
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v104

    .line 2496
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    if-eqz v104, :cond_71

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2498
    const/4 v6, 0x1

    return v6

    .line 2497
    :cond_71
    const/4 v6, 0x0

    goto :goto_71

    .line 2502
    .end local v104    # "_result":Z
    :sswitch_b1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2506
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    const/4 v8, 0x1

    .line 2508
    .local v8, "_arg1":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2509
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v104

    .line 2510
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    if-eqz v104, :cond_73

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2512
    const/4 v6, 0x1

    return v6

    .line 2506
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v104    # "_result":Z
    :cond_72
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_72

    .line 2511
    .restart local v9    # "_arg2":I
    .restart local v104    # "_result":Z
    :cond_73
    const/4 v6, 0x0

    goto :goto_73

    .line 2516
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_b2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2520
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2521
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v104

    .line 2522
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2523
    if-eqz v104, :cond_74

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2524
    const/4 v6, 0x1

    return v6

    .line 2523
    :cond_74
    const/4 v6, 0x0

    goto :goto_74

    .line 2528
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_b3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2529
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v89

    .line 2530
    .local v89, "_result":Landroid/content/pm/IPackageInstaller;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2531
    if-eqz v89, :cond_75

    invoke-interface/range {v89 .. v89}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2532
    const/4 v6, 0x1

    return v6

    .line 2531
    :cond_75
    const/4 v6, 0x0

    goto :goto_75

    .line 2536
    .end local v89    # "_result":Landroid/content/pm/IPackageInstaller;
    :sswitch_b4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2540
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/4 v8, 0x1

    .line 2542
    .restart local v8    # "_arg1":Z
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2543
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v104

    .line 2544
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2545
    if-eqz v104, :cond_77

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    const/4 v6, 0x1

    return v6

    .line 2540
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v104    # "_result":Z
    :cond_76
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Z
    goto :goto_76

    .line 2545
    .restart local v9    # "_arg2":I
    .restart local v104    # "_result":Z
    :cond_77
    const/4 v6, 0x0

    goto :goto_77

    .line 2550
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_b5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2554
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2555
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v104

    .line 2556
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    if-eqz v104, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2558
    const/4 v6, 0x1

    return v6

    .line 2557
    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    .line 2562
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_b6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2566
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2567
    .restart local v14    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v91

    .line 2568
    .local v91, "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2569
    if-eqz v91, :cond_79

    .line 2570
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    const/4 v6, 0x1

    move-object/from16 v0, v91

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2576
    :goto_79
    const/4 v6, 0x1

    return v6

    .line 2574
    :cond_79
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_79

    .line 2580
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v91    # "_result":Landroid/content/pm/KeySet;
    :sswitch_b7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2583
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v91

    .line 2584
    .restart local v91    # "_result":Landroid/content/pm/KeySet;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    if-eqz v91, :cond_7a

    .line 2586
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2587
    const/4 v6, 0x1

    move-object/from16 v0, v91

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2592
    :goto_7a
    const/4 v6, 0x1

    return v6

    .line 2590
    :cond_7a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a

    .line 2596
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v91    # "_result":Landroid/content/pm/KeySet;
    :sswitch_b8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2600
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7b

    .line 2601
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/KeySet;

    .line 2606
    :goto_7b
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v104

    .line 2607
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2608
    if-eqz v104, :cond_7c

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2609
    const/4 v6, 0x1

    return v6

    .line 2604
    .end local v104    # "_result":Z
    :cond_7b
    const/16 v72, 0x0

    .local v72, "_arg1":Landroid/content/pm/KeySet;
    goto :goto_7b

    .line 2608
    .end local v72    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v104    # "_result":Z
    :cond_7c
    const/4 v6, 0x0

    goto :goto_7c

    .line 2613
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_b9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2617
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7d

    .line 2618
    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Landroid/content/pm/KeySet;

    .line 2623
    :goto_7d
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v104

    .line 2624
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2625
    if-eqz v104, :cond_7e

    const/4 v6, 0x1

    :goto_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2626
    const/4 v6, 0x1

    return v6

    .line 2621
    .end local v104    # "_result":Z
    :cond_7d
    const/16 v72, 0x0

    .restart local v72    # "_arg1":Landroid/content/pm/KeySet;
    goto :goto_7d

    .line 2625
    .end local v72    # "_arg1":Landroid/content/pm/KeySet;
    .restart local v104    # "_result":Z
    :cond_7e
    const/4 v6, 0x0

    goto :goto_7e

    .line 2630
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_ba
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v56

    .line 2633
    .local v56, "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2635
    const/4 v6, 0x1

    return v6

    .line 2639
    .end local v56    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_bb
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v56

    .line 2642
    .restart local v56    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 2643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2644
    const/4 v6, 0x1

    return v6

    .line 2648
    .end local v56    # "_arg0":Landroid/content/pm/IOnPermissionsChangeListener;
    :sswitch_bc
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v64

    .line 2652
    .restart local v64    # "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2653
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 2654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2655
    const/4 v6, 0x1

    return v6

    .line 2659
    .end local v40    # "_arg1":I
    .end local v64    # "_arg0":[Ljava/lang/String;
    :sswitch_bd
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2663
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2665
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2666
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v104

    .line 2667
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2668
    if-eqz v104, :cond_7f

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    const/4 v6, 0x1

    return v6

    .line 2668
    :cond_7f
    const/4 v6, 0x0

    goto :goto_7f

    .line 2673
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_be
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2677
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 2679
    .restart local v14    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2680
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v104

    .line 2681
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2682
    if-eqz v104, :cond_80

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2683
    const/4 v6, 0x1

    return v6

    .line 2682
    :cond_80
    const/4 v6, 0x0

    goto :goto_80

    .line 2687
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_bf
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2688
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v102

    .line 2689
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2690
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2691
    const/4 v6, 0x1

    return v6

    .line 2695
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_c0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 2698
    .restart local v55    # "_arg0":I
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getEphemeralApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v94

    .line 2699
    .restart local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2700
    if-eqz v94, :cond_81

    .line 2701
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    const/4 v6, 0x1

    move-object/from16 v0, v94

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2707
    :goto_81
    const/4 v6, 0x1

    return v6

    .line 2705
    :cond_81
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_81

    .line 2711
    .end local v55    # "_arg0":I
    .end local v94    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_c1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2715
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2716
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getEphemeralApplicationCookie(Ljava/lang/String;I)[B

    move-result-object v105

    .line 2717
    .restart local v105    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    move-object/from16 v0, p3

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2719
    const/4 v6, 0x1

    return v6

    .line 2723
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v105    # "_result":[B
    :sswitch_c2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2727
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v76

    .line 2729
    .local v76, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2730
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setEphemeralApplicationCookie(Ljava/lang/String;[BI)Z

    move-result v104

    .line 2731
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2732
    if-eqz v104, :cond_82

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2733
    const/4 v6, 0x1

    return v6

    .line 2732
    :cond_82
    const/4 v6, 0x0

    goto :goto_82

    .line 2737
    .end local v9    # "_arg2":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v76    # "_arg1":[B
    .end local v104    # "_result":Z
    :sswitch_c3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2741
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2742
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getEphemeralApplicationIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v101

    .line 2743
    .local v101, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2744
    if-eqz v101, :cond_83

    .line 2745
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2746
    const/4 v6, 0x1

    move-object/from16 v0, v101

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2751
    :goto_83
    const/4 v6, 0x1

    return v6

    .line 2749
    :cond_83
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_83

    .line 2755
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v101    # "_result":Landroid/graphics/Bitmap;
    :sswitch_c4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2757
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2759
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2760
    .restart local v40    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isEphemeralApplication(Ljava/lang/String;I)Z

    move-result v104

    .line 2761
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2762
    if-eqz v104, :cond_84

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2763
    const/4 v6, 0x1

    return v6

    .line 2762
    :cond_84
    const/4 v6, 0x0

    goto :goto_84

    .line 2767
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v40    # "_arg1":I
    .end local v104    # "_result":Z
    :sswitch_c5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2771
    .restart local v13    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    const/4 v8, 0x1

    .line 2772
    .local v8, "_arg1":Z
    :goto_85
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    move-result v104

    .line 2773
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2774
    if-eqz v104, :cond_86

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2775
    const/4 v6, 0x1

    return v6

    .line 2771
    .end local v8    # "_arg1":Z
    .end local v104    # "_result":Z
    :cond_85
    const/4 v8, 0x0

    goto :goto_85

    .line 2774
    .restart local v8    # "_arg1":Z
    .restart local v104    # "_result":Z
    :cond_86
    const/4 v6, 0x0

    goto :goto_86

    .line 2779
    .end local v8    # "_arg1":Z
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_c6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2780
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v102

    .line 2781
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2782
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2783
    const/4 v6, 0x1

    return v6

    .line 2787
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_c7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2788
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v102

    .line 2789
    .restart local v102    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2790
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2791
    const/4 v6, 0x1

    return v6

    .line 2795
    .end local v102    # "_result":Ljava/lang/String;
    :sswitch_c8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2798
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v104

    .line 2799
    .restart local v104    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2800
    if-eqz v104, :cond_87

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    const/4 v6, 0x1

    return v6

    .line 2800
    :cond_87
    const/4 v6, 0x0

    goto :goto_87

    .line 2805
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v104    # "_result":Z
    :sswitch_c9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2808
    .restart local v13    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v103

    .line 2809
    .restart local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2810
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2811
    const/4 v6, 0x1

    return v6

    .line 2815
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v103    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_ca
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 2819
    .restart local v48    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v75

    .line 2821
    .restart local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOverlayCallback;

    move-result-object v80

    .line 2823
    .local v80, "_arg2":Landroid/content/pm/IOverlayCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_88

    const/16 v51, 0x1

    .line 2824
    .restart local v51    # "_arg3":Z
    :goto_88
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v75

    move-object/from16 v3, v80

    move/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->applyOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/pm/IOverlayCallback;Z)V

    .line 2825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2826
    const/4 v6, 0x1

    return v6

    .line 2823
    .end local v51    # "_arg3":Z
    :cond_88
    const/16 v51, 0x0

    goto :goto_88

    .line 2830
    .end local v48    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v75    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v80    # "_arg2":Landroid/content/pm/IOverlayCallback;
    :sswitch_cb
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 2834
    .restart local v48    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 2836
    .restart local v40    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2838
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    const/16 v51, 0x1

    .line 2840
    .local v51, "_arg3":Z
    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8a

    const/16 v52, 0x1

    .line 2842
    .local v52, "_arg4":Z
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 2844
    .restart local v24    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .local v54, "_arg6":Ljava/lang/String;
    move-object/from16 v47, p0

    move/from16 v49, v40

    move/from16 v50, v9

    move/from16 v53, v24

    .line 2845
    invoke-virtual/range {v47 .. v54}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    .line 2846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    const/4 v6, 0x1

    return v6

    .line 2838
    .end local v24    # "_arg5":I
    .end local v51    # "_arg3":Z
    .end local v52    # "_arg4":Z
    .end local v54    # "_arg6":Ljava/lang/String;
    :cond_89
    const/16 v51, 0x0

    .restart local v51    # "_arg3":Z
    goto :goto_89

    .line 2840
    :cond_8a
    const/16 v52, 0x0

    .restart local v52    # "_arg4":Z
    goto :goto_8a

    .line 2851
    .end local v9    # "_arg2":I
    .end local v40    # "_arg1":I
    .end local v48    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v51    # "_arg3":Z
    .end local v52    # "_arg4":Z
    :sswitch_cc
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2852
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getProgressionOfPackageChanged()I

    move-result v85

    .line 2853
    .restart local v85    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2854
    move-object/from16 v0, p3

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2855
    const/4 v6, 0x1

    return v6

    .line 2859
    .end local v85    # "_result":I
    :sswitch_cd
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2860
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->cancelEMPHandlerSendPendingBroadcast()V

    .line 2861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2862
    const/4 v6, 0x1

    return v6

    .line 44
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
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
