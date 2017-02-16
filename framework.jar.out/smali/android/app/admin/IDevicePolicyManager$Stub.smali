.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_addCrossProfileIntentFilter:I = 0x9a

.field static final TRANSACTION_addCrossProfileIntentFilterMDM:I = 0x108

.field static final TRANSACTION_addCrossProfileWidgetProvider:I = 0xc4

.field static final TRANSACTION_addPersistentPreferredActivity:I = 0x8f

.field static final TRANSACTION_approveCaCert:I = 0x86

.field static final TRANSACTION_choosePrivateKeyAlias:I = 0x8a

.field static final TRANSACTION_clearCrossProfileIntentFilters:I = 0x9b

.field static final TRANSACTION_clearCrossProfileIntentFiltersMDM:I = 0x109

.field static final TRANSACTION_clearDeviceOwner:I = 0x4c

.field static final TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x90

.field static final TRANSACTION_clearProfileOwner:I = 0x53

.field static final TRANSACTION_copyAlternativeToActivePasswordState:I = 0x85

.field static final TRANSACTION_createAndManageUser:I = 0xa6

.field static final TRANSACTION_enableSystemApp:I = 0xa9

.field static final TRANSACTION_enableSystemAppWithIntent:I = 0xaa

.field static final TRANSACTION_enforceCanManageCaCerts:I = 0x5b

.field static final TRANSACTION_forceRemoveActiveAdmin:I = 0x40

.field static final TRANSACTION_getAccountTypesWithManagementDisabled:I = 0xac

.field static final TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0xad

.field static final TRANSACTION_getActiveAdmins:I = 0x3c

.field static final TRANSACTION_getActualDeviceOwnerMDM:I = 0xf6

.field static final TRANSACTION_getAllowCamera:I = 0x71

.field static final TRANSACTION_getAlwaysOnVpnPackage:I = 0x8e

.field static final TRANSACTION_getApplicationRestrictions:I = 0x92

.field static final TRANSACTION_getApplicationRestrictionsMDM:I = 0x107

.field static final TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x94

.field static final TRANSACTION_getAutoTimeRequired:I = 0xc8

.field static final TRANSACTION_getBluetoothContactSharingDisabled:I = 0xc0

.field static final TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xc1

.field static final TRANSACTION_getCameraDisabled:I = 0x35

.field static final TRANSACTION_getCertInstallerPackage:I = 0x8c

.field static final TRANSACTION_getCrossProfileCallerIdDisabled:I = 0xb9

.field static final TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0xba

.field static final TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0xbc

.field static final TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xbd

.field static final TRANSACTION_getCrossProfileWidgetProviders:I = 0xc6

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x18

.field static final TRANSACTION_getDeviceOwnerComponent:I = 0x4a

.field static final TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x56

.field static final TRANSACTION_getDeviceOwnerName:I = 0x4b

.field static final TRANSACTION_getDeviceOwnerUserId:I = 0x4d

.field static final TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xd1

.field static final TRANSACTION_getForceEphemeralUsers:I = 0xca

.field static final TRANSACTION_getGlobalProxyAdmin:I = 0x23

.field static final TRANSACTION_getKeepUninstalledPackages:I = 0xd9

.field static final TRANSACTION_getKeyguardDisabledFeatures:I = 0x39

.field static final TRANSACTION_getLockTaskPackages:I = 0xaf

.field static final TRANSACTION_getLongSupportMessage:I = 0xe1

.field static final TRANSACTION_getLongSupportMessageForUser:I = 0xe3

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x1b

.field static final TRANSACTION_getMaximumTimeToLock:I = 0x1e

.field static final TRANSACTION_getMaximumTimeToLockForUserAndProfiles:I = 0x1f

.field static final TRANSACTION_getNeedToGetAlternativePasswdForODE:I = 0x32

.field static final TRANSACTION_getOrganizationColor:I = 0xe7

.field static final TRANSACTION_getOrganizationColorForUser:I = 0xe8

.field static final TRANSACTION_getOrganizationName:I = 0xea

.field static final TRANSACTION_getOrganizationNameForUser:I = 0xeb

.field static final TRANSACTION_getPasswordExpiration:I = 0x15

.field static final TRANSACTION_getPasswordExpirationTimeout:I = 0x14

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x12

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPermissionGrantState:I = 0xd6

.field static final TRANSACTION_getPermissionPolicy:I = 0xd4

.field static final TRANSACTION_getPermittedAccessibilityServices:I = 0x9d

.field static final TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x9e

.field static final TRANSACTION_getPermittedInputMethods:I = 0xa1

.field static final TRANSACTION_getPermittedInputMethodsForCurrentUser:I = 0xa2

.field static final TRANSACTION_getProfileOwner:I = 0x4f

.field static final TRANSACTION_getProfileOwnerName:I = 0x50

.field static final TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x19

.field static final TRANSACTION_getPropertyFromFooter:I = 0x2f

.field static final TRANSACTION_getRemoveWarning:I = 0x3e

.field static final TRANSACTION_getRestrictionsProvider:I = 0x97

.field static final TRANSACTION_getSamsungEncryptionStatus:I = 0x29

.field static final TRANSACTION_getSamsungEncryptionStatusForCC:I = 0x2b

.field static final TRANSACTION_getSamsungSDcardEncryptionStatus:I = 0x2a

.field static final TRANSACTION_getScreenCaptureDisabled:I = 0x37

.field static final TRANSACTION_getShortSupportMessage:I = 0xdf

.field static final TRANSACTION_getShortSupportMessageForUser:I = 0xe2

.field static final TRANSACTION_getStorageEncryption:I = 0x26

.field static final TRANSACTION_getStorageEncryptionStatus:I = 0x27

.field static final TRANSACTION_getSystemUpdatePolicy:I = 0xce

.field static final TRANSACTION_getTrustAgentConfiguration:I = 0xc3

.field static final TRANSACTION_getUserProvisioningState:I = 0xec

.field static final TRANSACTION_getUserRestrictions:I = 0x99

.field static final TRANSACTION_getWifiMacAddress:I = 0xdc

.field static final TRANSACTION_hasGrantedPolicy:I = 0x41

.field static final TRANSACTION_hasUserSetupCompleted:I = 0x54

.field static final TRANSACTION_installCaCert:I = 0x59

.field static final TRANSACTION_installKeyPair:I = 0x88

.field static final TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x9f

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x16

.field static final TRANSACTION_isAdminActive:I = 0x3b

.field static final TRANSACTION_isAffiliatedUser:I = 0xef

.field static final TRANSACTION_isApplicationHidden:I = 0xa5

.field static final TRANSACTION_isCaCertApproved:I = 0x87

.field static final TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x95

.field static final TRANSACTION_isInputMethodPermittedByAdmin:I = 0xa3

.field static final TRANSACTION_isLockTaskPermitted:I = 0xb0

.field static final TRANSACTION_isManagedProfile:I = 0xda

.field static final TRANSACTION_isMasterVolumeMuted:I = 0xb4

.field static final TRANSACTION_isPackageSuspended:I = 0x58

.field static final TRANSACTION_isProfileActivePasswordSufficientForParent:I = 0x17

.field static final TRANSACTION_isProvisioningAllowed:I = 0xd7

.field static final TRANSACTION_isRemovingAdmin:I = 0xcb

.field static final TRANSACTION_isSecurityLoggingEnabled:I = 0xf1

.field static final TRANSACTION_isSeparateProfileChallengeAllowed:I = 0xe4

.field static final TRANSACTION_isSupportFingerprintForODE:I = 0x30

.field static final TRANSACTION_isSupportTrustZoneForODE:I = 0x2c

.field static final TRANSACTION_isSupportTrustedBootForODE:I = 0x2d

.field static final TRANSACTION_isSystemOnlyUser:I = 0xdb

.field static final TRANSACTION_isUninstallBlocked:I = 0xb7

.field static final TRANSACTION_isUninstallInQueue:I = 0xf4

.field static final TRANSACTION_lockNow:I = 0x20

.field static final TRANSACTION_notifyLockTaskModeChanged:I = 0xb5

.field static final TRANSACTION_notifyPendingSystemUpdate:I = 0xd2

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x3d

.field static final TRANSACTION_reboot:I = 0xdd

.field static final TRANSACTION_rebootMDM:I = 0xf7

.field static final TRANSACTION_recoverPassword:I = 0x77

.field static final TRANSACTION_removeActiveAdmin:I = 0x3f

.field static final TRANSACTION_removeCrossProfileWidgetProvider:I = 0xc5

.field static final TRANSACTION_removeKeyPair:I = 0x89

.field static final TRANSACTION_removeUser:I = 0xa7

.field static final TRANSACTION_reportFailedFingerprintAttempt:I = 0x45

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x43

.field static final TRANSACTION_reportKeyguardDismissed:I = 0x47

.field static final TRANSACTION_reportKeyguardSecured:I = 0x48

.field static final TRANSACTION_reportSuccessfulFingerprintAttempt:I = 0x46

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x44

.field static final TRANSACTION_requestBugreport:I = 0x33

.field static final TRANSACTION_resetPassword:I = 0x1c

.field static final TRANSACTION_resetPasswordMDM:I = 0x103

.field static final TRANSACTION_retrievePreRebootSecurityLogs:I = 0xf3

.field static final TRANSACTION_retrieveSecurityLogs:I = 0xf2

.field static final TRANSACTION_satisfyFIPSPassword:I = 0x28

.field static final TRANSACTION_semCheckPassword:I = 0x74

.field static final TRANSACTION_semGetAllowBluetoothMode:I = 0x6d

.field static final TRANSACTION_semGetAllowBrowser:I = 0x69

.field static final TRANSACTION_semGetAllowDesktopSync:I = 0x6f

.field static final TRANSACTION_semGetAllowInternetSharing:I = 0x6b

.field static final TRANSACTION_semGetAllowIrda:I = 0x73

.field static final TRANSACTION_semGetAllowPopImapEmail:I = 0x67

.field static final TRANSACTION_semGetAllowStorageCard:I = 0x5f

.field static final TRANSACTION_semGetAllowTextMessaging:I = 0x65

.field static final TRANSACTION_semGetAllowThirdPartyAppList:I = 0x7c

.field static final TRANSACTION_semGetAllowUnsignedApp:I = 0x80

.field static final TRANSACTION_semGetAllowUnsignedInstallationPackage:I = 0x82

.field static final TRANSACTION_semGetAllowWifi:I = 0x63

.field static final TRANSACTION_semGetBlockPreloadedPackages:I = 0x7e

.field static final TRANSACTION_semGetRequireStorageCardEncryption:I = 0x76

.field static final TRANSACTION_semIsPasswordRecoverable:I = 0x5d

.field static final TRANSACTION_semIsSimplePasswordEnabled:I = 0x61

.field static final TRANSACTION_semSetAllowBluetoothMode:I = 0x6c

.field static final TRANSACTION_semSetAllowBrowser:I = 0x68

.field static final TRANSACTION_semSetAllowDesktopSync:I = 0x6e

.field static final TRANSACTION_semSetAllowInternetSharing:I = 0x6a

.field static final TRANSACTION_semSetAllowIrda:I = 0x72

.field static final TRANSACTION_semSetAllowPopImapEmail:I = 0x66

.field static final TRANSACTION_semSetAllowStorageCard:I = 0x5e

.field static final TRANSACTION_semSetAllowTextMessaging:I = 0x64

.field static final TRANSACTION_semSetAllowThirdPartyAppList:I = 0x7b

.field static final TRANSACTION_semSetAllowUnsignedApp:I = 0x7f

.field static final TRANSACTION_semSetAllowUnsignedInstallationPackage:I = 0x81

.field static final TRANSACTION_semSetAllowWifi:I = 0x62

.field static final TRANSACTION_semSetBlockPreloadedPackages:I = 0x7d

.field static final TRANSACTION_semSetChangeNotificationEnabled:I = 0x78

.field static final TRANSACTION_semSetPasswordRecoverable:I = 0x5c

.field static final TRANSACTION_semSetRequireStorageCardEncryption:I = 0x75

.field static final TRANSACTION_semSetSimplePasswordEnabled:I = 0x60

.field static final TRANSACTION_setAccountManagementDisabled:I = 0xab

.field static final TRANSACTION_setActiveAdmin:I = 0x3a

.field static final TRANSACTION_setActivePasswordState:I = 0x42

.field static final TRANSACTION_setActivePasswordStateForEAS:I = 0x7a

.field static final TRANSACTION_setAdminPermissions:I = 0x79

.field static final TRANSACTION_setAffiliationIds:I = 0xee

.field static final TRANSACTION_setAllowCamera:I = 0x70

.field static final TRANSACTION_setAlternativePasswordState:I = 0x83

.field static final TRANSACTION_setAlternativePasswordStateForEAS:I = 0x84

.field static final TRANSACTION_setAlwaysOnVpnPackage:I = 0x8d

.field static final TRANSACTION_setApplicationHidden:I = 0xa4

.field static final TRANSACTION_setApplicationRestrictions:I = 0x91

.field static final TRANSACTION_setApplicationRestrictionsMDM:I = 0x106

.field static final TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x93

.field static final TRANSACTION_setAutoTimeRequired:I = 0xc7

.field static final TRANSACTION_setBluetoothContactSharingDisabled:I = 0xbf

.field static final TRANSACTION_setCameraDisabled:I = 0x34

.field static final TRANSACTION_setCertInstallerPackage:I = 0x8b

.field static final TRANSACTION_setCrossProfileCallerIdDisabled:I = 0xb8

.field static final TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0xbb

.field static final TRANSACTION_setDeviceOwner:I = 0x49

.field static final TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x55

.field static final TRANSACTION_setForceEphemeralUsers:I = 0xc9

.field static final TRANSACTION_setGlobalProxy:I = 0x22

.field static final TRANSACTION_setGlobalSetting:I = 0xb1

.field static final TRANSACTION_setKeepUninstalledPackages:I = 0xd8

.field static final TRANSACTION_setKeyguardDisabled:I = 0xcf

.field static final TRANSACTION_setKeyguardDisabledFeatures:I = 0x38

.field static final TRANSACTION_setKeyguardDisabledFeaturesMDM:I = 0x105

.field static final TRANSACTION_setLockTaskPackages:I = 0xae

.field static final TRANSACTION_setLongSupportMessage:I = 0xe0

.field static final TRANSACTION_setMasterVolumeMuted:I = 0xb3

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x1a

.field static final TRANSACTION_setMaximumFailedPasswordsForWipeMDM:I = 0x102

.field static final TRANSACTION_setMaximumTimeToLock:I = 0x1d

.field static final TRANSACTION_setMaximumTimeToLockMDM:I = 0x104

.field static final TRANSACTION_setNeedToGetAlternativePasswdForODE:I = 0x31

.field static final TRANSACTION_setOrganizationColor:I = 0xe5

.field static final TRANSACTION_setOrganizationColorForUser:I = 0xe6

.field static final TRANSACTION_setOrganizationName:I = 0xe9

.field static final TRANSACTION_setPackagesSuspended:I = 0x57

.field static final TRANSACTION_setPasswordExpirationTimeout:I = 0x13

.field static final TRANSACTION_setPasswordExpirationTimeoutMDM:I = 0x101

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x11

.field static final TRANSACTION_setPasswordHistoryLengthMDM:I = 0x100

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordMinimumLengthMDM:I = 0xf9

.field static final TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final TRANSACTION_setPasswordMinimumLettersMDM:I = 0xfc

.field static final TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final TRANSACTION_setPasswordMinimumLowerCaseMDM:I = 0xfb

.field static final TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final TRANSACTION_setPasswordMinimumNonLetterMDM:I = 0xff

.field static final TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final TRANSACTION_setPasswordMinimumNumericMDM:I = 0xfd

.field static final TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final TRANSACTION_setPasswordMinimumSymbolsMDM:I = 0xfe

.field static final TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final TRANSACTION_setPasswordMinimumUpperCaseMDM:I = 0xfa

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordQualityMDM:I = 0xf8

.field static final TRANSACTION_setPermissionGrantState:I = 0xd5

.field static final TRANSACTION_setPermissionPolicy:I = 0xd3

.field static final TRANSACTION_setPermittedAccessibilityServices:I = 0x9c

.field static final TRANSACTION_setPermittedInputMethods:I = 0xa0

.field static final TRANSACTION_setProfileEnabled:I = 0x51

.field static final TRANSACTION_setProfileName:I = 0x52

.field static final TRANSACTION_setProfileOwner:I = 0x4e

.field static final TRANSACTION_setPropertyIntoFooter:I = 0x2e

.field static final TRANSACTION_setRecommendedGlobalProxy:I = 0x24

.field static final TRANSACTION_setRestrictionsProvider:I = 0x96

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x36

.field static final TRANSACTION_setSecureSetting:I = 0xb2

.field static final TRANSACTION_setSecurityLoggingEnabled:I = 0xf0

.field static final TRANSACTION_setShortSupportMessage:I = 0xde

.field static final TRANSACTION_setStatusBarDisabled:I = 0xd0

.field static final TRANSACTION_setStorageEncryption:I = 0x25

.field static final TRANSACTION_setSystemUpdatePolicy:I = 0xcd

.field static final TRANSACTION_setTrustAgentConfiguration:I = 0xc2

.field static final TRANSACTION_setUninstallBlocked:I = 0xb6

.field static final TRANSACTION_setUserIcon:I = 0xcc

.field static final TRANSACTION_setUserProvisioningState:I = 0xed

.field static final TRANSACTION_setUserRestriction:I = 0x98

.field static final TRANSACTION_startManagedQuickContact:I = 0xbe

.field static final TRANSACTION_switchUser:I = 0xa8

.field static final TRANSACTION_uninstallCaCerts:I = 0x5a

.field static final TRANSACTION_uninstallPackageWithActiveAdmins:I = 0xf5

.field static final TRANSACTION_wipeData:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 73
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 4442
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 46
    :sswitch_0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 60
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 62
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v30, 0x1

    .line 63
    .local v30, "_arg2":Z
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v4, 0x1

    return v4

    .line 57
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_0
    const/4 v15, 0x0

    .local v15, "_arg0":Landroid/content/ComponentName;
    goto :goto_0

    .line 62
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1
    const/16 v30, 0x0

    goto :goto_1

    .line 69
    .end local v6    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 78
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 80
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v30, 0x1

    .line 81
    .restart local v30    # "_arg2":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 82
    .local v56, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    const/4 v4, 0x1

    return v4

    .line 75
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 80
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_3
    const/16 v30, 0x0

    goto :goto_3

    .line 88
    .end local v6    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 97
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 99
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v30, 0x1

    .line 100
    .restart local v30    # "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v4, 0x1

    return v4

    .line 94
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 99
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_5
    const/16 v30, 0x0

    goto :goto_5

    .line 106
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 115
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 117
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v30, 0x1

    .line 118
    .restart local v30    # "_arg2":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 119
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v4, 0x1

    return v4

    .line 112
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 117
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_7
    const/16 v30, 0x0

    goto :goto_7

    .line 125
    .end local v6    # "_arg1":I
    :sswitch_5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 128
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 134
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 136
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v30, 0x1

    .line 137
    .restart local v30    # "_arg2":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v4, 0x1

    return v4

    .line 131
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8

    .line 136
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_9
    const/16 v30, 0x0

    goto :goto_9

    .line 143
    .end local v6    # "_arg1":I
    :sswitch_6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 146
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 152
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 154
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v30, 0x1

    .line 155
    .restart local v30    # "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 156
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 149
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_b

    .line 162
    .end local v6    # "_arg1":I
    :sswitch_7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 165
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 171
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v30, 0x1

    .line 174
    .restart local v30    # "_arg2":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    const/4 v4, 0x1

    return v4

    .line 168
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 173
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_d
    const/16 v30, 0x0

    goto :goto_d

    .line 180
    .end local v6    # "_arg1":I
    :sswitch_8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 183
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 189
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 191
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v30, 0x1

    .line 192
    .restart local v30    # "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 193
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v4, 0x1

    return v4

    .line 186
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e

    .line 191
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_f
    const/16 v30, 0x0

    goto :goto_f

    .line 199
    .end local v6    # "_arg1":I
    :sswitch_9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 202
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 208
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 210
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v30, 0x1

    .line 211
    .restart local v30    # "_arg2":Z
    :goto_11
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    const/4 v4, 0x1

    return v4

    .line 205
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_10
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10

    .line 210
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_11
    const/16 v30, 0x0

    goto :goto_11

    .line 217
    .end local v6    # "_arg1":I
    :sswitch_a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 220
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 226
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 228
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    const/16 v30, 0x1

    .line 229
    .restart local v30    # "_arg2":Z
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 230
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v4, 0x1

    return v4

    .line 223
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 228
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_13
    const/16 v30, 0x0

    goto :goto_13

    .line 236
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 239
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 245
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 247
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v30, 0x1

    .line 248
    .restart local v30    # "_arg2":Z
    :goto_15
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v4, 0x1

    return v4

    .line 242
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_14
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14

    .line 247
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_15
    const/16 v30, 0x0

    goto :goto_15

    .line 254
    .end local v6    # "_arg1":I
    :sswitch_c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 257
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 263
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 265
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/16 v30, 0x1

    .line 266
    .restart local v30    # "_arg2":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 267
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v4, 0x1

    return v4

    .line 260
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_16
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16

    .line 265
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_17
    const/16 v30, 0x0

    goto :goto_17

    .line 273
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    .line 276
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 282
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 284
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/16 v30, 0x1

    .line 285
    .restart local v30    # "_arg2":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v4, 0x1

    return v4

    .line 279
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_18
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .line 284
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_19
    const/16 v30, 0x0

    goto :goto_19

    .line 291
    .end local v6    # "_arg1":I
    :sswitch_e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 294
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 300
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 302
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v30, 0x1

    .line 303
    .restart local v30    # "_arg2":Z
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 304
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v4, 0x1

    return v4

    .line 297
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_1a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a

    .line 302
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1b
    const/16 v30, 0x0

    goto :goto_1b

    .line 310
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 313
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 319
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 321
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v30, 0x1

    .line 322
    .restart local v30    # "_arg2":Z
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v4, 0x1

    return v4

    .line 316
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_1c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1c

    .line 321
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1d
    const/16 v30, 0x0

    goto :goto_1d

    .line 328
    .end local v6    # "_arg1":I
    :sswitch_10
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    .line 331
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 337
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 339
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v30, 0x1

    .line 340
    .restart local v30    # "_arg2":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 341
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    const/4 v4, 0x1

    return v4

    .line 334
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_1e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1e

    .line 339
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_1f
    const/16 v30, 0x0

    goto :goto_1f

    .line 347
    .end local v6    # "_arg1":I
    :sswitch_11
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 350
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 356
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 358
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/16 v30, 0x1

    .line 359
    .restart local v30    # "_arg2":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v4, 0x1

    return v4

    .line 353
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_20
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_20

    .line 358
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_21
    const/16 v30, 0x0

    goto :goto_21

    .line 365
    .end local v6    # "_arg1":I
    :sswitch_12
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    .line 368
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 374
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 376
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v30, 0x1

    .line 377
    .restart local v30    # "_arg2":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 378
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v4, 0x1

    return v4

    .line 371
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_22
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_22

    .line 376
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_23
    const/16 v30, 0x0

    goto :goto_23

    .line 384
    .end local v6    # "_arg1":I
    :sswitch_13
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_24

    .line 387
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 393
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 395
    .local v28, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    const/16 v30, 0x1

    .line 396
    .restart local v30    # "_arg2":Z
    :goto_25
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v4, 0x1

    return v4

    .line 390
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_24
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_24

    .line 395
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_25
    const/16 v30, 0x0

    goto :goto_25

    .line 402
    .end local v28    # "_arg1":J
    :sswitch_14
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 405
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 411
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 413
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    const/16 v30, 0x1

    .line 414
    .restart local v30    # "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 415
    .local v58, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    const/4 v4, 0x1

    return v4

    .line 408
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_26
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_26

    .line 413
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_27
    const/16 v30, 0x0

    goto :goto_27

    .line 421
    .end local v6    # "_arg1":I
    :sswitch_15
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 424
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 430
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 432
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    const/16 v30, 0x1

    .line 433
    .restart local v30    # "_arg2":Z
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 434
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    const/4 v4, 0x1

    return v4

    .line 427
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_28
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .line 432
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_29
    const/16 v30, 0x0

    goto :goto_29

    .line 440
    .end local v6    # "_arg1":I
    :sswitch_16
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 444
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v49, 0x1

    .line 445
    .local v49, "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(IZ)Z

    move-result v70

    .line 446
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v70, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v4, 0x1

    return v4

    .line 444
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_2a
    const/16 v49, 0x0

    goto :goto_2a

    .line 447
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .line 452
    .end local v5    # "_arg0":I
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_17
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 455
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProfileActivePasswordSufficientForParent(I)Z

    move-result v70

    .line 456
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v70, :cond_2c

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v4, 0x1

    return v4

    .line 457
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2c

    .line 462
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_18
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 466
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v49, 0x1

    .line 467
    .restart local v49    # "_arg1":Z
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v56

    .line 468
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v4, 0x1

    return v4

    .line 466
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_2d
    const/16 v49, 0x0

    goto :goto_2d

    .line 474
    .end local v5    # "_arg0":I
    :sswitch_19
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 478
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    const/16 v49, 0x1

    .line 479
    .restart local v49    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v56

    .line 480
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v4, 0x1

    return v4

    .line 478
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_2e
    const/16 v49, 0x0

    goto :goto_2e

    .line 486
    .end local v5    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    .line 489
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 495
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 497
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    const/16 v30, 0x1

    .line 498
    .restart local v30    # "_arg2":Z
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v4, 0x1

    return v4

    .line 492
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_2f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2f

    .line 497
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_30
    const/16 v30, 0x0

    goto :goto_30

    .line 504
    .end local v6    # "_arg1":I
    :sswitch_1b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    .line 507
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 513
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 515
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    const/16 v30, 0x1

    .line 516
    .restart local v30    # "_arg2":Z
    :goto_32
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 517
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v4, 0x1

    return v4

    .line 510
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_31
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_31

    .line 515
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_32
    const/16 v30, 0x0

    goto :goto_32

    .line 523
    .end local v6    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 527
    .local v27, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v70

    .line 529
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v70, :cond_33

    const/4 v4, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    const/4 v4, 0x1

    return v4

    .line 530
    :cond_33
    const/4 v4, 0x0

    goto :goto_33

    .line 535
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    .line 538
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 544
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 546
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/16 v30, 0x1

    .line 547
    .restart local v30    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    move/from16 v3, v30

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v4, 0x1

    return v4

    .line 541
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    :cond_34
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .line 546
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v28    # "_arg1":J
    :cond_35
    const/16 v30, 0x0

    goto :goto_35

    .line 553
    .end local v28    # "_arg1":J
    :sswitch_1e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_36

    .line 556
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 562
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 564
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    const/16 v30, 0x1

    .line 565
    .restart local v30    # "_arg2":Z
    :goto_37
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v58

    .line 566
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 568
    const/4 v4, 0x1

    return v4

    .line 559
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v58    # "_result":J
    :cond_36
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_36

    .line 564
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_37
    const/16 v30, 0x0

    goto :goto_37

    .line 572
    .end local v6    # "_arg1":I
    :sswitch_1f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 575
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v58

    .line 576
    .restart local v58    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    move-object/from16 v0, p3

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 578
    const/4 v4, 0x1

    return v4

    .line 582
    .end local v5    # "_arg0":I
    .end local v58    # "_result":J
    :sswitch_20
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_38

    const/16 v36, 0x1

    .line 585
    .local v36, "_arg0":Z
    :goto_38
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(Z)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v4, 0x1

    return v4

    .line 584
    .end local v36    # "_arg0":Z
    :cond_38
    const/16 v36, 0x0

    goto :goto_38

    .line 591
    :sswitch_21
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 594
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v4, 0x1

    return v4

    .line 600
    .end local v5    # "_arg0":I
    :sswitch_22
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_39

    .line 603
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 609
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 611
    .local v23, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 612
    .local v53, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v60

    .line 613
    .local v60, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    if-eqz v60, :cond_3a

    .line 615
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 621
    :goto_3a
    const/4 v4, 0x1

    return v4

    .line 606
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_39
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_39

    .line 619
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_3a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 625
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_23
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 628
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v60

    .line 629
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    if-eqz v60, :cond_3b

    .line 631
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 637
    :goto_3b
    const/4 v4, 0x1

    return v4

    .line 635
    :cond_3b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    .line 641
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_24
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 644
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 650
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 651
    sget-object v4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/net/ProxyInfo;

    .line 656
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    const/4 v4, 0x1

    return v4

    .line 647
    :cond_3c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3c

    .line 654
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_3d
    const/16 v42, 0x0

    .local v42, "_arg1":Landroid/net/ProxyInfo;
    goto :goto_3d

    .line 662
    .end local v42    # "_arg1":Landroid/net/ProxyInfo;
    :sswitch_25
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 665
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 671
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v49, 0x1

    .line 672
    .restart local v49    # "_arg1":Z
    :goto_3f
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v56

    .line 673
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v4, 0x1

    return v4

    .line 668
    .end local v49    # "_arg1":Z
    .end local v56    # "_result":I
    :cond_3e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3e

    .line 671
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_3f
    const/16 v49, 0x0

    goto :goto_3f

    .line 679
    :sswitch_26
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 682
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 688
    :goto_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 689
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 690
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v70, :cond_41

    const/4 v4, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v4, 0x1

    return v4

    .line 685
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_40
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_40

    .line 691
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_41
    const/4 v4, 0x0

    goto :goto_41

    .line 696
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_27
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 700
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 701
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v56

    .line 702
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v4, 0x1

    return v4

    .line 708
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v56    # "_result":I
    :sswitch_28
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 711
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->satisfyFIPSPassword(I)Z

    move-result v70

    .line 712
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v70, :cond_42

    const/4 v4, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v4, 0x1

    return v4

    .line 713
    :cond_42
    const/4 v4, 0x0

    goto :goto_42

    .line 718
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43

    .line 721
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 727
    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 728
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 729
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    if-eqz v70, :cond_44

    const/4 v4, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    const/4 v4, 0x1

    return v4

    .line 724
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_43
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_43

    .line 730
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_44
    const/4 v4, 0x0

    goto :goto_44

    .line 735
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 738
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 744
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 745
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 746
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    if-eqz v70, :cond_46

    const/4 v4, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    const/4 v4, 0x1

    return v4

    .line 741
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_45
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_45

    .line 747
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_46
    const/4 v4, 0x0

    goto :goto_46

    .line 752
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47

    .line 755
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 761
    :goto_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 762
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;I)I

    move-result v56

    .line 763
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v4, 0x1

    return v4

    .line 758
    .end local v6    # "_arg1":I
    .end local v56    # "_result":I
    :cond_47
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_47

    .line 769
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    .line 772
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 778
    :goto_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 779
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupportTrustZoneForODE(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 780
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    if-eqz v70, :cond_49

    const/4 v4, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    const/4 v4, 0x1

    return v4

    .line 775
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_48
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_48

    .line 781
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_49
    const/4 v4, 0x0

    goto :goto_49

    .line 786
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4a

    .line 789
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 795
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 796
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupportTrustedBootForODE(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 797
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    if-eqz v70, :cond_4b

    const/4 v4, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v4, 0x1

    return v4

    .line 792
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4a

    .line 798
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_4b
    const/4 v4, 0x0

    goto :goto_4b

    .line 803
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_2e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4c

    .line 806
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 812
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 814
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 816
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 817
    .local v8, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPropertyIntoFooter(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v70

    .line 818
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    if-eqz v70, :cond_4d

    const/4 v4, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    const/4 v4, 0x1

    return v4

    .line 809
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_4c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4c

    .line 819
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_4d
    const/4 v4, 0x0

    goto :goto_4d

    .line 824
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_2f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 827
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 833
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 835
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 836
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPropertyFromFooter(Landroid/content/ComponentName;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v65

    .line 837
    .local v65, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    const/4 v4, 0x1

    return v4

    .line 830
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v65    # "_result":Ljava/lang/String;
    :cond_4e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4e

    .line 843
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_30
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f

    .line 846
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 852
    :goto_4f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 853
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupportFingerprintForODE(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 854
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v70, :cond_50

    const/4 v4, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    const/4 v4, 0x1

    return v4

    .line 849
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_4f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4f

    .line 855
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_50
    const/4 v4, 0x0

    goto :goto_50

    .line 860
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_51

    .line 863
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 869
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    const/16 v49, 0x1

    .line 871
    .local v49, "_arg1":Z
    :goto_52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 872
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;ZI)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    const/4 v4, 0x1

    return v4

    .line 866
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_51
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_51

    .line 869
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_52
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_52

    .line 878
    .end local v49    # "_arg1":Z
    :sswitch_32
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_53

    .line 881
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 887
    :goto_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 888
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 889
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 890
    if-eqz v70, :cond_54

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    const/4 v4, 0x1

    return v4

    .line 884
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_53
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_53

    .line 890
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_54
    const/4 v4, 0x0

    goto :goto_54

    .line 895
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    .line 898
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 903
    :goto_55
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v70

    .line 904
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v70, :cond_56

    const/4 v4, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    const/4 v4, 0x1

    return v4

    .line 901
    .end local v70    # "_result":Z
    :cond_55
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_55

    .line 905
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_56
    const/4 v4, 0x0

    goto :goto_56

    .line 910
    .end local v70    # "_result":Z
    :sswitch_34
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_57

    .line 913
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 919
    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_58

    const/16 v49, 0x1

    .line 920
    .local v49, "_arg1":Z
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    const/4 v4, 0x1

    return v4

    .line 916
    .end local v49    # "_arg1":Z
    :cond_57
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_57

    .line 919
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_58
    const/16 v49, 0x0

    goto :goto_58

    .line 926
    :sswitch_35
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    .line 929
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 935
    :goto_59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 936
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 937
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    if-eqz v70, :cond_5a

    const/4 v4, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v4, 0x1

    return v4

    .line 932
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_59
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_59

    .line 938
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_5a
    const/4 v4, 0x0

    goto :goto_5a

    .line 943
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_36
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5b

    .line 946
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 952
    :goto_5b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    const/16 v49, 0x1

    .line 953
    .restart local v49    # "_arg1":Z
    :goto_5c
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v4, 0x1

    return v4

    .line 949
    .end local v49    # "_arg1":Z
    :cond_5b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5b

    .line 952
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_5c
    const/16 v49, 0x0

    goto :goto_5c

    .line 959
    :sswitch_37
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 962
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 968
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 969
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 970
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    if-eqz v70, :cond_5e

    const/4 v4, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    const/4 v4, 0x1

    return v4

    .line 965
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_5d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5d

    .line 971
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_5e
    const/4 v4, 0x0

    goto :goto_5e

    .line 976
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_38
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5f

    .line 979
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 985
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 987
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_60

    const/16 v30, 0x1

    .line 988
    .restart local v30    # "_arg2":Z
    :goto_60
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V

    .line 989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    const/4 v4, 0x1

    return v4

    .line 982
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    :cond_5f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_5f

    .line 987
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_60
    const/16 v30, 0x0

    goto :goto_60

    .line 994
    .end local v6    # "_arg1":I
    :sswitch_39
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_61

    .line 997
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1003
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1005
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_62

    const/16 v30, 0x1

    .line 1006
    .restart local v30    # "_arg2":Z
    :goto_62
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v15, v6, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v56

    .line 1007
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1009
    const/4 v4, 0x1

    return v4

    .line 1000
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":Z
    .end local v56    # "_result":I
    :cond_61
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_61

    .line 1005
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    :cond_62
    const/16 v30, 0x0

    goto :goto_62

    .line 1013
    .end local v6    # "_arg1":I
    :sswitch_3a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_63

    .line 1016
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1022
    :goto_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_64

    const/16 v49, 0x1

    .line 1024
    .local v49, "_arg1":Z
    :goto_64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1025
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v4, 0x1

    return v4

    .line 1019
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_63
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_63

    .line 1022
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_64
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_64

    .line 1031
    .end local v49    # "_arg1":Z
    :sswitch_3b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_65

    .line 1034
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1040
    :goto_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1041
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1042
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    if-eqz v70, :cond_66

    const/4 v4, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/4 v4, 0x1

    return v4

    .line 1037
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_65
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_65

    .line 1043
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_66
    const/4 v4, 0x0

    goto :goto_66

    .line 1048
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1051
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v67

    .line 1052
    .local v67, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1053
    move-object/from16 v0, p3

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1054
    const/4 v4, 0x1

    return v4

    .line 1058
    .end local v5    # "_arg0":I
    .end local v67    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_3d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1062
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1063
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v70

    .line 1064
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    if-eqz v70, :cond_67

    const/4 v4, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    const/4 v4, 0x1

    return v4

    .line 1065
    :cond_67
    const/4 v4, 0x0

    goto :goto_67

    .line 1070
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_3e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_68

    .line 1073
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1079
    :goto_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_69

    .line 1080
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/RemoteCallback;

    .line 1086
    :goto_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1087
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 1088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    const/4 v4, 0x1

    return v4

    .line 1076
    .end local v7    # "_arg2":I
    :cond_68
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_68

    .line 1083
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_69
    const/16 v44, 0x0

    .local v44, "_arg1":Landroid/os/RemoteCallback;
    goto :goto_69

    .line 1093
    .end local v44    # "_arg1":Landroid/os/RemoteCallback;
    :sswitch_3f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6a

    .line 1096
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1102
    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1103
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1105
    const/4 v4, 0x1

    return v4

    .line 1099
    .end local v6    # "_arg1":I
    :cond_6a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6a

    .line 1109
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_40
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6b

    .line 1112
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1118
    :goto_6b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1119
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 1120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    const/4 v4, 0x1

    return v4

    .line 1115
    .end local v6    # "_arg1":I
    :cond_6b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6b

    .line 1125
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_41
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6c

    .line 1128
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1134
    :goto_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1136
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1137
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v70

    .line 1138
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    if-eqz v70, :cond_6d

    const/4 v4, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1140
    const/4 v4, 0x1

    return v4

    .line 1131
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :cond_6c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6c

    .line 1139
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v70    # "_result":Z
    :cond_6d
    const/4 v4, 0x0

    goto :goto_6d

    .line 1144
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v70    # "_result":Z
    :sswitch_42
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1148
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1150
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1152
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1154
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1156
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1158
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1160
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1162
    .local v12, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .local v13, "_arg8":I
    move-object/from16 v4, p0

    .line 1163
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIIIIIII)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v4, 0x1

    return v4

    .line 1169
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    :sswitch_43
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1172
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(I)V

    .line 1173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    const/4 v4, 0x1

    return v4

    .line 1178
    .end local v5    # "_arg0":I
    :sswitch_44
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1181
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    const/4 v4, 0x1

    return v4

    .line 1187
    .end local v5    # "_arg0":I
    :sswitch_45
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1190
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedFingerprintAttempt(I)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    const/4 v4, 0x1

    return v4

    .line 1196
    .end local v5    # "_arg0":I
    :sswitch_46
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1199
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulFingerprintAttempt(I)V

    .line 1200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    const/4 v4, 0x1

    return v4

    .line 1205
    .end local v5    # "_arg0":I
    :sswitch_47
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1208
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 1209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    const/4 v4, 0x1

    return v4

    .line 1214
    .end local v5    # "_arg0":I
    :sswitch_48
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1217
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    const/4 v4, 0x1

    return v4

    .line 1223
    .end local v5    # "_arg0":I
    :sswitch_49
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6e

    .line 1226
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1232
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1234
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1235
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1236
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    if-eqz v70, :cond_6f

    const/4 v4, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    const/4 v4, 0x1

    return v4

    .line 1229
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_6e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6e

    .line 1237
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_6f
    const/4 v4, 0x0

    goto :goto_6f

    .line 1242
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_4a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_70

    const/16 v36, 0x1

    .line 1245
    .restart local v36    # "_arg0":Z
    :goto_70
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v60

    .line 1246
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    if-eqz v60, :cond_71

    .line 1248
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1254
    :goto_71
    const/4 v4, 0x1

    return v4

    .line 1244
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :cond_70
    const/16 v36, 0x0

    goto :goto_70

    .line 1252
    .restart local v36    # "_arg0":Z
    .restart local v60    # "_result":Landroid/content/ComponentName;
    :cond_71
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    .line 1258
    .end local v36    # "_arg0":Z
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_4b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v65

    .line 1260
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1261
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1262
    const/4 v4, 0x1

    return v4

    .line 1266
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_4c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 1269
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1271
    const/4 v4, 0x1

    return v4

    .line 1275
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_4d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result v56

    .line 1277
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1279
    const/4 v4, 0x1

    return v4

    .line 1283
    .end local v56    # "_result":I
    :sswitch_4e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    .line 1286
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1292
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1294
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1295
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1296
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    if-eqz v70, :cond_73

    const/4 v4, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    const/4 v4, 0x1

    return v4

    .line 1289
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_72
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_72

    .line 1297
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_73
    const/4 v4, 0x0

    goto :goto_73

    .line 1302
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_4f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1305
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v60

    .line 1306
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    if-eqz v60, :cond_74

    .line 1308
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1309
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1314
    :goto_74
    const/4 v4, 0x1

    return v4

    .line 1312
    :cond_74
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_74

    .line 1318
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_50
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1321
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v65

    .line 1322
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1324
    const/4 v4, 0x1

    return v4

    .line 1328
    .end local v5    # "_arg0":I
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    .line 1331
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1336
    :goto_75
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 1337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    const/4 v4, 0x1

    return v4

    .line 1334
    :cond_75
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_75

    .line 1342
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_52
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_76

    .line 1345
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1351
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1352
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 1353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1354
    const/4 v4, 0x1

    return v4

    .line 1348
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_76
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_76

    .line 1358
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_53
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_77

    .line 1361
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1366
    :goto_77
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    const/4 v4, 0x1

    return v4

    .line 1364
    :cond_77
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_77

    .line 1372
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_54
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result v70

    .line 1374
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    if-eqz v70, :cond_78

    const/4 v4, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    const/4 v4, 0x1

    return v4

    .line 1375
    :cond_78
    const/4 v4, 0x0

    goto :goto_78

    .line 1380
    .end local v70    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    .line 1383
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1389
    :goto_79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7a

    .line 1390
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 1395
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    const/4 v4, 0x1

    return v4

    .line 1386
    :cond_79
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_79

    .line 1393
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_7a
    const/16 v46, 0x0

    .local v46, "_arg1":Ljava/lang/CharSequence;
    goto :goto_7a

    .line 1401
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_56
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v64

    .line 1403
    .local v64, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    if-eqz v64, :cond_7b

    .line 1405
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1406
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1411
    :goto_7b
    const/4 v4, 0x1

    return v4

    .line 1409
    :cond_7b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7b

    .line 1415
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_57
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7c

    .line 1418
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1424
    :goto_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 1426
    .local v50, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7d

    const/16 v30, 0x1

    .line 1427
    .restart local v30    # "_arg2":Z
    :goto_7d
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v71

    .line 1428
    .local v71, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1429
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1430
    const/4 v4, 0x1

    return v4

    .line 1421
    .end local v30    # "_arg2":Z
    .end local v50    # "_arg1":[Ljava/lang/String;
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_7c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7c

    .line 1426
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v50    # "_arg1":[Ljava/lang/String;
    :cond_7d
    const/16 v30, 0x0

    goto :goto_7d

    .line 1434
    .end local v50    # "_arg1":[Ljava/lang/String;
    :sswitch_58
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e

    .line 1437
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1443
    :goto_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1444
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 1445
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1446
    if-eqz v70, :cond_7f

    const/4 v4, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1447
    const/4 v4, 0x1

    return v4

    .line 1440
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_7e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_7e

    .line 1446
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_7f
    const/4 v4, 0x0

    goto :goto_7f

    .line 1451
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_59
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_80

    .line 1454
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1460
    :goto_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1461
    .local v16, "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;[B)Z

    move-result v70

    .line 1462
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    if-eqz v70, :cond_81

    const/4 v4, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    const/4 v4, 0x1

    return v4

    .line 1457
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :cond_80
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_80

    .line 1463
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v70    # "_result":Z
    :cond_81
    const/4 v4, 0x0

    goto :goto_81

    .line 1468
    .end local v16    # "_arg1":[B
    .end local v70    # "_result":Z
    :sswitch_5a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_82

    .line 1471
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1477
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 1478
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    const/4 v4, 0x1

    return v4

    .line 1474
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_82
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_82

    .line 1484
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_83

    .line 1487
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1492
    :goto_83
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    const/4 v4, 0x1

    return v4

    .line 1490
    :cond_83
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_83

    .line 1498
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_5c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_84

    .line 1501
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1507
    :goto_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_85

    const/16 v49, 0x1

    .line 1509
    .restart local v49    # "_arg1":Z
    :goto_85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1510
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetPasswordRecoverable(Landroid/content/ComponentName;ZI)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v4, 0x1

    return v4

    .line 1504
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_84
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_84

    .line 1507
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_85
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_85

    .line 1516
    .end local v49    # "_arg1":Z
    :sswitch_5d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_86

    .line 1519
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1525
    :goto_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1526
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semIsPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1527
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    if-eqz v70, :cond_87

    const/4 v4, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1529
    const/4 v4, 0x1

    return v4

    .line 1522
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_86
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_86

    .line 1528
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_87
    const/4 v4, 0x0

    goto :goto_87

    .line 1533
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_5e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_88

    .line 1536
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1542
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    const/16 v49, 0x1

    .line 1544
    .restart local v49    # "_arg1":Z
    :goto_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1545
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowStorageCard(Landroid/content/ComponentName;ZI)V

    .line 1546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    const/4 v4, 0x1

    return v4

    .line 1539
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_88
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_88

    .line 1542
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_89
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_89

    .line 1551
    .end local v49    # "_arg1":Z
    :sswitch_5f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8a

    .line 1554
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1560
    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1561
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowStorageCard(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1562
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    if-eqz v70, :cond_8b

    const/4 v4, 0x1

    :goto_8b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    const/4 v4, 0x1

    return v4

    .line 1557
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_8a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8a

    .line 1563
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_8b
    const/4 v4, 0x0

    goto :goto_8b

    .line 1568
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_60
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8c

    .line 1571
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1577
    :goto_8c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8d

    const/16 v49, 0x1

    .line 1579
    .restart local v49    # "_arg1":Z
    :goto_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1580
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V

    .line 1581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    const/4 v4, 0x1

    return v4

    .line 1574
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_8c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8c

    .line 1577
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_8d
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_8d

    .line 1586
    .end local v49    # "_arg1":Z
    :sswitch_61
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8e

    .line 1589
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1595
    :goto_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1596
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1597
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    if-eqz v70, :cond_8f

    const/4 v4, 0x1

    :goto_8f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    const/4 v4, 0x1

    return v4

    .line 1592
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_8e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_8e

    .line 1598
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_8f
    const/4 v4, 0x0

    goto :goto_8f

    .line 1603
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_62
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    .line 1606
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1612
    :goto_90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_91

    const/16 v49, 0x1

    .line 1614
    .restart local v49    # "_arg1":Z
    :goto_91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1615
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowWifi(Landroid/content/ComponentName;ZI)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    const/4 v4, 0x1

    return v4

    .line 1609
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_90
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_90

    .line 1612
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_91
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_91

    .line 1621
    .end local v49    # "_arg1":Z
    :sswitch_63
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_92

    .line 1624
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1630
    :goto_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1631
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1632
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    if-eqz v70, :cond_93

    const/4 v4, 0x1

    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1634
    const/4 v4, 0x1

    return v4

    .line 1627
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_92
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_92

    .line 1633
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_93
    const/4 v4, 0x0

    goto :goto_93

    .line 1638
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_64
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_94

    .line 1641
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1647
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_95

    const/16 v49, 0x1

    .line 1649
    .restart local v49    # "_arg1":Z
    :goto_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1650
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowTextMessaging(Landroid/content/ComponentName;ZI)V

    .line 1651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1652
    const/4 v4, 0x1

    return v4

    .line 1644
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_94
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_94

    .line 1647
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_95
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_95

    .line 1656
    .end local v49    # "_arg1":Z
    :sswitch_65
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_96

    .line 1659
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1665
    :goto_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1666
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowTextMessaging(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1667
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1668
    if-eqz v70, :cond_97

    const/4 v4, 0x1

    :goto_97
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    const/4 v4, 0x1

    return v4

    .line 1662
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_96
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_96

    .line 1668
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_97
    const/4 v4, 0x0

    goto :goto_97

    .line 1673
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_66
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_98

    .line 1676
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1682
    :goto_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_99

    const/16 v49, 0x1

    .line 1684
    .restart local v49    # "_arg1":Z
    :goto_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1685
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowPopImapEmail(Landroid/content/ComponentName;ZI)V

    .line 1686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    const/4 v4, 0x1

    return v4

    .line 1679
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_98
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_98

    .line 1682
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_99
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_99

    .line 1691
    .end local v49    # "_arg1":Z
    :sswitch_67
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9a

    .line 1694
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1700
    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1701
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowPopImapEmail(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1702
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    if-eqz v70, :cond_9b

    const/4 v4, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    const/4 v4, 0x1

    return v4

    .line 1697
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_9a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9a

    .line 1703
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_9b
    const/4 v4, 0x0

    goto :goto_9b

    .line 1708
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_68
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9c

    .line 1711
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1717
    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9d

    const/16 v49, 0x1

    .line 1719
    .restart local v49    # "_arg1":Z
    :goto_9d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1720
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowBrowser(Landroid/content/ComponentName;ZI)V

    .line 1721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    const/4 v4, 0x1

    return v4

    .line 1714
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_9c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9c

    .line 1717
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_9d
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_9d

    .line 1726
    .end local v49    # "_arg1":Z
    :sswitch_69
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9e

    .line 1729
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1735
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1736
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1737
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    if-eqz v70, :cond_9f

    const/4 v4, 0x1

    :goto_9f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    const/4 v4, 0x1

    return v4

    .line 1732
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_9e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_9e

    .line 1738
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_9f
    const/4 v4, 0x0

    goto :goto_9f

    .line 1743
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_6a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a0

    .line 1746
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1752
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a1

    const/16 v49, 0x1

    .line 1754
    .restart local v49    # "_arg1":Z
    :goto_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1755
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowInternetSharing(Landroid/content/ComponentName;ZI)V

    .line 1756
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1757
    const/4 v4, 0x1

    return v4

    .line 1749
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_a0
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a0

    .line 1752
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_a1
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_a1

    .line 1761
    .end local v49    # "_arg1":Z
    :sswitch_6b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a2

    .line 1764
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1770
    :goto_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1771
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1772
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    if-eqz v70, :cond_a3

    const/4 v4, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1774
    const/4 v4, 0x1

    return v4

    .line 1767
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_a2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a2

    .line 1773
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_a3
    const/4 v4, 0x0

    goto :goto_a3

    .line 1778
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_6c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a4

    .line 1781
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1787
    :goto_a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1789
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1790
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowBluetoothMode(Landroid/content/ComponentName;II)V

    .line 1791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    const/4 v4, 0x1

    return v4

    .line 1784
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_a4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a4

    .line 1796
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a5

    .line 1799
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1805
    :goto_a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1806
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v56

    .line 1807
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1809
    const/4 v4, 0x1

    return v4

    .line 1802
    .end local v6    # "_arg1":I
    .end local v56    # "_result":I
    :cond_a5
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a5

    .line 1813
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a6

    .line 1816
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1822
    :goto_a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    const/16 v49, 0x1

    .line 1824
    .restart local v49    # "_arg1":Z
    :goto_a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1825
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowDesktopSync(Landroid/content/ComponentName;ZI)V

    .line 1826
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1827
    const/4 v4, 0x1

    return v4

    .line 1819
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_a6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a6

    .line 1822
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_a7
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_a7

    .line 1831
    .end local v49    # "_arg1":Z
    :sswitch_6f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a8

    .line 1834
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1840
    :goto_a8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1841
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowDesktopSync(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1842
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1843
    if-eqz v70, :cond_a9

    const/4 v4, 0x1

    :goto_a9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    const/4 v4, 0x1

    return v4

    .line 1837
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_a8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_a8

    .line 1843
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_a9
    const/4 v4, 0x0

    goto :goto_a9

    .line 1848
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_70
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_aa

    .line 1851
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1857
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ab

    const/16 v49, 0x1

    .line 1859
    .restart local v49    # "_arg1":Z
    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1860
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;ZI)V

    .line 1861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    const/4 v4, 0x1

    return v4

    .line 1854
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_aa
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_aa

    .line 1857
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ab
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_ab

    .line 1866
    .end local v49    # "_arg1":Z
    :sswitch_71
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ac

    .line 1869
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1875
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1876
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCamera(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1877
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1878
    if-eqz v70, :cond_ad

    const/4 v4, 0x1

    :goto_ad
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1879
    const/4 v4, 0x1

    return v4

    .line 1872
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_ac
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ac

    .line 1878
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_ad
    const/4 v4, 0x0

    goto :goto_ad

    .line 1883
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_72
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1885
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ae

    .line 1886
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1892
    :goto_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_af

    const/16 v49, 0x1

    .line 1894
    .restart local v49    # "_arg1":Z
    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1895
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowIrda(Landroid/content/ComponentName;ZI)V

    .line 1896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    const/4 v4, 0x1

    return v4

    .line 1889
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_ae
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ae

    .line 1892
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_af
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_af

    .line 1901
    .end local v49    # "_arg1":Z
    :sswitch_73
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1903
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b0

    .line 1904
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1910
    :goto_b0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1911
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowIrda(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1912
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    if-eqz v70, :cond_b1

    const/4 v4, 0x1

    :goto_b1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    const/4 v4, 0x1

    return v4

    .line 1907
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_b0
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b0

    .line 1913
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_b1
    const/4 v4, 0x0

    goto :goto_b1

    .line 1918
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_74
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b2

    .line 1921
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1927
    :goto_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1929
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1930
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semCheckPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 1931
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    if-eqz v70, :cond_b3

    const/4 v4, 0x1

    :goto_b3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1933
    const/4 v4, 0x1

    return v4

    .line 1924
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_b2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b2

    .line 1932
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_b3
    const/4 v4, 0x0

    goto :goto_b3

    .line 1937
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_75
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b4

    .line 1940
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1946
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b5

    const/16 v49, 0x1

    .line 1948
    .restart local v49    # "_arg1":Z
    :goto_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1949
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V

    .line 1950
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1951
    const/4 v4, 0x1

    return v4

    .line 1943
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_b4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b4

    .line 1946
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b5
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_b5

    .line 1955
    .end local v49    # "_arg1":Z
    :sswitch_76
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b6

    .line 1958
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1964
    :goto_b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1965
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 1966
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    if-eqz v70, :cond_b7

    const/4 v4, 0x1

    :goto_b7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    const/4 v4, 0x1

    return v4

    .line 1961
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_b6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b6

    .line 1967
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_b7
    const/4 v4, 0x0

    goto :goto_b7

    .line 1972
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_77
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1975
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->recoverPassword(I)V

    .line 1976
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1977
    const/4 v4, 0x1

    return v4

    .line 1981
    .end local v5    # "_arg0":I
    :sswitch_78
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b8

    .line 1984
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 1990
    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b9

    const/16 v49, 0x1

    .line 1992
    .restart local v49    # "_arg1":Z
    :goto_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1993
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetChangeNotificationEnabled(Landroid/content/ComponentName;ZI)V

    .line 1994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1995
    const/4 v4, 0x1

    return v4

    .line 1987
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_b8
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b8

    .line 1990
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_b9
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_b9

    .line 1999
    .end local v49    # "_arg1":Z
    :sswitch_79
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2001
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ba

    .line 2002
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2008
    :goto_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2009
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAdminPermissions(Landroid/content/ComponentName;I)V

    .line 2010
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2011
    const/4 v4, 0x1

    return v4

    .line 2005
    .end local v6    # "_arg1":I
    :cond_ba
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ba

    .line 2015
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2019
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2021
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2023
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2025
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2027
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2029
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2031
    .restart local v11    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2033
    .restart local v12    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .restart local v13    # "_arg8":I
    move-object/from16 v4, p0

    .line 2034
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordStateForEAS(IIIIIIIII)V

    .line 2035
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2036
    const/4 v4, 0x1

    return v4

    .line 2040
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    .end local v13    # "_arg8":I
    :sswitch_7b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bb

    .line 2043
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2049
    :goto_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2051
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2052
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowThirdPartyAppList(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 2053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    const/4 v4, 0x1

    return v4

    .line 2046
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_bb
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bb

    .line 2058
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2060
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bc

    .line 2061
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2067
    :goto_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2068
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowThirdPartyAppList(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v65

    .line 2069
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2071
    const/4 v4, 0x1

    return v4

    .line 2064
    .end local v6    # "_arg1":I
    .end local v65    # "_result":Ljava/lang/String;
    :cond_bc
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bc

    .line 2075
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bd

    .line 2078
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2084
    :goto_bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2086
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2087
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetBlockPreloadedPackages(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 2088
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2089
    const/4 v4, 0x1

    return v4

    .line 2081
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_bd
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bd

    .line 2093
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2095
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_be

    .line 2096
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2102
    :goto_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2103
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetBlockPreloadedPackages(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v65

    .line 2104
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2106
    const/4 v4, 0x1

    return v4

    .line 2099
    .end local v6    # "_arg1":I
    .end local v65    # "_result":Ljava/lang/String;
    :cond_be
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_be

    .line 2110
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_bf

    .line 2113
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2119
    :goto_bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c0

    const/16 v49, 0x1

    .line 2121
    .restart local v49    # "_arg1":Z
    :goto_c0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2122
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowUnsignedApp(Landroid/content/ComponentName;ZI)V

    .line 2123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    const/4 v4, 0x1

    return v4

    .line 2116
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_bf
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_bf

    .line 2119
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_c0
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_c0

    .line 2128
    .end local v49    # "_arg1":Z
    :sswitch_80
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c1

    .line 2131
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2137
    :goto_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2138
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowUnsignedApp(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 2139
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    if-eqz v70, :cond_c2

    const/4 v4, 0x1

    :goto_c2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    const/4 v4, 0x1

    return v4

    .line 2134
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_c1
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c1

    .line 2140
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_c2
    const/4 v4, 0x0

    goto :goto_c2

    .line 2145
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_81
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c3

    .line 2148
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2154
    :goto_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c4

    const/16 v49, 0x1

    .line 2156
    .restart local v49    # "_arg1":Z
    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2157
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->semSetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;ZI)V

    .line 2158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    const/4 v4, 0x1

    return v4

    .line 2151
    .end local v7    # "_arg2":I
    .end local v49    # "_arg1":Z
    :cond_c3
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c3

    .line 2154
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_c4
    const/16 v49, 0x0

    .restart local v49    # "_arg1":Z
    goto :goto_c4

    .line 2163
    .end local v49    # "_arg1":Z
    :sswitch_82
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c5

    .line 2166
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2172
    :goto_c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2173
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 2174
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    if-eqz v70, :cond_c6

    const/4 v4, 0x1

    :goto_c6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    const/4 v4, 0x1

    return v4

    .line 2169
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_c5
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c5

    .line 2175
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_c6
    const/4 v4, 0x0

    goto :goto_c6

    .line 2180
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_83
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2184
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2186
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2188
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2190
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2192
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2194
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2196
    .restart local v11    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg7":I
    move-object/from16 v4, p0

    .line 2197
    invoke-virtual/range {v4 .. v12}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlternativePasswordState(IIIIIIII)V

    .line 2198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    const/4 v4, 0x1

    return v4

    .line 2203
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    :sswitch_84
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2207
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2209
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2211
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2213
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2215
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2217
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 2219
    .restart local v11    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .restart local v12    # "_arg7":I
    move-object/from16 v4, p0

    .line 2220
    invoke-virtual/range {v4 .. v12}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlternativePasswordStateForEAS(IIIIIIII)V

    .line 2221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    const/4 v4, 0x1

    return v4

    .line 2226
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    :sswitch_85
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2229
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->copyAlternativeToActivePasswordState(I)V

    .line 2230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    const/4 v4, 0x1

    return v4

    .line 2235
    .end local v5    # "_arg0":I
    :sswitch_86
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2239
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2241
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c7

    const/16 v30, 0x1

    .line 2242
    .restart local v30    # "_arg2":Z
    :goto_c7
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v70

    .line 2243
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    if-eqz v70, :cond_c8

    const/4 v4, 0x1

    :goto_c8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2245
    const/4 v4, 0x1

    return v4

    .line 2241
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_c7
    const/16 v30, 0x0

    goto :goto_c7

    .line 2244
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_c8
    const/4 v4, 0x0

    goto :goto_c8

    .line 2249
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_87
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2253
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2254
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v70

    .line 2255
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    if-eqz v70, :cond_c9

    const/4 v4, 0x1

    :goto_c9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    const/4 v4, 0x1

    return v4

    .line 2256
    :cond_c9
    const/4 v4, 0x0

    goto :goto_c9

    .line 2261
    .end local v6    # "_arg1":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_88
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ca

    .line 2264
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2270
    :goto_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 2272
    .restart local v16    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    .line 2274
    .local v17, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 2276
    .local v18, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 2278
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cb

    const/16 v20, 0x1

    .local v20, "_arg5":Z
    :goto_cb
    move-object/from16 v14, p0

    .line 2279
    invoke-virtual/range {v14 .. v20}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;[B[B[BLjava/lang/String;Z)Z

    move-result v70

    .line 2280
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2281
    if-eqz v70, :cond_cc

    const/4 v4, 0x1

    :goto_cc
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2282
    const/4 v4, 0x1

    return v4

    .line 2267
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :cond_ca
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ca

    .line 2278
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v16    # "_arg1":[B
    .restart local v17    # "_arg2":[B
    .restart local v18    # "_arg3":[B
    .restart local v19    # "_arg4":Ljava/lang/String;
    :cond_cb
    const/16 v20, 0x0

    goto :goto_cb

    .line 2281
    .restart local v20    # "_arg5":Z
    .restart local v70    # "_result":Z
    :cond_cc
    const/4 v4, 0x0

    goto :goto_cc

    .line 2286
    .end local v16    # "_arg1":[B
    .end local v17    # "_arg2":[B
    .end local v18    # "_arg3":[B
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Z
    .end local v70    # "_result":Z
    :sswitch_89
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cd

    .line 2289
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2295
    :goto_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2296
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 2297
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2298
    if-eqz v70, :cond_ce

    const/4 v4, 0x1

    :goto_ce
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    const/4 v4, 0x1

    return v4

    .line 2292
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_cd
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_cd

    .line 2298
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_ce
    const/4 v4, 0x0

    goto :goto_ce

    .line 2303
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_8a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2307
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cf

    .line 2308
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/net/Uri;

    .line 2314
    :goto_cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2316
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .line 2317
    .local v54, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2319
    const/4 v4, 0x1

    return v4

    .line 2311
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v54    # "_arg3":Landroid/os/IBinder;
    :cond_cf
    const/16 v43, 0x0

    .local v43, "_arg1":Landroid/net/Uri;
    goto :goto_cf

    .line 2323
    .end local v5    # "_arg0":I
    .end local v43    # "_arg1":Landroid/net/Uri;
    :sswitch_8b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2325
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d0

    .line 2326
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2332
    :goto_d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2333
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    const/4 v4, 0x1

    return v4

    .line 2329
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_d0
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d0

    .line 2339
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d1

    .line 2342
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2347
    :goto_d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 2348
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2349
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2350
    const/4 v4, 0x1

    return v4

    .line 2345
    .end local v65    # "_result":Ljava/lang/String;
    :cond_d1
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d1

    .line 2354
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d2

    .line 2357
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2363
    :goto_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2365
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    const/16 v30, 0x1

    .line 2366
    .restart local v30    # "_arg2":Z
    :goto_d3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v70

    .line 2367
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    if-eqz v70, :cond_d4

    const/4 v4, 0x1

    :goto_d4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2369
    const/4 v4, 0x1

    return v4

    .line 2360
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_d2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d2

    .line 2365
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_d3
    const/16 v30, 0x0

    goto :goto_d3

    .line 2368
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_d4
    const/4 v4, 0x0

    goto :goto_d4

    .line 2373
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_8e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d5

    .line 2376
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2381
    :goto_d5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 2382
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2383
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2384
    const/4 v4, 0x1

    return v4

    .line 2379
    .end local v65    # "_result":Ljava/lang/String;
    :cond_d5
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d5

    .line 2388
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d6

    .line 2391
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2397
    :goto_d6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d7

    .line 2398
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/IntentFilter;

    .line 2404
    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d8

    .line 2405
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ComponentName;

    .line 2410
    :goto_d8
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 2411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2412
    const/4 v4, 0x1

    return v4

    .line 2394
    :cond_d6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d6

    .line 2401
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_d7
    const/16 v40, 0x0

    .local v40, "_arg1":Landroid/content/IntentFilter;
    goto :goto_d7

    .line 2408
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :cond_d8
    const/16 v24, 0x0

    .local v24, "_arg2":Landroid/content/ComponentName;
    goto :goto_d8

    .line 2416
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :sswitch_90
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d9

    .line 2419
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2425
    :goto_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2426
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2428
    const/4 v4, 0x1

    return v4

    .line 2422
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_d9
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_d9

    .line 2432
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_91
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_da

    .line 2435
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2441
    :goto_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2443
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_db

    .line 2444
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Bundle;

    .line 2449
    :goto_db
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2451
    const/4 v4, 0x1

    return v4

    .line 2438
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_da
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_da

    .line 2447
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_db
    const/16 v51, 0x0

    .local v51, "_arg2":Landroid/os/Bundle;
    goto :goto_db

    .line 2455
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v51    # "_arg2":Landroid/os/Bundle;
    :sswitch_92
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_dc

    .line 2458
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2464
    :goto_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2465
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v62

    .line 2466
    .local v62, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2467
    if-eqz v62, :cond_dd

    .line 2468
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    const/4 v4, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2474
    :goto_dd
    const/4 v4, 0x1

    return v4

    .line 2461
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_dc
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_dc

    .line 2472
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_dd
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_dd

    .line 2478
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_93
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_de

    .line 2481
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2487
    :goto_de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2488
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 2489
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2490
    if-eqz v70, :cond_df

    const/4 v4, 0x1

    :goto_df
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2491
    const/4 v4, 0x1

    return v4

    .line 2484
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_de
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_de

    .line 2490
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_df
    const/4 v4, 0x0

    goto :goto_df

    .line 2495
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_94
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e0

    .line 2498
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2503
    :goto_e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 2504
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2505
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2506
    const/4 v4, 0x1

    return v4

    .line 2501
    .end local v65    # "_result":Ljava/lang/String;
    :cond_e0
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e0

    .line 2510
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_95
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2511
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage()Z

    move-result v70

    .line 2512
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2513
    if-eqz v70, :cond_e1

    const/4 v4, 0x1

    :goto_e1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2514
    const/4 v4, 0x1

    return v4

    .line 2513
    :cond_e1
    const/4 v4, 0x0

    goto :goto_e1

    .line 2518
    .end local v70    # "_result":Z
    :sswitch_96
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e2

    .line 2521
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2527
    :goto_e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e3

    .line 2528
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 2533
    :goto_e3
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 2534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    const/4 v4, 0x1

    return v4

    .line 2524
    :cond_e2
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e2

    .line 2531
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_e3
    const/16 v38, 0x0

    .local v38, "_arg1":Landroid/content/ComponentName;
    goto :goto_e3

    .line 2539
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :sswitch_97
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2541
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2542
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object v60

    .line 2543
    .restart local v60    # "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2544
    if-eqz v60, :cond_e4

    .line 2545
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    const/4 v4, 0x1

    move-object/from16 v0, v60

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2551
    :goto_e4
    const/4 v4, 0x1

    return v4

    .line 2549
    :cond_e4
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e4

    .line 2555
    .end local v5    # "_arg0":I
    .end local v60    # "_result":Landroid/content/ComponentName;
    :sswitch_98
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e5

    .line 2558
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2564
    :goto_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2566
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e6

    const/16 v30, 0x1

    .line 2567
    .restart local v30    # "_arg2":Z
    :goto_e6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2568
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2569
    const/4 v4, 0x1

    return v4

    .line 2561
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_e5
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e5

    .line 2566
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_e6
    const/16 v30, 0x0

    goto :goto_e6

    .line 2573
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_99
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2575
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e7

    .line 2576
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2581
    :goto_e7
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v62

    .line 2582
    .restart local v62    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2583
    if-eqz v62, :cond_e8

    .line 2584
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2585
    const/4 v4, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2590
    :goto_e8
    const/4 v4, 0x1

    return v4

    .line 2579
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_e7
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e7

    .line 2588
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_e8
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e8

    .line 2594
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_9a
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e9

    .line 2597
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2603
    :goto_e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ea

    .line 2604
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/IntentFilter;

    .line 2610
    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2611
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V

    .line 2612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    const/4 v4, 0x1

    return v4

    .line 2600
    .end local v7    # "_arg2":I
    :cond_e9
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_e9

    .line 2607
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_ea
    const/16 v40, 0x0

    .restart local v40    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_ea

    .line 2617
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_9b
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_eb

    .line 2620
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2625
    :goto_eb
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 2626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2627
    const/4 v4, 0x1

    return v4

    .line 2623
    :cond_eb
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_eb

    .line 2631
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9c
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ec

    .line 2634
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2640
    :goto_ec
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v72

    .line 2641
    .local v72, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v47

    .line 2642
    .local v47, "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v70

    .line 2643
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2644
    if-eqz v70, :cond_ed

    const/4 v4, 0x1

    :goto_ed
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2645
    const/4 v4, 0x1

    return v4

    .line 2637
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_ec
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ec

    .line 2644
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_ed
    const/4 v4, 0x0

    goto :goto_ed

    .line 2649
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_9d
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ee

    .line 2652
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2657
    :goto_ee
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v66

    .line 2658
    .local v66, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2660
    const/4 v4, 0x1

    return v4

    .line 2655
    .end local v66    # "_result":Ljava/util/List;
    :cond_ee
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ee

    .line 2664
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_9e
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2667
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v66

    .line 2668
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2670
    const/4 v4, 0x1

    return v4

    .line 2674
    .end local v5    # "_arg0":I
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_9f
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2676
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ef

    .line 2677
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2683
    :goto_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2685
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2686
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 2687
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    if-eqz v70, :cond_f0

    const/4 v4, 0x1

    :goto_f0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2689
    const/4 v4, 0x1

    return v4

    .line 2680
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_ef
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ef

    .line 2688
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_f0
    const/4 v4, 0x0

    goto :goto_f0

    .line 2693
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f1

    .line 2696
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2702
    :goto_f1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v72

    .line 2703
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v47

    .line 2704
    .restart local v47    # "_arg1":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v70

    .line 2705
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    if-eqz v70, :cond_f2

    const/4 v4, 0x1

    :goto_f2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2707
    const/4 v4, 0x1

    return v4

    .line 2699
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_f1
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f1

    .line 2706
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v47    # "_arg1":Ljava/util/List;
    .restart local v70    # "_result":Z
    .restart local v72    # "cl":Ljava/lang/ClassLoader;
    :cond_f2
    const/4 v4, 0x0

    goto :goto_f2

    .line 2711
    .end local v47    # "_arg1":Ljava/util/List;
    .end local v70    # "_result":Z
    .end local v72    # "cl":Ljava/lang/ClassLoader;
    :sswitch_a1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f3

    .line 2714
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2719
    :goto_f3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v66

    .line 2720
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2721
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2722
    const/4 v4, 0x1

    return v4

    .line 2717
    .end local v66    # "_result":Ljava/util/List;
    :cond_f3
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f3

    .line 2726
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_a2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2727
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v66

    .line 2728
    .restart local v66    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2729
    move-object/from16 v0, p3

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2730
    const/4 v4, 0x1

    return v4

    .line 2734
    .end local v66    # "_result":Ljava/util/List;
    :sswitch_a3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f4

    .line 2737
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2743
    :goto_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2745
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2746
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v70

    .line 2747
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2748
    if-eqz v70, :cond_f5

    const/4 v4, 0x1

    :goto_f5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    const/4 v4, 0x1

    return v4

    .line 2740
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_f4
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f4

    .line 2748
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_f5
    const/4 v4, 0x0

    goto :goto_f5

    .line 2753
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2755
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f6

    .line 2756
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2762
    :goto_f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2764
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f7

    const/16 v30, 0x1

    .line 2765
    .restart local v30    # "_arg2":Z
    :goto_f7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v70

    .line 2766
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2767
    if-eqz v70, :cond_f8

    const/4 v4, 0x1

    :goto_f8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    const/4 v4, 0x1

    return v4

    .line 2759
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :cond_f6
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f6

    .line 2764
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_f7
    const/16 v30, 0x0

    goto :goto_f7

    .line 2767
    .restart local v30    # "_arg2":Z
    .restart local v70    # "_result":Z
    :cond_f8
    const/4 v4, 0x0

    goto :goto_f8

    .line 2772
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    .end local v70    # "_result":Z
    :sswitch_a5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f9

    .line 2775
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2781
    :goto_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2782
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 2783
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2784
    if-eqz v70, :cond_fa

    const/4 v4, 0x1

    :goto_fa
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    const/4 v4, 0x1

    return v4

    .line 2778
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_f9
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_f9

    .line 2784
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_fa
    const/4 v4, 0x0

    goto :goto_fa

    .line 2789
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_a6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fb

    .line 2792
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2798
    :goto_fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2800
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fc

    .line 2801
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ComponentName;

    .line 2807
    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_fd

    .line 2808
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/PersistableBundle;

    .line 2814
    :goto_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9    # "_arg4":I
    move-object/from16 v21, p0

    move-object/from16 v22, v15

    move/from16 v26, v9

    .line 2815
    invoke-virtual/range {v21 .. v26}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v63

    .line 2816
    .local v63, "_result":Landroid/os/UserHandle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2817
    if-eqz v63, :cond_fe

    .line 2818
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2819
    const/4 v4, 0x1

    move-object/from16 v0, v63

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2824
    :goto_fe
    const/4 v4, 0x1

    return v4

    .line 2795
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :cond_fb
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_fb

    .line 2804
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_fc
    const/16 v24, 0x0

    .restart local v24    # "_arg2":Landroid/content/ComponentName;
    goto :goto_fc

    .line 2811
    .end local v24    # "_arg2":Landroid/content/ComponentName;
    :cond_fd
    const/16 v25, 0x0

    .local v25, "_arg3":Landroid/os/PersistableBundle;
    goto :goto_fd

    .line 2822
    .end local v25    # "_arg3":Landroid/os/PersistableBundle;
    .restart local v9    # "_arg4":I
    .restart local v63    # "_result":Landroid/os/UserHandle;
    :cond_fe
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_fe

    .line 2828
    .end local v9    # "_arg4":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":Landroid/os/UserHandle;
    :sswitch_a7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_ff

    .line 2831
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2837
    :goto_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_100

    .line 2838
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/UserHandle;

    .line 2843
    :goto_100
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v70

    .line 2844
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2845
    if-eqz v70, :cond_101

    const/4 v4, 0x1

    :goto_101
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2846
    const/4 v4, 0x1

    return v4

    .line 2834
    .end local v70    # "_result":Z
    :cond_ff
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_ff

    .line 2841
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_100
    const/16 v45, 0x0

    .local v45, "_arg1":Landroid/os/UserHandle;
    goto :goto_100

    .line 2845
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_101
    const/4 v4, 0x0

    goto :goto_101

    .line 2850
    .end local v70    # "_result":Z
    :sswitch_a8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2852
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_102

    .line 2853
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2859
    :goto_102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_103

    .line 2860
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/UserHandle;

    .line 2865
    :goto_103
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v70

    .line 2866
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2867
    if-eqz v70, :cond_104

    const/4 v4, 0x1

    :goto_104
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2868
    const/4 v4, 0x1

    return v4

    .line 2856
    .end local v70    # "_result":Z
    :cond_102
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_102

    .line 2863
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_103
    const/16 v45, 0x0

    .restart local v45    # "_arg1":Landroid/os/UserHandle;
    goto :goto_103

    .line 2867
    .end local v45    # "_arg1":Landroid/os/UserHandle;
    .restart local v70    # "_result":Z
    :cond_104
    const/4 v4, 0x0

    goto :goto_104

    .line 2872
    .end local v70    # "_result":Z
    :sswitch_a9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_105

    .line 2875
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2881
    :goto_105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2882
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2883
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2884
    const/4 v4, 0x1

    return v4

    .line 2878
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_105
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_105

    .line 2888
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_aa
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_106

    .line 2891
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2897
    :goto_106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_107

    .line 2898
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/Intent;

    .line 2903
    :goto_107
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v56

    .line 2904
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2905
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2906
    const/4 v4, 0x1

    return v4

    .line 2894
    .end local v56    # "_result":I
    :cond_106
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_106

    .line 2901
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_107
    const/16 v39, 0x0

    .local v39, "_arg1":Landroid/content/Intent;
    goto :goto_107

    .line 2910
    .end local v39    # "_arg1":Landroid/content/Intent;
    :sswitch_ab
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_108

    .line 2913
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2919
    :goto_108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2921
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_109

    const/16 v30, 0x1

    .line 2922
    .restart local v30    # "_arg2":Z
    :goto_109
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 2923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2924
    const/4 v4, 0x1

    return v4

    .line 2916
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_108
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_108

    .line 2921
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_109
    const/16 v30, 0x0

    goto :goto_109

    .line 2928
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_ac
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2929
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled()[Ljava/lang/String;

    move-result-object v71

    .line 2930
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2931
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2932
    const/4 v4, 0x1

    return v4

    .line 2936
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_ad
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2939
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v71

    .line 2940
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2942
    const/4 v4, 0x1

    return v4

    .line 2946
    .end local v5    # "_arg0":I
    .end local v71    # "_result":[Ljava/lang/String;
    :sswitch_ae
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10a

    .line 2949
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2955
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v50

    .line 2956
    .restart local v50    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 2957
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2958
    const/4 v4, 0x1

    return v4

    .line 2952
    .end local v50    # "_arg1":[Ljava/lang/String;
    :cond_10a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10a

    .line 2962
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_af
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10b

    .line 2965
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2970
    :goto_10b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v71

    .line 2971
    .restart local v71    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2972
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2973
    const/4 v4, 0x1

    return v4

    .line 2968
    .end local v71    # "_result":[Ljava/lang/String;
    :cond_10b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10b

    .line 2977
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 2980
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v70

    .line 2981
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    if-eqz v70, :cond_10c

    const/4 v4, 0x1

    :goto_10c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2983
    const/4 v4, 0x1

    return v4

    .line 2982
    :cond_10c
    const/4 v4, 0x0

    goto :goto_10c

    .line 2987
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_b1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10d

    .line 2990
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 2996
    :goto_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 2998
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 2999
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    const/4 v4, 0x1

    return v4

    .line 2993
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_10d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10d

    .line 3005
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10e

    .line 3008
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3014
    :goto_10e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3016
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 3017
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3019
    const/4 v4, 0x1

    return v4

    .line 3011
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    :cond_10e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10e

    .line 3023
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_b3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3025
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10f

    .line 3026
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3032
    :goto_10f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_110

    const/16 v49, 0x1

    .line 3033
    .local v49, "_arg1":Z
    :goto_110
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 3034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3035
    const/4 v4, 0x1

    return v4

    .line 3029
    .end local v49    # "_arg1":Z
    :cond_10f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_10f

    .line 3032
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_110
    const/16 v49, 0x0

    goto :goto_110

    .line 3039
    :sswitch_b4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3041
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_111

    .line 3042
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3047
    :goto_111
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3048
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3049
    if-eqz v70, :cond_112

    const/4 v4, 0x1

    :goto_112
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3050
    const/4 v4, 0x1

    return v4

    .line 3045
    .end local v70    # "_result":Z
    :cond_111
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_111

    .line 3049
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_112
    const/4 v4, 0x0

    goto :goto_112

    .line 3054
    .end local v70    # "_result":Z
    :sswitch_b5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3056
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_113

    const/16 v36, 0x1

    .line 3058
    .local v36, "_arg0":Z
    :goto_113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3060
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3061
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 3062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3063
    const/4 v4, 0x1

    return v4

    .line 3056
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v36    # "_arg0":Z
    :cond_113
    const/16 v36, 0x0

    .restart local v36    # "_arg0":Z
    goto :goto_113

    .line 3067
    .end local v36    # "_arg0":Z
    :sswitch_b6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_114

    .line 3070
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3076
    :goto_114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3078
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_115

    const/16 v30, 0x1

    .line 3079
    .restart local v30    # "_arg2":Z
    :goto_115
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v30

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 3080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3081
    const/4 v4, 0x1

    return v4

    .line 3073
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v30    # "_arg2":Z
    :cond_114
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_114

    .line 3078
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_115
    const/16 v30, 0x0

    goto :goto_115

    .line 3085
    .end local v23    # "_arg1":Ljava/lang/String;
    :sswitch_b7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3087
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_116

    .line 3088
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3094
    :goto_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3095
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 3096
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    if-eqz v70, :cond_117

    const/4 v4, 0x1

    :goto_117
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3098
    const/4 v4, 0x1

    return v4

    .line 3091
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_116
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_116

    .line 3097
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_117
    const/4 v4, 0x0

    goto :goto_117

    .line 3102
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_b8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_118

    .line 3105
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3111
    :goto_118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_119

    const/16 v49, 0x1

    .line 3112
    .restart local v49    # "_arg1":Z
    :goto_119
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 3113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3114
    const/4 v4, 0x1

    return v4

    .line 3108
    .end local v49    # "_arg1":Z
    :cond_118
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_118

    .line 3111
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_119
    const/16 v49, 0x0

    goto :goto_119

    .line 3118
    :sswitch_b9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11a

    .line 3121
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3126
    :goto_11a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3127
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3128
    if-eqz v70, :cond_11b

    const/4 v4, 0x1

    :goto_11b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3129
    const/4 v4, 0x1

    return v4

    .line 3124
    .end local v70    # "_result":Z
    :cond_11a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11a

    .line 3128
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_11b
    const/4 v4, 0x0

    goto :goto_11b

    .line 3133
    .end local v70    # "_result":Z
    :sswitch_ba
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3136
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v70

    .line 3137
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3138
    if-eqz v70, :cond_11c

    const/4 v4, 0x1

    :goto_11c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3139
    const/4 v4, 0x1

    return v4

    .line 3138
    :cond_11c
    const/4 v4, 0x0

    goto :goto_11c

    .line 3143
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_bb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11d

    .line 3146
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3152
    :goto_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11e

    const/16 v49, 0x1

    .line 3153
    .restart local v49    # "_arg1":Z
    :goto_11e
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 3154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3155
    const/4 v4, 0x1

    return v4

    .line 3149
    .end local v49    # "_arg1":Z
    :cond_11d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11d

    .line 3152
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_11e
    const/16 v49, 0x0

    goto :goto_11e

    .line 3159
    :sswitch_bc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11f

    .line 3162
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3167
    :goto_11f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3168
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3169
    if-eqz v70, :cond_120

    const/4 v4, 0x1

    :goto_120
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3170
    const/4 v4, 0x1

    return v4

    .line 3165
    .end local v70    # "_result":Z
    :cond_11f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11f

    .line 3169
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_120
    const/4 v4, 0x0

    goto :goto_120

    .line 3174
    .end local v70    # "_result":Z
    :sswitch_bd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3177
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v70

    .line 3178
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3179
    if-eqz v70, :cond_121

    const/4 v4, 0x1

    :goto_121
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    const/4 v4, 0x1

    return v4

    .line 3179
    :cond_121
    const/4 v4, 0x0

    goto :goto_121

    .line 3184
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_be
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3188
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 3190
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_122

    const/16 v30, 0x1

    .line 3192
    .local v30, "_arg2":Z
    :goto_122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .line 3194
    .local v31, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_123

    .line 3195
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/Intent;

    :goto_123
    move-object/from16 v26, p0

    .line 3200
    invoke-virtual/range {v26 .. v33}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 3201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3202
    const/4 v4, 0x1

    return v4

    .line 3190
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    :cond_122
    const/16 v30, 0x0

    .restart local v30    # "_arg2":Z
    goto :goto_122

    .line 3198
    .restart local v31    # "_arg3":J
    :cond_123
    const/16 v33, 0x0

    .local v33, "_arg4":Landroid/content/Intent;
    goto :goto_123

    .line 3206
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v28    # "_arg1":J
    .end local v30    # "_arg2":Z
    .end local v31    # "_arg3":J
    .end local v33    # "_arg4":Landroid/content/Intent;
    :sswitch_bf
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_124

    .line 3209
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3215
    :goto_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_125

    const/16 v49, 0x1

    .line 3216
    .restart local v49    # "_arg1":Z
    :goto_125
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 3217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3218
    const/4 v4, 0x1

    return v4

    .line 3212
    .end local v49    # "_arg1":Z
    :cond_124
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_124

    .line 3215
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_125
    const/16 v49, 0x0

    goto :goto_125

    .line 3222
    :sswitch_c0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_126

    .line 3225
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3230
    :goto_126
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3231
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3232
    if-eqz v70, :cond_127

    const/4 v4, 0x1

    :goto_127
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3233
    const/4 v4, 0x1

    return v4

    .line 3228
    .end local v70    # "_result":Z
    :cond_126
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_126

    .line 3232
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_127
    const/4 v4, 0x0

    goto :goto_127

    .line 3237
    .end local v70    # "_result":Z
    :sswitch_c1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3240
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v70

    .line 3241
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3242
    if-eqz v70, :cond_128

    const/4 v4, 0x1

    :goto_128
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3243
    const/4 v4, 0x1

    return v4

    .line 3242
    :cond_128
    const/4 v4, 0x0

    goto :goto_128

    .line 3247
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_c2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_129

    .line 3250
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3256
    :goto_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12a

    .line 3257
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 3263
    :goto_12a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12b

    .line 3264
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/os/PersistableBundle;

    .line 3270
    :goto_12b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12c

    const/16 v55, 0x1

    .line 3271
    .local v55, "_arg3":Z
    :goto_12c
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v52

    move/from16 v3, v55

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 3272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3273
    const/4 v4, 0x1

    return v4

    .line 3253
    .end local v55    # "_arg3":Z
    :cond_129
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_129

    .line 3260
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_12a
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_12a

    .line 3267
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    :cond_12b
    const/16 v52, 0x0

    .local v52, "_arg2":Landroid/os/PersistableBundle;
    goto :goto_12b

    .line 3270
    .end local v52    # "_arg2":Landroid/os/PersistableBundle;
    :cond_12c
    const/16 v55, 0x0

    goto :goto_12c

    .line 3277
    :sswitch_c3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12d

    .line 3280
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3286
    :goto_12d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12e

    .line 3287
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ComponentName;

    .line 3293
    :goto_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3295
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12f

    const/16 v55, 0x1

    .line 3296
    .restart local v55    # "_arg3":Z
    :goto_12f
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v55

    invoke-virtual {v0, v15, v1, v7, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v68

    .line 3297
    .local v68, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3298
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3299
    const/4 v4, 0x1

    return v4

    .line 3283
    .end local v7    # "_arg2":I
    .end local v55    # "_arg3":Z
    .end local v68    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_12d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12d

    .line 3290
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_12e
    const/16 v38, 0x0

    .restart local v38    # "_arg1":Landroid/content/ComponentName;
    goto :goto_12e

    .line 3295
    .end local v38    # "_arg1":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    :cond_12f
    const/16 v55, 0x0

    goto :goto_12f

    .line 3303
    .end local v7    # "_arg2":I
    :sswitch_c4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_130

    .line 3306
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3312
    :goto_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3313
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 3314
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3315
    if-eqz v70, :cond_131

    const/4 v4, 0x1

    :goto_131
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3316
    const/4 v4, 0x1

    return v4

    .line 3309
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_130
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_130

    .line 3315
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_131
    const/4 v4, 0x0

    goto :goto_131

    .line 3320
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_c5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_132

    .line 3323
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3329
    :goto_132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3330
    .restart local v23    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v70

    .line 3331
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3332
    if-eqz v70, :cond_133

    const/4 v4, 0x1

    :goto_133
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3333
    const/4 v4, 0x1

    return v4

    .line 3326
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_132
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_132

    .line 3332
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_133
    const/4 v4, 0x0

    goto :goto_133

    .line 3337
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_c6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_134

    .line 3340
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3345
    :goto_134
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v69

    .line 3346
    .local v69, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3347
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3348
    const/4 v4, 0x1

    return v4

    .line 3343
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_134
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_134

    .line 3352
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_135

    .line 3355
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3361
    :goto_135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_136

    const/16 v49, 0x1

    .line 3362
    .restart local v49    # "_arg1":Z
    :goto_136
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 3363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3364
    const/4 v4, 0x1

    return v4

    .line 3358
    .end local v49    # "_arg1":Z
    :cond_135
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_135

    .line 3361
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_136
    const/16 v49, 0x0

    goto :goto_136

    .line 3368
    :sswitch_c8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3369
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result v70

    .line 3370
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3371
    if-eqz v70, :cond_137

    const/4 v4, 0x1

    :goto_137
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3372
    const/4 v4, 0x1

    return v4

    .line 3371
    :cond_137
    const/4 v4, 0x0

    goto :goto_137

    .line 3376
    .end local v70    # "_result":Z
    :sswitch_c9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_138

    .line 3379
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3385
    :goto_138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_139

    const/16 v49, 0x1

    .line 3386
    .restart local v49    # "_arg1":Z
    :goto_139
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 3387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3388
    const/4 v4, 0x1

    return v4

    .line 3382
    .end local v49    # "_arg1":Z
    :cond_138
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_138

    .line 3385
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_139
    const/16 v49, 0x0

    goto :goto_139

    .line 3392
    :sswitch_ca
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13a

    .line 3395
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3400
    :goto_13a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3401
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3402
    if-eqz v70, :cond_13b

    const/4 v4, 0x1

    :goto_13b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3403
    const/4 v4, 0x1

    return v4

    .line 3398
    .end local v70    # "_result":Z
    :cond_13a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13a

    .line 3402
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_13b
    const/4 v4, 0x0

    goto :goto_13b

    .line 3407
    .end local v70    # "_result":Z
    :sswitch_cb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13c

    .line 3410
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3416
    :goto_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3417
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v70

    .line 3418
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3419
    if-eqz v70, :cond_13d

    const/4 v4, 0x1

    :goto_13d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3420
    const/4 v4, 0x1

    return v4

    .line 3413
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :cond_13c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13c

    .line 3419
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v70    # "_result":Z
    :cond_13d
    const/4 v4, 0x0

    goto :goto_13d

    .line 3424
    .end local v6    # "_arg1":I
    .end local v70    # "_result":Z
    :sswitch_cc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13e

    .line 3427
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3433
    :goto_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13f

    .line 3434
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/graphics/Bitmap;

    .line 3439
    :goto_13f
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 3440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3441
    const/4 v4, 0x1

    return v4

    .line 3430
    :cond_13e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_13e

    .line 3437
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_13f
    const/16 v41, 0x0

    .local v41, "_arg1":Landroid/graphics/Bitmap;
    goto :goto_13f

    .line 3445
    .end local v41    # "_arg1":Landroid/graphics/Bitmap;
    :sswitch_cd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_140

    .line 3448
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3454
    :goto_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_141

    .line 3455
    sget-object v4, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/admin/SystemUpdatePolicy;

    .line 3460
    :goto_141
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 3461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3462
    const/4 v4, 0x1

    return v4

    .line 3451
    :cond_140
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_140

    .line 3458
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_141
    const/16 v37, 0x0

    .local v37, "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    goto :goto_141

    .line 3466
    .end local v37    # "_arg1":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_ce
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3467
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v57

    .line 3468
    .local v57, "_result":Landroid/app/admin/SystemUpdatePolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3469
    if-eqz v57, :cond_142

    .line 3470
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3471
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/admin/SystemUpdatePolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3476
    :goto_142
    const/4 v4, 0x1

    return v4

    .line 3474
    :cond_142
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_142

    .line 3480
    .end local v57    # "_result":Landroid/app/admin/SystemUpdatePolicy;
    :sswitch_cf
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_143

    .line 3483
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3489
    :goto_143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_144

    const/16 v49, 0x1

    .line 3490
    .restart local v49    # "_arg1":Z
    :goto_144
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v70

    .line 3491
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3492
    if-eqz v70, :cond_145

    const/4 v4, 0x1

    :goto_145
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3493
    const/4 v4, 0x1

    return v4

    .line 3486
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_143
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_143

    .line 3489
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_144
    const/16 v49, 0x0

    goto :goto_144

    .line 3492
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_145
    const/4 v4, 0x0

    goto :goto_145

    .line 3497
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_d0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_146

    .line 3500
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3506
    :goto_146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_147

    const/16 v49, 0x1

    .line 3507
    .restart local v49    # "_arg1":Z
    :goto_147
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v70

    .line 3508
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3509
    if-eqz v70, :cond_148

    const/4 v4, 0x1

    :goto_148
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    const/4 v4, 0x1

    return v4

    .line 3503
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :cond_146
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_146

    .line 3506
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_147
    const/16 v49, 0x0

    goto :goto_147

    .line 3509
    .restart local v49    # "_arg1":Z
    .restart local v70    # "_result":Z
    :cond_148
    const/4 v4, 0x0

    goto :goto_148

    .line 3514
    .end local v49    # "_arg1":Z
    .end local v70    # "_result":Z
    :sswitch_d1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3515
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result v70

    .line 3516
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3517
    if-eqz v70, :cond_149

    const/4 v4, 0x1

    :goto_149
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3518
    const/4 v4, 0x1

    return v4

    .line 3517
    :cond_149
    const/4 v4, 0x0

    goto :goto_149

    .line 3522
    .end local v70    # "_result":Z
    :sswitch_d2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 3525
    .local v34, "_arg0":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(J)V

    .line 3526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3527
    const/4 v4, 0x1

    return v4

    .line 3531
    .end local v34    # "_arg0":J
    :sswitch_d3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14a

    .line 3534
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3540
    :goto_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3541
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    .line 3542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3543
    const/4 v4, 0x1

    return v4

    .line 3537
    .end local v6    # "_arg1":I
    :cond_14a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14a

    .line 3547
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14b

    .line 3550
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3555
    :goto_14b
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v56

    .line 3556
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3557
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3558
    const/4 v4, 0x1

    return v4

    .line 3553
    .end local v56    # "_result":I
    :cond_14b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14b

    .line 3562
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14c

    .line 3565
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3571
    :goto_14c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3573
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 3575
    .restart local v53    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3576
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v70

    .line 3577
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    if-eqz v70, :cond_14d

    const/4 v4, 0x1

    :goto_14d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3579
    const/4 v4, 0x1

    return v4

    .line 3568
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :cond_14c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14c

    .line 3578
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v8    # "_arg3":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v53    # "_arg2":Ljava/lang/String;
    .restart local v70    # "_result":Z
    :cond_14d
    const/4 v4, 0x0

    goto :goto_14d

    .line 3583
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_d6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14e

    .line 3586
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3592
    :goto_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 3594
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 3595
    .restart local v53    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v53

    invoke-virtual {v0, v15, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v56

    .line 3596
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3598
    const/4 v4, 0x1

    return v4

    .line 3589
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v53    # "_arg2":Ljava/lang/String;
    .end local v56    # "_result":I
    :cond_14e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_14e

    .line 3602
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 3605
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;)Z

    move-result v70

    .line 3606
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3607
    if-eqz v70, :cond_14f

    const/4 v4, 0x1

    :goto_14f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3608
    const/4 v4, 0x1

    return v4

    .line 3607
    :cond_14f
    const/4 v4, 0x0

    goto :goto_14f

    .line 3612
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_d8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_150

    .line 3615
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3621
    :goto_150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 3622
    .local v48, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 3623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3624
    const/4 v4, 0x1

    return v4

    .line 3618
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_150
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_150

    .line 3628
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_151

    .line 3631
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3636
    :goto_151
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v69

    .line 3637
    .restart local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3638
    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3639
    const/4 v4, 0x1

    return v4

    .line 3634
    .end local v69    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_151
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_151

    .line 3643
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_da
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_152

    .line 3646
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3651
    :goto_152
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3652
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3653
    if-eqz v70, :cond_153

    const/4 v4, 0x1

    :goto_153
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3654
    const/4 v4, 0x1

    return v4

    .line 3649
    .end local v70    # "_result":Z
    :cond_152
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_152

    .line 3653
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_153
    const/4 v4, 0x0

    goto :goto_153

    .line 3658
    .end local v70    # "_result":Z
    :sswitch_db
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_154

    .line 3661
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3666
    :goto_154
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSystemOnlyUser(Landroid/content/ComponentName;)Z

    move-result v70

    .line 3667
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3668
    if-eqz v70, :cond_155

    const/4 v4, 0x1

    :goto_155
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3669
    const/4 v4, 0x1

    return v4

    .line 3664
    .end local v70    # "_result":Z
    :cond_154
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_154

    .line 3668
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_155
    const/4 v4, 0x0

    goto :goto_155

    .line 3673
    .end local v70    # "_result":Z
    :sswitch_dc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_156

    .line 3676
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3681
    :goto_156
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v65

    .line 3682
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3683
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3684
    const/4 v4, 0x1

    return v4

    .line 3679
    .end local v65    # "_result":Ljava/lang/String;
    :cond_156
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_156

    .line 3688
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_dd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_157

    .line 3691
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3696
    :goto_157
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 3697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    const/4 v4, 0x1

    return v4

    .line 3694
    :cond_157
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_157

    .line 3702
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_de
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_158

    .line 3705
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3711
    :goto_158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_159

    .line 3712
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 3717
    :goto_159
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3718
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3719
    const/4 v4, 0x1

    return v4

    .line 3708
    :cond_158
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_158

    .line 3715
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_159
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_159

    .line 3723
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_df
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15a

    .line 3726
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3731
    :goto_15a
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3732
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3733
    if-eqz v64, :cond_15b

    .line 3734
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3735
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3740
    :goto_15b
    const/4 v4, 0x1

    return v4

    .line 3729
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_15a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15a

    .line 3738
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_15b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15b

    .line 3744
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_e0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15c

    .line 3747
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3753
    :goto_15c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15d

    .line 3754
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 3759
    :goto_15d
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    const/4 v4, 0x1

    return v4

    .line 3750
    :cond_15c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15c

    .line 3757
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_15d
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_15d

    .line 3765
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_e1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15e

    .line 3768
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3773
    :goto_15e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3774
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3775
    if-eqz v64, :cond_15f

    .line 3776
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3777
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3782
    :goto_15f
    const/4 v4, 0x1

    return v4

    .line 3771
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_15e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_15e

    .line 3780
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_15f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15f

    .line 3786
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_e2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_160

    .line 3789
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3795
    :goto_160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3796
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3797
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3798
    if-eqz v64, :cond_161

    .line 3799
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3800
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3805
    :goto_161
    const/4 v4, 0x1

    return v4

    .line 3792
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_160
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_160

    .line 3803
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_161
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_161

    .line 3809
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_e3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_162

    .line 3812
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3818
    :goto_162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3819
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3820
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3821
    if-eqz v64, :cond_163

    .line 3822
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3823
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3828
    :goto_163
    const/4 v4, 0x1

    return v4

    .line 3815
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_162
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_162

    .line 3826
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v6    # "_arg1":I
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_163
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_163

    .line 3832
    .end local v6    # "_arg1":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_e4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3835
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSeparateProfileChallengeAllowed(I)Z

    move-result v70

    .line 3836
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3837
    if-eqz v70, :cond_164

    const/4 v4, 0x1

    :goto_164
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3838
    const/4 v4, 0x1

    return v4

    .line 3837
    :cond_164
    const/4 v4, 0x0

    goto :goto_164

    .line 3842
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_e5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_165

    .line 3845
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3851
    :goto_165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3852
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 3853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3854
    const/4 v4, 0x1

    return v4

    .line 3848
    .end local v6    # "_arg1":I
    :cond_165
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_165

    .line 3858
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3862
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3863
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 3864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3865
    const/4 v4, 0x1

    return v4

    .line 3869
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_e7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_166

    .line 3872
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3877
    :goto_166
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v56

    .line 3878
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3879
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3880
    const/4 v4, 0x1

    return v4

    .line 3875
    .end local v56    # "_result":I
    :cond_166
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_166

    .line 3884
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_e8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3887
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result v56

    .line 3888
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3889
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3890
    const/4 v4, 0x1

    return v4

    .line 3894
    .end local v5    # "_arg0":I
    .end local v56    # "_result":I
    :sswitch_e9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3896
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_167

    .line 3897
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3903
    :goto_167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_168

    .line 3904
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/CharSequence;

    .line 3909
    :goto_168
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3911
    const/4 v4, 0x1

    return v4

    .line 3900
    :cond_167
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_167

    .line 3907
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_168
    const/16 v46, 0x0

    .restart local v46    # "_arg1":Ljava/lang/CharSequence;
    goto :goto_168

    .line 3915
    .end local v46    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_ea
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_169

    .line 3918
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3923
    :goto_169
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3924
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3925
    if-eqz v64, :cond_16a

    .line 3926
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3932
    :goto_16a
    const/4 v4, 0x1

    return v4

    .line 3921
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :cond_169
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_169

    .line 3930
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    :cond_16a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16a

    .line 3936
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_eb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3938
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3939
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v64

    .line 3940
    .restart local v64    # "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3941
    if-eqz v64, :cond_16b

    .line 3942
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3943
    const/4 v4, 0x1

    move-object/from16 v0, v64

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3948
    :goto_16b
    const/4 v4, 0x1

    return v4

    .line 3946
    :cond_16b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16b

    .line 3952
    .end local v5    # "_arg0":I
    .end local v64    # "_result":Ljava/lang/CharSequence;
    :sswitch_ec
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3953
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState()I

    move-result v56

    .line 3954
    .restart local v56    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3955
    move-object/from16 v0, p3

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3956
    const/4 v4, 0x1

    return v4

    .line 3960
    .end local v56    # "_result":I
    :sswitch_ed
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3962
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3964
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3965
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 3966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3967
    const/4 v4, 0x1

    return v4

    .line 3971
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_ee
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16c

    .line 3974
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 3980
    :goto_16c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v48

    .line 3981
    .restart local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 3982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3983
    const/4 v4, 0x1

    return v4

    .line 3977
    .end local v48    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16c

    .line 3987
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ef
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3988
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser()Z

    move-result v70

    .line 3989
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3990
    if-eqz v70, :cond_16d

    const/4 v4, 0x1

    :goto_16d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3991
    const/4 v4, 0x1

    return v4

    .line 3990
    :cond_16d
    const/4 v4, 0x0

    goto :goto_16d

    .line 3995
    .end local v70    # "_result":Z
    :sswitch_f0
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16e

    .line 3998
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4004
    :goto_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16f

    const/16 v49, 0x1

    .line 4005
    .restart local v49    # "_arg1":Z
    :goto_16f
    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v15, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 4006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4007
    const/4 v4, 0x1

    return v4

    .line 4001
    .end local v49    # "_arg1":Z
    :cond_16e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_16e

    .line 4004
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_16f
    const/16 v49, 0x0

    goto :goto_16f

    .line 4011
    :sswitch_f1
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4013
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_170

    .line 4014
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4019
    :goto_170
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v70

    .line 4020
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4021
    if-eqz v70, :cond_171

    const/4 v4, 0x1

    :goto_171
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4022
    const/4 v4, 0x1

    return v4

    .line 4017
    .end local v70    # "_result":Z
    :cond_170
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_170

    .line 4021
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v70    # "_result":Z
    :cond_171
    const/4 v4, 0x0

    goto :goto_171

    .line 4026
    .end local v70    # "_result":Z
    :sswitch_f2
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_172

    .line 4029
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4034
    :goto_172
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v61

    .line 4035
    .local v61, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4036
    if-eqz v61, :cond_173

    .line 4037
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4038
    const/4 v4, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4043
    :goto_173
    const/4 v4, 0x1

    return v4

    .line 4032
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_172
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_172

    .line 4041
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_173
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_173

    .line 4047
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_f3
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_174

    .line 4050
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4055
    :goto_174
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Landroid/content/pm/ParceledListSlice;

    move-result-object v61

    .line 4056
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4057
    if-eqz v61, :cond_175

    .line 4058
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4059
    const/4 v4, 0x1

    move-object/from16 v0, v61

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4064
    :goto_175
    const/4 v4, 0x1

    return v4

    .line 4053
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_174
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_174

    .line 4062
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_175
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_175

    .line 4068
    .end local v61    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_f4
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4070
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 4071
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v70

    .line 4072
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4073
    if-eqz v70, :cond_176

    const/4 v4, 0x1

    :goto_176
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4074
    const/4 v4, 0x1

    return v4

    .line 4073
    :cond_176
    const/4 v4, 0x0

    goto :goto_176

    .line 4078
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_f5
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 4081
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 4082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4083
    const/4 v4, 0x1

    return v4

    .line 4087
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_f6
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4088
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActualDeviceOwnerMDM()Ljava/lang/String;

    move-result-object v65

    .line 4089
    .restart local v65    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4090
    move-object/from16 v0, p3

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4091
    const/4 v4, 0x1

    return v4

    .line 4095
    .end local v65    # "_result":Ljava/lang/String;
    :sswitch_f7
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 4098
    .restart local v27    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->rebootMDM(Ljava/lang/String;)V

    .line 4099
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    const/4 v4, 0x1

    return v4

    .line 4104
    .end local v27    # "_arg0":Ljava/lang/String;
    :sswitch_f8
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_177

    .line 4107
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4113
    :goto_177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4115
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4116
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V

    .line 4117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    const/4 v4, 0x1

    return v4

    .line 4110
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_177
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_177

    .line 4122
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_f9
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_178

    .line 4125
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4131
    :goto_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4133
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4134
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V

    .line 4135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4136
    const/4 v4, 0x1

    return v4

    .line 4128
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_178
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_178

    .line 4140
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fa
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_179

    .line 4143
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4149
    :goto_179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4151
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4152
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V

    .line 4153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4154
    const/4 v4, 0x1

    return v4

    .line 4146
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_179
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_179

    .line 4158
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fb
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17a

    .line 4161
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4167
    :goto_17a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4169
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4170
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V

    .line 4171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4172
    const/4 v4, 0x1

    return v4

    .line 4164
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_17a
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17a

    .line 4176
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fc
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17b

    .line 4179
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4185
    :goto_17b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4187
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4188
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V

    .line 4189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4190
    const/4 v4, 0x1

    return v4

    .line 4182
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_17b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17b

    .line 4194
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fd
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17c

    .line 4197
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4203
    :goto_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4205
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4206
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V

    .line 4207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4208
    const/4 v4, 0x1

    return v4

    .line 4200
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_17c
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17c

    .line 4212
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_fe
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17d

    .line 4215
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4221
    :goto_17d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4223
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4224
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V

    .line 4225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4226
    const/4 v4, 0x1

    return v4

    .line 4218
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_17d
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17d

    .line 4230
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_ff
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17e

    .line 4233
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4239
    :goto_17e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4241
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4242
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V

    .line 4243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4244
    const/4 v4, 0x1

    return v4

    .line 4236
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_17e
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17e

    .line 4248
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_100
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17f

    .line 4251
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4257
    :goto_17f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4259
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4260
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V

    .line 4261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4262
    const/4 v4, 0x1

    return v4

    .line 4254
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_17f
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_17f

    .line 4266
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_101
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_180

    .line 4269
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4275
    :goto_180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 4277
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4278
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v15, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V

    .line 4279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4280
    const/4 v4, 0x1

    return v4

    .line 4272
    .end local v7    # "_arg2":I
    .end local v28    # "_arg1":J
    :cond_180
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_180

    .line 4284
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_102
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_181

    .line 4287
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4293
    :goto_181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4295
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4296
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 4297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4298
    const/4 v4, 0x1

    return v4

    .line 4290
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_181
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_181

    .line 4302
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_103
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 4306
    .restart local v27    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4308
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4309
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordMDM(Ljava/lang/String;II)Z

    move-result v70

    .line 4310
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4311
    if-eqz v70, :cond_182

    const/4 v4, 0x1

    :goto_182
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4312
    const/4 v4, 0x1

    return v4

    .line 4311
    :cond_182
    const/4 v4, 0x0

    goto :goto_182

    .line 4316
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v27    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_104
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_183

    .line 4319
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4325
    :goto_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .line 4327
    .restart local v28    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4328
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v15, v1, v2, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    .line 4329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4330
    const/4 v4, 0x1

    return v4

    .line 4322
    .end local v7    # "_arg2":I
    .end local v28    # "_arg1":J
    :cond_183
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_183

    .line 4334
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_105
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_184

    .line 4337
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4343
    :goto_184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4345
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4346
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V

    .line 4347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4348
    const/4 v4, 0x1

    return v4

    .line 4340
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :cond_184
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_184

    .line 4352
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :sswitch_106
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_185

    .line 4355
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4361
    :goto_185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 4363
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_186

    .line 4364
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/os/Bundle;

    .line 4370
    :goto_186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4371
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v51

    invoke-virtual {v0, v15, v1, v2, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4373
    const/4 v4, 0x1

    return v4

    .line 4358
    .end local v8    # "_arg3":I
    .end local v23    # "_arg1":Ljava/lang/String;
    :cond_185
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_185

    .line 4367
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v23    # "_arg1":Ljava/lang/String;
    :cond_186
    const/16 v51, 0x0

    .restart local v51    # "_arg2":Landroid/os/Bundle;
    goto :goto_186

    .line 4377
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v51    # "_arg2":Landroid/os/Bundle;
    :sswitch_107
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_187

    .line 4380
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4386
    :goto_187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 4388
    .restart local v23    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4389
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v15, v1, v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v62

    .line 4390
    .restart local v62    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4391
    if-eqz v62, :cond_188

    .line 4392
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4393
    const/4 v4, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4398
    :goto_188
    const/4 v4, 0x1

    return v4

    .line 4383
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :cond_187
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_187

    .line 4396
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    .restart local v7    # "_arg2":I
    .restart local v23    # "_arg1":Ljava/lang/String;
    .restart local v62    # "_result":Landroid/os/Bundle;
    :cond_188
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_188

    .line 4402
    .end local v7    # "_arg2":I
    .end local v23    # "_arg1":Ljava/lang/String;
    .end local v62    # "_result":Landroid/os/Bundle;
    :sswitch_108
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_189

    .line 4405
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4411
    :goto_189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18a

    .line 4412
    sget-object v4, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/IntentFilter;

    .line 4418
    :goto_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4420
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4421
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v15, v1, v7, v8}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilterMDM(Landroid/content/ComponentName;Landroid/content/IntentFilter;II)V

    .line 4422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4423
    const/4 v4, 0x1

    return v4

    .line 4408
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :cond_189
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_189

    .line 4415
    .end local v15    # "_arg0":Landroid/content/ComponentName;
    :cond_18a
    const/16 v40, 0x0

    .restart local v40    # "_arg1":Landroid/content/IntentFilter;
    goto :goto_18a

    .line 4427
    .end local v40    # "_arg1":Landroid/content/IntentFilter;
    :sswitch_109
    const-string/jumbo v4, "android.app.admin.IDevicePolicyManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18b

    .line 4430
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ComponentName;

    .line 4436
    :goto_18b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4437
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFiltersMDM(Landroid/content/ComponentName;I)V

    .line 4438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4439
    const/4 v4, 0x1

    return v4

    .line 4433
    .end local v6    # "_arg1":I
    :cond_18b
    const/4 v15, 0x0

    .restart local v15    # "_arg0":Landroid/content/ComponentName;
    goto :goto_18b

    .line 42
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
        0xe4 -> :sswitch_e4
        0xe5 -> :sswitch_e5
        0xe6 -> :sswitch_e6
        0xe7 -> :sswitch_e7
        0xe8 -> :sswitch_e8
        0xe9 -> :sswitch_e9
        0xea -> :sswitch_ea
        0xeb -> :sswitch_eb
        0xec -> :sswitch_ec
        0xed -> :sswitch_ed
        0xee -> :sswitch_ee
        0xef -> :sswitch_ef
        0xf0 -> :sswitch_f0
        0xf1 -> :sswitch_f1
        0xf2 -> :sswitch_f2
        0xf3 -> :sswitch_f3
        0xf4 -> :sswitch_f4
        0xf5 -> :sswitch_f5
        0xf6 -> :sswitch_f6
        0xf7 -> :sswitch_f7
        0xf8 -> :sswitch_f8
        0xf9 -> :sswitch_f9
        0xfa -> :sswitch_fa
        0xfb -> :sswitch_fb
        0xfc -> :sswitch_fc
        0xfd -> :sswitch_fd
        0xfe -> :sswitch_fe
        0xff -> :sswitch_ff
        0x100 -> :sswitch_100
        0x101 -> :sswitch_101
        0x102 -> :sswitch_102
        0x103 -> :sswitch_103
        0x104 -> :sswitch_104
        0x105 -> :sswitch_105
        0x106 -> :sswitch_106
        0x107 -> :sswitch_107
        0x108 -> :sswitch_108
        0x109 -> :sswitch_109
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
