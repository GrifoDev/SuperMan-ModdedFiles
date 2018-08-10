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

.field static final TRANSACTION_AASADebug:I = 0x1d

.field static final TRANSACTION_AASAToken_RegisterPackage:I = 0x1e

.field static final TRANSACTION_AASAToken_UnRegisterPackage:I = 0x1f

.field static final TRANSACTION_AASA_AddPackageToDataByService:I = 0x22

.field static final TRANSACTION_AASA_allowByPackage:I = 0x18

.field static final TRANSACTION_AASA_blockByPackage:I = 0x17

.field static final TRANSACTION_AASA_checkRestrictList:I = 0x24

.field static final TRANSACTION_AASA_getSEInfo:I = 0x15

.field static final TRANSACTION_AASA_managedPermissionNew:I = 0x14

.field static final TRANSACTION_AASA_readDataByPackages:I = 0x1c

.field static final TRANSACTION_AASA_readPackagesByType:I = 0x1b

.field static final TRANSACTION_AASA_readUids:I = 0x20

.field static final TRANSACTION_AASA_removePackage:I = 0x1a

.field static final TRANSACTION_AASA_updatePackage:I = 0x19

.field static final TRANSACTION_AASA_updateRestrictList:I = 0x25

.field static final TRANSACTION_ASKS_checkDevice:I = 0x21

.field static final TRANSACTION_ASKS_setMode:I = 0x23

.field static final TRANSACTION_activitySupportsIntent:I = 0xf

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x63

.field static final TRANSACTION_addOnPermissionsChangeListener:I = 0xbf

.field static final TRANSACTION_addPermission:I = 0x27

.field static final TRANSACTION_addPermissionAsync:I = 0x97

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x61

.field static final TRANSACTION_addPreferredActivity:I = 0x5d

.field static final TRANSACTION_applyRuntimePermissions:I = 0x29

.field static final TRANSACTION_applyRuntimePermissionsForAllApplications:I = 0x2a

.field static final TRANSACTION_canForwardTo:I = 0x43

.field static final TRANSACTION_canRequestPackageInstalls:I = 0xd4

.field static final TRANSACTION_cancelEMPHandlerSendPendingBroadcast:I = 0xe2

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x8

.field static final TRANSACTION_checkPackageStartable:I = 0x1

.field static final TRANSACTION_checkPermission:I = 0x13

.field static final TRANSACTION_checkSignatures:I = 0x37

.field static final TRANSACTION_checkUidPermission:I = 0x26

.field static final TRANSACTION_checkUidSignatures:I = 0x38

.field static final TRANSACTION_clearApplicationProfileData:I = 0x7d

.field static final TRANSACTION_clearApplicationUserData:I = 0x7c

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x64

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x62

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x5f

.field static final TRANSACTION_clearPackagePreferredActivitiesAsUser:I = 0xb4

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x7

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x7a

.field static final TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x7b

.field static final TRANSACTION_deletePackageAsUser:I = 0x57

.field static final TRANSACTION_deletePackageVersioned:I = 0x58

.field static final TRANSACTION_deletePreloadsFileCache:I = 0xd5

.field static final TRANSACTION_dumpProfiles:I = 0x8c

.field static final TRANSACTION_enterSafeMode:I = 0x82

.field static final TRANSACTION_extendVerificationTimeout:I = 0x9d

.field static final TRANSACTION_extendVerificationTimeout2:I = 0x9e

.field static final TRANSACTION_findPersistentPreferredActivity:I = 0x42

.field static final TRANSACTION_finishPackageInstall:I = 0x54

.field static final TRANSACTION_flushPackageRestrictionsAsUser:I = 0x76

.field static final TRANSACTION_forceDexOpt:I = 0x8d

.field static final TRANSACTION_freeStorage:I = 0x79

.field static final TRANSACTION_freeStorageAndNotify:I = 0x78

.field static final TRANSACTION_getActivityInfo:I = 0xe

.field static final TRANSACTION_getAllIntentFilters:I = 0xa3

.field static final TRANSACTION_getAllPackages:I = 0x39

.field static final TRANSACTION_getAllPermissionGroups:I = 0xc

.field static final TRANSACTION_getAppOpPermissionPackages:I = 0x40

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x74

.field static final TRANSACTION_getApplicationHiddenSettingAsUser:I = 0xb7

.field static final TRANSACTION_getApplicationInfo:I = 0xd

.field static final TRANSACTION_getBlockUninstallForUser:I = 0xba

.field static final TRANSACTION_getChangedPackages:I = 0xcf

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x72

.field static final TRANSACTION_getComponentMetadataForIconTray:I = 0xdd

.field static final TRANSACTION_getDefaultAppsBackup:I = 0x69

.field static final TRANSACTION_getDefaultBrowserPackageName:I = 0xa5

.field static final TRANSACTION_getDexoptState:I = 0xe3

.field static final TRANSACTION_getFlagsForUid:I = 0x3d

.field static final TRANSACTION_getGrantedPermissions:I = 0xb1

.field static final TRANSACTION_getHomeActivities:I = 0x6f

.field static final TRANSACTION_getInstallLocation:I = 0x99

.field static final TRANSACTION_getInstallReason:I = 0xd2

.field static final TRANSACTION_getInstalledApplications:I = 0x4c

.field static final TRANSACTION_getInstalledPackages:I = 0x4a

.field static final TRANSACTION_getInstallerPackageName:I = 0x59

.field static final TRANSACTION_getInstantAppAndroidId:I = 0xd9

.field static final TRANSACTION_getInstantAppCookie:I = 0xc7

.field static final TRANSACTION_getInstantAppIcon:I = 0xc9

.field static final TRANSACTION_getInstantAppInstallerComponent:I = 0xd8

.field static final TRANSACTION_getInstantAppResolverComponent:I = 0xd6

.field static final TRANSACTION_getInstantAppResolverSettingsComponent:I = 0xd7

.field static final TRANSACTION_getInstantApps:I = 0xc6

.field static final TRANSACTION_getInstrumentationInfo:I = 0x51

.field static final TRANSACTION_getIntentFilterVerificationBackup:I = 0x6b

.field static final TRANSACTION_getIntentFilterVerifications:I = 0xa2

.field static final TRANSACTION_getIntentVerificationStatus:I = 0xa0

.field static final TRANSACTION_getKeySetByAlias:I = 0xbb

.field static final TRANSACTION_getLastChosenActivity:I = 0x5b

.field static final TRANSACTION_getMetadataForIconTray:I = 0xdc

.field static final TRANSACTION_getMoveStatus:I = 0x92

.field static final TRANSACTION_getNameForUid:I = 0x3b

.field static final TRANSACTION_getPackageGids:I = 0x6

.field static final TRANSACTION_getPackageGrantedPermissions:I = 0xad

.field static final TRANSACTION_getPackageInfo:I = 0x3

.field static final TRANSACTION_getPackageInfoVersioned:I = 0x4

.field static final TRANSACTION_getPackageInstaller:I = 0xb8

.field static final TRANSACTION_getPackageSizeInfo:I = 0x7e

.field static final TRANSACTION_getPackageUid:I = 0x5

.field static final TRANSACTION_getPackagesForUid:I = 0x3a

.field static final TRANSACTION_getPackagesHoldingPermissions:I = 0x4b

.field static final TRANSACTION_getPermissionControllerPackageName:I = 0xc5

.field static final TRANSACTION_getPermissionFlags:I = 0x32

.field static final TRANSACTION_getPermissionGrantBackup:I = 0x6d

.field static final TRANSACTION_getPermissionGroupInfo:I = 0xb

.field static final TRANSACTION_getPermissionInfo:I = 0x9

.field static final TRANSACTION_getPersistentApplications:I = 0x4d

.field static final TRANSACTION_getPreferredActivities:I = 0x60

.field static final TRANSACTION_getPreferredActivityBackup:I = 0x67

.field static final TRANSACTION_getPreviousCodePaths:I = 0xd1

.field static final TRANSACTION_getPrivateFlagsForUid:I = 0x3e

.field static final TRANSACTION_getProgressionOfPackageChanged:I = 0xe1

.field static final TRANSACTION_getProviderInfo:I = 0x12

.field static final TRANSACTION_getReceiverInfo:I = 0x10

.field static final TRANSACTION_getRequestedRuntimePermissions:I = 0x2e

.field static final TRANSACTION_getRuntimePermissionGroups:I = 0x2d

.field static final TRANSACTION_getSelectedComponentMetadataForIconTray:I = 0xdf

.field static final TRANSACTION_getSelectedMetadataForIconTray:I = 0xde

.field static final TRANSACTION_getServiceInfo:I = 0x11

.field static final TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0xcd

.field static final TRANSACTION_getSharedLibraries:I = 0xd3

.field static final TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0xce

.field static final TRANSACTION_getSignatureInfo:I = 0x16

.field static final TRANSACTION_getSigningKeySet:I = 0xbc

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x80

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x7f

.field static final TRANSACTION_getUidForSharedUser:I = 0x3c

.field static final TRANSACTION_getVerifierDeviceIdentity:I = 0xa6

.field static final TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0xc1

.field static final TRANSACTION_grantDefaultPermissionsToEnabledImsServices:I = 0xc2

.field static final TRANSACTION_grantRuntimePermission:I = 0x2f

.field static final TRANSACTION_hasSystemFeature:I = 0x81

.field static final TRANSACTION_hasSystemUidErrors:I = 0x85

.field static final TRANSACTION_installExistingPackageAsUser:I = 0x9a

.field static final TRANSACTION_installExistingPackageAsUserForMDM:I = 0xb3

.field static final TRANSACTION_installPackageAsUser:I = 0x53

.field static final TRANSACTION_installPackageForMDM:I = 0xb2

.field static final TRANSACTION_isFirstBoot:I = 0xa7

.field static final TRANSACTION_isInstantApp:I = 0xca

.field static final TRANSACTION_isOnlyCoreApps:I = 0xa8

.field static final TRANSACTION_isPackageAvailable:I = 0x2

.field static final TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0xd0

.field static final TRANSACTION_isPackageSignedByKeySet:I = 0xbd

.field static final TRANSACTION_isPackageSignedByKeySetExactly:I = 0xbe

.field static final TRANSACTION_isPackageSuspendedForUser:I = 0x66

.field static final TRANSACTION_isPermissionEnforced:I = 0xab

.field static final TRANSACTION_isPermissionRevokedByPolicy:I = 0xc3

.field static final TRANSACTION_isPermissionRevokedByUserFixed:I = 0xc4

.field static final TRANSACTION_isProtectedBroadcast:I = 0x36

.field static final TRANSACTION_isSafeMode:I = 0x83

.field static final TRANSACTION_isStorageLow:I = 0xb5

.field static final TRANSACTION_isUidPrivileged:I = 0x3f

.field static final TRANSACTION_isUpgrade:I = 0xa9

.field static final TRANSACTION_logAppProcessStartIfNeeded:I = 0x75

.field static final TRANSACTION_movePackage:I = 0x95

.field static final TRANSACTION_movePrimaryStorage:I = 0x96

.field static final TRANSACTION_nextPackageToClean:I = 0x91

.field static final TRANSACTION_notifyDexLoad:I = 0x88

.field static final TRANSACTION_notifyPackageUse:I = 0x87

.field static final TRANSACTION_performDexOpt:I = 0x89

.field static final TRANSACTION_performDexOptMode:I = 0x8a

.field static final TRANSACTION_performDexOptSecondary:I = 0x8b

.field static final TRANSACTION_queryContentProviders:I = 0x50

.field static final TRANSACTION_queryInstrumentation:I = 0x52

.field static final TRANSACTION_queryIntentActivities:I = 0x44

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x45

.field static final TRANSACTION_queryIntentContentProviders:I = 0x49

.field static final TRANSACTION_queryIntentReceivers:I = 0x46

.field static final TRANSACTION_queryIntentServices:I = 0x48

.field static final TRANSACTION_queryPermissionsByGroup:I = 0xa

.field static final TRANSACTION_queryRuntimePermissionGroupByPermission:I = 0x2b

.field static final TRANSACTION_queryRuntimePermissionsByPermissionGroup:I = 0x2c

.field static final TRANSACTION_querySyncProviders:I = 0x4f

.field static final TRANSACTION_reconcileSecondaryDexFiles:I = 0x8f

.field static final TRANSACTION_registerMoveCallback:I = 0x93

.field static final TRANSACTION_removeOnPermissionsChangeListener:I = 0xc0

.field static final TRANSACTION_removePermission:I = 0x28

.field static final TRANSACTION_replacePreferredActivity:I = 0x5e

.field static final TRANSACTION_resetApplicationPreferences:I = 0x5a

.field static final TRANSACTION_resetRuntimePermissions:I = 0x31

.field static final TRANSACTION_resolveContentProvider:I = 0x4e

.field static final TRANSACTION_resolveIntent:I = 0x41

.field static final TRANSACTION_resolveService:I = 0x47

.field static final TRANSACTION_restoreDefaultApps:I = 0x6a

.field static final TRANSACTION_restoreIntentFilterVerification:I = 0x6c

.field static final TRANSACTION_restorePermissionGrants:I = 0x6e

.field static final TRANSACTION_restorePreferredActivities:I = 0x68

.field static final TRANSACTION_revokeExternalPermissions:I = 0xae

.field static final TRANSACTION_revokePermissionEDM:I = 0xaf

.field static final TRANSACTION_revokeRuntimePermission:I = 0x30

.field static final TRANSACTION_rollbackPermission:I = 0xb0

.field static final TRANSACTION_runBackgroundDexoptJob:I = 0x8e

.field static final TRANSACTION_semGetSystemFeatureLevel:I = 0xdb

.field static final TRANSACTION_semIsPermissionRevokedByUserFixed:I = 0xda

.field static final TRANSACTION_setApplicationCategoryHint:I = 0x56

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x73

.field static final TRANSACTION_setApplicationEnabledSettingWithList:I = 0xe0

.field static final TRANSACTION_setApplicationHiddenSettingAsUser:I = 0xb6

.field static final TRANSACTION_setBlockUninstallForUser:I = 0xb9

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x71

.field static final TRANSACTION_setDefaultBrowserPackageName:I = 0xa4

.field static final TRANSACTION_setHomeActivity:I = 0x70

.field static final TRANSACTION_setInstallLocation:I = 0x98

.field static final TRANSACTION_setInstallerPackageName:I = 0x55

.field static final TRANSACTION_setInstantAppCookie:I = 0xc8

.field static final TRANSACTION_setLastChosenActivity:I = 0x5c

.field static final TRANSACTION_setLicensePermissions:I = 0xac

.field static final TRANSACTION_setPackageStoppedState:I = 0x77

.field static final TRANSACTION_setPackagesSuspendedAsUser:I = 0x65

.field static final TRANSACTION_setPermissionEnforced:I = 0xaa

.field static final TRANSACTION_setRequiredForSystemUser:I = 0xcb

.field static final TRANSACTION_setUpdateAvailable:I = 0xcc

.field static final TRANSACTION_shouldShowRequestPermissionRationale:I = 0x35

.field static final TRANSACTION_systemReady:I = 0x84

.field static final TRANSACTION_unregisterMoveCallback:I = 0x94

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x90

.field static final TRANSACTION_updateIntentVerificationStatus:I = 0xa1

.field static final TRANSACTION_updatePackagesIfNeeded:I = 0x86

.field static final TRANSACTION_updatePermissionFlags:I = 0x33

.field static final TRANSACTION_updatePermissionFlagsForAllApps:I = 0x34

.field static final TRANSACTION_verifyIntentFilter:I = 0x9f

.field static final TRANSACTION_verifyPendingInstall:I = 0x9b

.field static final TRANSACTION_verifyPendingInstall2:I = 0x9c


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/pm/IPackageManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 132
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v116

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v116, :cond_1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v116

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/VersionedPackage;

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;II)Landroid/content/pm/PackageInfo;

    move-result-object v116

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v116, :cond_3

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v116

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3
    const/4 v6, 0x1

    return v6

    :cond_2
    const/16 v86, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :sswitch_5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;II)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v130

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v6, 0x1

    return v6

    :sswitch_7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v90

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v90

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v119

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v119, :cond_4

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v119

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    const/4 v6, 0x1

    return v6

    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :sswitch_a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_5

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    const/4 v6, 0x1

    return v6

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :sswitch_b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v118

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v118, :cond_6

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v118

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    const/4 v6, 0x1

    return v6

    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :sswitch_c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_7

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    const/4 v6, 0x1

    return v6

    :cond_7
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :sswitch_d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v110

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v110, :cond_8

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v110

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    const/4 v6, 0x1

    return v6

    :cond_8
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v109

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v109, :cond_a

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v109

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v6, 0x1

    return v6

    :cond_9
    const/16 v19, 0x0

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Landroid/content/Intent;

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v92

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_d

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    :cond_c
    const/16 v92, 0x0

    goto :goto_c

    :cond_d
    const/4 v6, 0x0

    goto :goto_d

    :sswitch_10
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v109

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v109, :cond_f

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v109

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    const/4 v6, 0x1

    return v6

    :cond_e
    const/16 v19, 0x0

    goto :goto_e

    :cond_f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :sswitch_11
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v122

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v122, :cond_11

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v122

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v6, 0x1

    return v6

    :cond_10
    const/16 v19, 0x0

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :sswitch_12
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;

    move-result-object v120

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v120, :cond_13

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v120

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    const/4 v6, 0x1

    return v6

    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    :sswitch_13
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_14
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/pm/IPackageManager$Stub;->AASA_managedPermissionNew(ILjava/lang/String;Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_15
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_getSEInfo(ILjava/lang/String;)[B

    move-result-object v129

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_16
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getSignatureInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_17
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/4 v7, 0x1

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    const/4 v8, 0x1

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->AASA_blockByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_14
    const/4 v7, 0x0

    goto :goto_14

    :cond_15
    const/4 v8, 0x0

    goto :goto_15

    :sswitch_18
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    const/4 v7, 0x1

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/4 v8, 0x1

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/IPackageManager$Stub;->AASA_allowByPackage(ZZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_16
    const/4 v7, 0x0

    goto :goto_16

    :cond_17
    const/4 v8, 0x0

    goto :goto_17

    :sswitch_19
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v14, v1}, Landroid/content/pm/IPackageManager$Stub;->AASA_updatePackage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_removePackage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->AASA_readPackagesByType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_readDataByPackages(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_1d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASADebug()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_1e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_RegisterPackage(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_18

    const/4 v6, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_18
    const/4 v6, 0x0

    goto :goto_18

    :sswitch_1f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->AASAToken_UnRegisterPackage(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_19

    const/4 v6, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_19
    const/4 v6, 0x0

    goto :goto_19

    :sswitch_20
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_readUids()[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_21
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->ASKS_checkDevice(I)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_22
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->AASA_AddPackageToDataByService(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_23
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->ASKS_setMode(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_24
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->AASA_checkRestrictList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_25
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->AASA_updateRestrictList()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_26
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_27
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PermissionInfo;

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_1b

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1a
    const/16 v84, 0x0

    goto :goto_1a

    :cond_1b
    const/4 v6, 0x0

    goto :goto_1b

    :sswitch_28
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_29
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v98

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_1c

    const/4 v6, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1c
    const/4 v6, 0x0

    goto :goto_1c

    :sswitch_2a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->applyRuntimePermissionsForAllApplications(II)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_1d

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1d
    const/4 v6, 0x0

    goto :goto_1d

    :sswitch_2b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_2c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_2d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionGroups()Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_2e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_2f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_30
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_31
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->resetRuntimePermissions()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_32
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_33
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v12, p0

    move v15, v9

    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_34
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->updatePermissionFlagsForAllApps(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_35
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_1e

    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1e
    const/4 v6, 0x0

    goto :goto_1e

    :sswitch_36
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_1f

    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_1f
    const/4 v6, 0x0

    goto :goto_1f

    :sswitch_37
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_38
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_39
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_3a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_3b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_3c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_3d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_3e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_3f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_20

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_20
    const/4 v6, 0x0

    goto :goto_20

    :sswitch_40
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_41
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v121

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v121, :cond_22

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_22
    const/4 v6, 0x1

    return v6

    :cond_21
    const/16 v36, 0x0

    goto :goto_21

    :cond_22
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_22

    :sswitch_42
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v121

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v121, :cond_24

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_24
    const/4 v6, 0x1

    return v6

    :cond_23
    const/16 v36, 0x0

    goto :goto_23

    :cond_24
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    :sswitch_43
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_26

    const/4 v6, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_25
    const/16 v36, 0x0

    goto :goto_25

    :cond_26
    const/4 v6, 0x0

    goto :goto_26

    :sswitch_44
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_28

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_28
    const/4 v6, 0x1

    return v6

    :cond_27
    const/16 v36, 0x0

    goto :goto_27

    :cond_28
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_28

    :sswitch_45
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_29
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Intent;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v18, p0

    move-object/from16 v23, v11

    invoke-virtual/range {v18 .. v25}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_2b

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2b
    const/4 v6, 0x1

    return v6

    :cond_29
    const/16 v19, 0x0

    goto :goto_29

    :cond_2a
    const/16 v22, 0x0

    goto :goto_2a

    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    :sswitch_46
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_2d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2d
    const/4 v6, 0x1

    return v6

    :cond_2c
    const/16 v36, 0x0

    goto :goto_2c

    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    :sswitch_47
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v121

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v121, :cond_2f

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2f
    const/4 v6, 0x1

    return v6

    :cond_2e
    const/16 v36, 0x0

    goto :goto_2e

    :cond_2f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2f

    :sswitch_48
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_31

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_31
    const/4 v6, 0x1

    return v6

    :cond_30
    const/16 v36, 0x0

    goto :goto_30

    :cond_31
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    :sswitch_49
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_33

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_33
    const/4 v6, 0x1

    return v6

    :cond_32
    const/16 v36, 0x0

    goto :goto_32

    :cond_33
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    :sswitch_4a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_34

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_34
    const/4 v6, 0x1

    return v6

    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_34

    :sswitch_4b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v90

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_35

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_35
    const/4 v6, 0x1

    return v6

    :cond_35
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_35

    :sswitch_4c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_36

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_36
    const/4 v6, 0x1

    return v6

    :cond_36
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    :sswitch_4d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_37

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_37
    const/4 v6, 0x1

    return v6

    :cond_37
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    :sswitch_4e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v120

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v120, :cond_38

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v120

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_38
    const/4 v6, 0x1

    return v6

    :cond_38
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    :sswitch_4f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v73

    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v97

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v97

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_50
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-virtual {v0, v13, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_39

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_39
    const/4 v6, 0x1

    return v6

    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    :sswitch_51
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v113

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v113, :cond_3b

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v113

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3b
    const/4 v6, 0x1

    return v6

    :cond_3a
    const/16 v19, 0x0

    goto :goto_3a

    :cond_3b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    :sswitch_52
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_3c

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3c
    const/4 v6, 0x1

    return v6

    :cond_3c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    :sswitch_53
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v26, p0

    move-object/from16 v27, v13

    move/from16 v29, v9

    move/from16 v31, v17

    invoke-virtual/range {v26 .. v31}, Landroid/content/pm/IPackageManager$Stub;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_54
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3d

    const/4 v8, 0x1

    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3d
    const/4 v8, 0x0

    goto :goto_3d

    :sswitch_55
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_56
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v50

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_57
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v31, p0

    move-object/from16 v32, v13

    move/from16 v35, v16

    move/from16 v36, v17

    invoke-virtual/range {v31 .. v36}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_58
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    sget-object v6, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/pm/VersionedPackage;

    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v94

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v94

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/content/pm/IPackageManager$Stub;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_3e
    const/16 v86, 0x0

    goto :goto_3e

    :sswitch_59
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_5a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_5b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v121

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v121, :cond_40

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v121

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_40
    const/4 v6, 0x1

    return v6

    :cond_3f
    const/16 v36, 0x0

    goto :goto_3f

    :cond_40
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_40

    :sswitch_5c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Intent;

    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/IntentFilter;

    :goto_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/content/ComponentName;

    :goto_43
    move-object/from16 v35, p0

    move-object/from16 v37, v14

    move/from16 v38, v9

    move/from16 v40, v17

    invoke-virtual/range {v35 .. v41}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_41
    const/16 v36, 0x0

    goto :goto_41

    :cond_42
    const/16 v39, 0x0

    goto :goto_42

    :cond_43
    const/16 v41, 0x0

    goto :goto_43

    :sswitch_5d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/IntentFilter;

    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v45

    check-cast v45, [Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/ComponentName;

    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v42, p0

    move/from16 v44, v33

    move/from16 v47, v17

    invoke-virtual/range {v42 .. v47}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_44
    const/16 v43, 0x0

    goto :goto_44

    :cond_45
    const/16 v46, 0x0

    goto :goto_45

    :sswitch_5e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/IntentFilter;

    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v45

    check-cast v45, [Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/ComponentName;

    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v42, p0

    move/from16 v44, v33

    move/from16 v47, v17

    invoke-virtual/range {v42 .. v47}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_46
    const/16 v43, 0x0

    goto :goto_46

    :cond_47
    const/16 v46, 0x0

    goto :goto_47

    :sswitch_5f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_60
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v87, Ljava/util/ArrayList;

    invoke-direct/range {v87 .. v87}, Ljava/util/ArrayList;-><init>()V

    new-instance v96, Ljava/util/ArrayList;

    invoke-direct/range {v96 .. v96}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v96

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move-object/from16 v0, p3

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_61
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/IntentFilter;

    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/content/ComponentName;

    :goto_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_48
    const/16 v43, 0x0

    goto :goto_48

    :cond_49
    const/16 v91, 0x0

    goto :goto_49

    :sswitch_62
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_63
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/IntentFilter;

    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v47, p0

    move-object/from16 v48, v43

    move-object/from16 v49, v14

    move/from16 v50, v9

    move/from16 v51, v16

    move/from16 v52, v17

    invoke-virtual/range {v47 .. v52}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_4a
    const/16 v43, 0x0

    goto :goto_4a

    :sswitch_64
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1, v14}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_65
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v90

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/4 v8, 0x1

    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_4b
    const/4 v8, 0x0

    goto :goto_4b

    :sswitch_66
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_4c

    const/4 v6, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_4c
    const/4 v6, 0x0

    goto :goto_4c

    :sswitch_67
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v129

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_68
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v89

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_69
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v129

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_6a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v89

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_6b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerificationBackup(I)[B

    move-result-object v129

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_6c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v89

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreIntentFilterVerification([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_6d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGrantBackup(I)[B

    move-result-object v129

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_6e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v89

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v89

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePermissionGrants([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_6f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v88, Ljava/util/ArrayList;

    invoke-direct/range {v88 .. v88}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v108

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v108, :cond_4d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v108

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4d
    move-object/from16 v0, p3

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :cond_4d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    :sswitch_70
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_4e
    const/16 v19, 0x0

    goto :goto_4e

    :sswitch_71
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_4f
    const/16 v19, 0x0

    goto :goto_4f

    :sswitch_72
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ComponentName;

    :goto_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_50
    const/16 v19, 0x0

    goto :goto_50

    :sswitch_73
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v47, p0

    move-object/from16 v48, v13

    move/from16 v49, v33

    move/from16 v50, v9

    move/from16 v51, v16

    move-object/from16 v52, v11

    invoke-virtual/range {v47 .. v52}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_74
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_75
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v47, p0

    move-object/from16 v48, v13

    move/from16 v49, v33

    move-object/from16 v51, v30

    move/from16 v52, v17

    invoke-virtual/range {v47 .. v52}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_76
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_77
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/4 v8, 0x1

    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_51
    const/4 v8, 0x0

    goto :goto_51

    :sswitch_78
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v54

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v57

    move-object/from16 v52, p0

    move-object/from16 v53, v13

    move/from16 v56, v9

    invoke-virtual/range {v52 .. v57}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_79
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v54

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/IntentSender;

    :goto_52
    move-object/from16 v58, p0

    move-object/from16 v59, v13

    move-wide/from16 v60, v54

    move/from16 v62, v9

    invoke-virtual/range {v58 .. v63}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_52
    const/16 v63, 0x0

    goto :goto_52

    :sswitch_7a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v93

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_7b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v101

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v101

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_7c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v93

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_7d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_7e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v104

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v104

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_7f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v131

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_80
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_53

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_53
    const/4 v6, 0x1

    return v6

    :cond_53
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    :sswitch_81
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_54

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_54
    const/4 v6, 0x0

    goto :goto_54

    :sswitch_82
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_83
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_55

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_55
    const/4 v6, 0x0

    goto :goto_55

    :sswitch_84
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_85
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_56

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_56
    const/4 v6, 0x0

    goto :goto_56

    :sswitch_86
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->updatePackagesIfNeeded()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_87
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    const/4 v6, 0x1

    return v6

    :sswitch_88
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v98

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move-object/from16 v2, v50

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->notifyDexLoad(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_89
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    const/4 v8, 0x1

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    const/16 v76, 0x1

    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v13, v8, v9, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;ZIZ)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_59

    const/4 v6, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_57
    const/4 v8, 0x0

    goto :goto_57

    :cond_58
    const/16 v76, 0x0

    goto :goto_58

    :cond_59
    const/4 v6, 0x0

    goto :goto_59

    :sswitch_8a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    const/4 v8, 0x1

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5b

    const/16 v76, 0x1

    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v76

    invoke-virtual {v0, v13, v8, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_5c

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5a
    const/4 v8, 0x0

    goto :goto_5a

    :cond_5b
    const/16 v76, 0x0

    goto :goto_5b

    :cond_5c
    const/4 v6, 0x0

    goto :goto_5c

    :sswitch_8b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    const/16 v106, 0x1

    :goto_5d
    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v13, v14, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_5e

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5d
    const/16 v106, 0x0

    goto :goto_5d

    :cond_5e
    const/4 v6, 0x0

    goto :goto_5e

    :sswitch_8c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->dumpProfiles(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_8d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->forceDexOpt(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_8e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->runBackgroundDexoptJob()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_5f

    const/4 v6, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_5f
    const/4 v6, 0x0

    goto :goto_5f

    :sswitch_8f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_90
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    const/4 v7, 0x1

    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    const/4 v8, 0x1

    :goto_61
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_60
    const/4 v7, 0x0

    goto :goto_60

    :cond_61
    const/4 v8, 0x0

    goto :goto_61

    :sswitch_91
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    sget-object v6, Landroid/content/pm/PackageCleanItem;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/content/pm/PackageCleanItem;

    :goto_62
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Landroid/content/pm/PackageCleanItem;)Landroid/content/pm/PackageCleanItem;

    move-result-object v115

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v115, :cond_63

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v115

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageCleanItem;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_63
    const/4 v6, 0x1

    return v6

    :cond_62
    const/16 v83, 0x0

    goto :goto_62

    :cond_63
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_63

    :sswitch_92
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_93
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v82

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_94
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v82

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_95
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_96
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_97
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    sget-object v6, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/pm/PermissionInfo;

    :goto_64
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_65

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_64
    const/16 v84, 0x0

    goto :goto_64

    :cond_65
    const/4 v6, 0x0

    goto :goto_65

    :sswitch_98
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_66

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_66
    const/4 v6, 0x0

    goto :goto_66

    :sswitch_99
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_9a
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v9, v2}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;III)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_9b
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9c
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall2(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9d
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v102

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    move-wide/from16 v3, v102

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9e
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v102

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    move-wide/from16 v3, v102

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout2(IIJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_9f
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v105

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    move-object/from16 v3, v105

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_a0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_a1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_67

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_67
    const/4 v6, 0x0

    goto :goto_67

    :sswitch_a2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_68

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_68
    const/4 v6, 0x1

    return v6

    :cond_68
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    :sswitch_a3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_69

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_69
    const/4 v6, 0x1

    return v6

    :cond_69
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69

    :sswitch_a4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_6a

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6a
    const/4 v6, 0x0

    goto :goto_6a

    :sswitch_a5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_a6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v123

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v123, :cond_6b

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/VerifierDeviceIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6b
    const/4 v6, 0x1

    return v6

    :cond_6b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6b

    :sswitch_a7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_6c

    const/4 v6, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6c
    const/4 v6, 0x0

    goto :goto_6c

    :sswitch_a8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isOnlyCoreApps()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_6d

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6d
    const/4 v6, 0x0

    goto :goto_6d

    :sswitch_a9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isUpgrade()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_6e

    const/4 v6, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_6e
    const/4 v6, 0x0

    goto :goto_6e

    :sswitch_aa
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    const/4 v8, 0x1

    :goto_6f
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Landroid/content/pm/IPackageManager$Stub;->setPermissionEnforced(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_6f
    const/4 v8, 0x0

    goto :goto_6f

    :sswitch_ab
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_70

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_70
    const/4 v6, 0x0

    goto :goto_70

    :sswitch_ac
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->setLicensePermissions(Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_ad
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_ae
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    sget-object v6, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/content/pm/ResolveInfo;

    :goto_71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v98

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    move-object/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_71
    const/16 v85, 0x0

    goto :goto_71

    :sswitch_af
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v98

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    const/16 v106, 0x1

    :goto_72
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move/from16 v2, v106

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :cond_72
    const/16 v106, 0x0

    goto :goto_72

    :sswitch_b0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v98

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    const/16 v106, 0x1

    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move/from16 v2, v106

    invoke-virtual {v0, v13, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :cond_73
    const/16 v106, 0x0

    goto :goto_73

    :sswitch_b1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_b2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageInstallObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_74

    sget-object v6, Landroid/content/pm/VerificationParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/pm/VerificationParams;

    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v64, p0

    move-object/from16 v65, v13

    move-object/from16 v66, v28

    move/from16 v67, v9

    move/from16 v68, v16

    move-object/from16 v69, v11

    invoke-virtual/range {v64 .. v71}, Landroid/content/pm/IPackageManager$Stub;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_74
    const/16 v70, 0x0

    goto :goto_74

    :sswitch_b3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_b4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_b5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_75

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_75
    const/4 v6, 0x0

    goto :goto_75

    :sswitch_b6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/4 v8, 0x1

    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_77

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_76
    const/4 v8, 0x0

    goto :goto_76

    :cond_77
    const/4 v6, 0x0

    goto :goto_77

    :sswitch_b7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_78

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_78
    const/4 v6, 0x0

    goto :goto_78

    :sswitch_b8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v112

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v112, :cond_79

    invoke-interface/range {v112 .. v112}, Landroid/content/pm/IPackageInstaller;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :cond_79
    const/4 v6, 0x0

    goto :goto_79

    :sswitch_b9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    const/4 v8, 0x1

    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8, v9}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_7b

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_7a
    const/4 v8, 0x0

    goto :goto_7a

    :cond_7b
    const/4 v6, 0x0

    goto :goto_7b

    :sswitch_ba
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_7c

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_7c
    const/4 v6, 0x0

    goto :goto_7c

    :sswitch_bb
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v114

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v114, :cond_7d

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7d
    const/4 v6, 0x1

    return v6

    :cond_7d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7d

    :sswitch_bc
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v114

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v114, :cond_7e

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/KeySet;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7e
    const/4 v6, 0x1

    return v6

    :cond_7e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7e

    :sswitch_bd
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7f

    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/content/pm/KeySet;

    :goto_7f
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_80

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_7f
    const/16 v95, 0x0

    goto :goto_7f

    :cond_80
    const/4 v6, 0x0

    goto :goto_80

    :sswitch_be
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    sget-object v6, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Landroid/content/pm/KeySet;

    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_82

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_81
    const/16 v95, 0x0

    goto :goto_81

    :cond_82
    const/4 v6, 0x0

    goto :goto_82

    :sswitch_bf
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v81

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnPermissionsChangeListener;

    move-result-object v81

    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v90

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v90

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move-object/from16 v1, v90

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_c3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_83

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_83
    const/4 v6, 0x0

    goto :goto_83

    :sswitch_c4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_84

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_84
    const/4 v6, 0x0

    goto :goto_84

    :sswitch_c5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_c6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_85

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_85
    const/4 v6, 0x1

    return v6

    :cond_85
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_85

    :sswitch_c7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v129

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_c8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v99

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_86

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_86
    const/4 v6, 0x0

    goto :goto_86

    :sswitch_c9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v124

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v124, :cond_87

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v124

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_87
    const/4 v6, 0x1

    return v6

    :cond_87
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_87

    :sswitch_ca
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->isInstantApp(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_88

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_88
    const/4 v6, 0x0

    goto :goto_88

    :sswitch_cb
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    const/4 v8, 0x1

    :goto_89
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_8a

    const/4 v6, 0x1

    :goto_8a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_89
    const/4 v8, 0x0

    goto :goto_89

    :cond_8a
    const/4 v6, 0x0

    goto :goto_8a

    :sswitch_cc
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v8, 0x1

    :goto_8b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_8b
    const/4 v8, 0x0

    goto :goto_8b

    :sswitch_cd
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_ce
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_cf
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v80

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v111

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v111, :cond_8c

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v111

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ChangedPackages;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8c
    const/4 v6, 0x1

    return v6

    :cond_8c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8c

    :sswitch_d0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_8d

    const/4 v6, 0x1

    :goto_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_8d
    const/4 v6, 0x0

    goto :goto_8d

    :sswitch_d1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getPreviousCodePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v127

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_d2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallReason(Ljava/lang/String;I)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_d3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getSharedLibraries(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v117

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v117, :cond_8e

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v117

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8e
    const/4 v6, 0x1

    return v6

    :cond_8e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8e

    :sswitch_d4
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_8f

    const/4 v6, 0x1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_8f
    const/4 v6, 0x0

    goto :goto_8f

    :sswitch_d5
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->deletePreloadsFileCache()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_d6
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v108

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v108, :cond_90

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v108

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_90
    const/4 v6, 0x1

    return v6

    :cond_90
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_90

    :sswitch_d7
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v108

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v108, :cond_91

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v108

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_91
    const/4 v6, 0x1

    return v6

    :cond_91
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_91

    :sswitch_d8
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v108

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v108, :cond_92

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v108

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_92
    const/4 v6, 0x1

    return v6

    :cond_92
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_92

    :sswitch_d9
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_da
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_93

    const/4 v6, 0x1

    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_93
    const/4 v6, 0x0

    goto :goto_93

    :sswitch_db
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_dc
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v9}, Landroid/content/pm/IPackageManager$Stub;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_94

    const/4 v6, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_94
    const/4 v6, 0x0

    goto :goto_94

    :sswitch_dd
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v16

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v128

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v128, :cond_95

    const/4 v6, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :cond_95
    const/4 v6, 0x0

    goto :goto_95

    :sswitch_de
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v100

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v13, v1, v9}, Landroid/content/pm/IPackageManager$Stub;->getSelectedMetadataForIconTray(Ljava/lang/String;[Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v125

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v125, :cond_96

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v125

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_96
    const/4 v6, 0x1

    return v6

    :cond_96
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_96

    :sswitch_df
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getSelectedComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v125

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v125, :cond_97

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v125

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_97
    const/4 v6, 0x1

    return v6

    :cond_97
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_97

    :sswitch_e0
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v73

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_98

    const/16 v76, 0x1

    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    const/16 v77, 0x1

    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v71

    move-object/from16 v72, p0

    move/from16 v74, v33

    move/from16 v75, v9

    move/from16 v78, v24

    move-object/from16 v79, v71

    invoke-virtual/range {v72 .. v79}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :cond_98
    const/16 v76, 0x0

    goto :goto_98

    :cond_99
    const/16 v77, 0x0

    goto :goto_99

    :sswitch_e1
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getProgressionOfPackageChanged()I

    move-result v107

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_e2
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->cancelEMPHandlerSendPendingBroadcast()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v6, 0x1

    return v6

    :sswitch_e3
    const-string/jumbo v6, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/pm/IPackageManager$Stub;->getDexoptState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v126

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

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
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0xd7 -> :sswitch_d7
        0xd8 -> :sswitch_d8
        0xd9 -> :sswitch_d9
        0xda -> :sswitch_da
        0xdb -> :sswitch_db
        0xdc -> :sswitch_dc
        0xdd -> :sswitch_dd
        0xde -> :sswitch_de
        0xdf -> :sswitch_df
        0xe0 -> :sswitch_e0
        0xe1 -> :sswitch_e1
        0xe2 -> :sswitch_e2
        0xe3 -> :sswitch_e3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
