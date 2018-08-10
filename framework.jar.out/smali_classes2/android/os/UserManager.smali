.class public Landroid/os/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManager$EnforcingUser;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_USER:Ljava/lang/String; = "android.os.action.CREATE_USER"

.field public static final ACTION_USER_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.os.action.USER_RESTRICTIONS_CHANGED"

.field public static final ALLOW_PARENT_PROFILE_APP_LINKING:Ljava/lang/String; = "allow_parent_profile_app_linking"

.field public static final DISALLOW_ADD_MANAGED_PROFILE:Ljava/lang/String; = "no_add_managed_profile"

.field public static final DISALLOW_ADD_USER:Ljava/lang/String; = "no_add_user"

.field public static final DISALLOW_ADJUST_VOLUME:Ljava/lang/String; = "no_adjust_volume"

.field public static final DISALLOW_APPS_CONTROL:Ljava/lang/String; = "no_control_apps"

.field public static final DISALLOW_AUTOFILL:Ljava/lang/String; = "no_autofill"

.field public static final DISALLOW_BLUETOOTH:Ljava/lang/String; = "no_bluetooth"

.field public static final DISALLOW_BLUETOOTH_SHARING:Ljava/lang/String; = "no_bluetooth_sharing"

.field public static final DISALLOW_CAMERA:Ljava/lang/String; = "no_camera"

.field public static final DISALLOW_CONFIG_BLUETOOTH:Ljava/lang/String; = "no_config_bluetooth"

.field public static final DISALLOW_CONFIG_CELL_BROADCASTS:Ljava/lang/String; = "no_config_cell_broadcasts"

.field public static final DISALLOW_CONFIG_CREDENTIALS:Ljava/lang/String; = "no_config_credentials"

.field public static final DISALLOW_CONFIG_MOBILE_NETWORKS:Ljava/lang/String; = "no_config_mobile_networks"

.field public static final DISALLOW_CONFIG_TETHERING:Ljava/lang/String; = "no_config_tethering"

.field public static final DISALLOW_CONFIG_VPN:Ljava/lang/String; = "no_config_vpn"

.field public static final DISALLOW_CONFIG_WIFI:Ljava/lang/String; = "no_config_wifi"

.field public static final DISALLOW_CREATE_WINDOWS:Ljava/lang/String; = "no_create_windows"

.field public static final DISALLOW_CROSS_PROFILE_COPY_PASTE:Ljava/lang/String; = "no_cross_profile_copy_paste"

.field public static final DISALLOW_DATA_ROAMING:Ljava/lang/String; = "no_data_roaming"

.field public static final DISALLOW_DEBUGGING_FEATURES:Ljava/lang/String; = "no_debugging_features"

.field public static final DISALLOW_FACTORY_RESET:Ljava/lang/String; = "no_factory_reset"

.field public static final DISALLOW_FUN:Ljava/lang/String; = "no_fun"

.field public static final DISALLOW_INSTALL_APPS:Ljava/lang/String; = "no_install_apps"

.field public static final DISALLOW_INSTALL_UNKNOWN_SOURCES:Ljava/lang/String; = "no_install_unknown_sources"

.field public static final DISALLOW_MODIFY_ACCOUNTS:Ljava/lang/String; = "no_modify_accounts"

.field public static final DISALLOW_MOUNT_PHYSICAL_MEDIA:Ljava/lang/String; = "no_physical_media"

.field public static final DISALLOW_NETWORK_RESET:Ljava/lang/String; = "no_network_reset"

.field public static final DISALLOW_OEM_UNLOCK:Ljava/lang/String; = "no_oem_unlock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISALLOW_OUTGOING_BEAM:Ljava/lang/String; = "no_outgoing_beam"

.field public static final DISALLOW_OUTGOING_CALLS:Ljava/lang/String; = "no_outgoing_calls"

.field public static final DISALLOW_RECORD_AUDIO:Ljava/lang/String; = "no_record_audio"

.field public static final DISALLOW_REMOVE_MANAGED_PROFILE:Ljava/lang/String; = "no_remove_managed_profile"

.field public static final DISALLOW_REMOVE_USER:Ljava/lang/String; = "no_remove_user"

.field public static final DISALLOW_RUN_IN_BACKGROUND:Ljava/lang/String; = "no_run_in_background"

.field public static final DISALLOW_SAFE_BOOT:Ljava/lang/String; = "no_safe_boot"

.field public static final DISALLOW_SET_USER_ICON:Ljava/lang/String; = "no_set_user_icon"

.field public static final DISALLOW_SET_WALLPAPER:Ljava/lang/String; = "no_set_wallpaper"

.field public static final DISALLOW_SHARE_LOCATION:Ljava/lang/String; = "no_share_location"

.field public static final DISALLOW_SMS:Ljava/lang/String; = "no_sms"

.field public static final DISALLOW_UNINSTALL_APPS:Ljava/lang/String; = "no_uninstall_apps"

.field public static final DISALLOW_UNMUTE_DEVICE:Ljava/lang/String; = "disallow_unmute_device"

.field public static final DISALLOW_UNMUTE_MICROPHONE:Ljava/lang/String; = "no_unmute_microphone"

.field public static final DISALLOW_USB_FILE_TRANSFER:Ljava/lang/String; = "no_usb_file_transfer"

.field public static final DISALLOW_WALLPAPER:Ljava/lang/String; = "no_wallpaper"

.field public static final ENSURE_VERIFY_APPS:Ljava/lang/String; = "ensure_verify_apps"

.field public static final EXTRA_USER_ACCOUNT_NAME:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_NAME"

.field public static final EXTRA_USER_ACCOUNT_OPTIONS:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_OPTIONS"

.field public static final EXTRA_USER_ACCOUNT_TYPE:Ljava/lang/String; = "android.os.extra.USER_ACCOUNT_TYPE"

.field public static final EXTRA_USER_NAME:Ljava/lang/String; = "android.os.extra.USER_NAME"

.field public static final KEY_RESTRICTIONS_PENDING:Ljava/lang/String; = "restrictions_pending"

.field public static final MIN_VIRTUAL_USER_ID:I = 0x3e8

.field public static final PIN_VERIFICATION_FAILED_INCORRECT:I = -0x3

.field public static final PIN_VERIFICATION_FAILED_NOT_SET:I = -0x2

.field public static final PIN_VERIFICATION_SUCCESS:I = -0x1

.field public static final RESTRICTION_NOT_SET:I = 0x0

.field public static final RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2

.field public static final RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4

.field public static final RESTRICTION_SOURCE_SYSTEM:I = 0x1

.field public static final SEM_RESTRICTION_NOT_SET:I = 0x0

.field public static final SEM_RESTRICTION_SOURCE_DEVICE_OWNER:I = 0x2

.field public static final SEM_RESTRICTION_SOURCE_PROFILE_OWNER:I = 0x4

.field public static final SEM_RESTRICTION_SOURCE_SYSTEM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UserManager"

.field public static final USER_CREATION_FAILED_NOT_PERMITTED:I = 0x1

.field public static final USER_CREATION_FAILED_NO_MORE_USERS:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsManagedProfileCached:Ljava/lang/Boolean;

.field private final mService:Landroid/os/IUserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IUserManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static createUserCreationIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.os.action.CREATE_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "accountType must be specified if accountName is specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_4
    return-object v0
.end method

.method public static get(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public static getMaxSupportedUsers()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string/jumbo v4, "JVP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    return v6

    :cond_1
    const/4 v0, -0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Framework_ConfigMaxMultiUsers"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    const-string/jumbo v3, "persist.sys.max_users"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "fw.max_users"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method public static isDeviceInDemoMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_demo_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGuestUserEphemeral()Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isSplitSystemUser()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->FW_SYSTEM_USER_SPLIT:Z

    return v0
.end method

.method public static isVirtualUserId(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportsMultipleUsers()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Framework_ConfigStatusMultiUser"

    const-string/jumbo v5, "NoCscFound"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "persist.sys.show_multiuserui"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const-string/jumbo v3, "fw.show_multiuserui"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1
    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public canAddMoreManagedProfiles(IZ)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->canAddMoreManagedProfiles(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canAddMoreUsers()Z
    .locals 7

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v6

    if-ge v0, v6, :cond_2

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public canHaveRestrictedProfile(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->canHaveRestrictedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public canSwitchUsers()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "allow_user_switching_when_system_user_locked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v4}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    xor-int/lit8 v3, v1, 0x1

    :cond_1
    return v3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public clearSeedAccountData()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->clearSeedAccountData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v3, 0x4

    invoke-interface {v2, p2, v3}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skip_first_use_hints"

    const-string/jumbo v4, "1"

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IUserManager;->createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 5

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/accounts/AccountManager;->addSharedAccountsFromParentUser(Landroid/os/UserHandle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string/jumbo v3, "no_sms"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    iget-object v2, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const-string/jumbo v3, "no_outgoing_calls"

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public evictCredentialEncryptionKey(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->evictCredentialEncryptionKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getCredentialOwnerProfile(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledProfileIds(I)[I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProfiles(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getManagedProfileBadge(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getManagedProfileBadge(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfileIds(IZ)[I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->getProfileIds(IZ)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfileIdsWithDisabled(I)[I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getProfiles(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountOptions()Landroid/os/PersistableBundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->getSeedAccountType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSerialNumbersOfUsers(Z)[J
    .locals 6

    :try_start_0
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [J

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    int-to-long v4, v4

    aput-wide v4, v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUserCreationTime(Landroid/os/UserHandle;)J
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserCreationTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 3

    long-to-int v1, p1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserHandle()I
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public getUserHandle(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserHandle(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .locals 5

    :try_start_0
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_5
    iget-object v4, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v4, p1}, Landroid/os/IUserManager;->getUserIconForBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v4

    return-object v4
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v2, v3

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getUserRestrictionSource(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserRestrictions()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserSerialNumber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasBaseUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAdminUser()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    return v0
.end method

.method public isDemoUser()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isDemoUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEphemeralUser()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserEphemeral(I)Z

    move-result v0

    return v0
.end method

.method public isGuestUser()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGuestUser(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLinkedUser()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1}, Landroid/os/IUserManager;->isRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isManagedProfile()Z
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v3, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "com.samsung.android.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    iget-object v3, p0, Landroid/os/UserManager;->mIsManagedProfileCached:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/UserManager;->mIsManagedProfileCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/os/IUserManager;->isManagedProfile(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/os/UserManager;->mIsManagedProfileCached:Ljava/lang/Boolean;

    iget-object v3, p0, Landroid/os/UserManager;->mIsManagedProfileCached:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public isManagedProfile(I)Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v1

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->isManagedProfile(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPrimaryUser()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isQuietModeEnabled(Landroid/os/UserHandle;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isQuietModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSameProfileGroup(II)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->isSameProfileGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSystemUser()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserAGoat()Z
    .locals 2

    iget-object v0, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.coffeestainstudios.goatsimulator"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserAdmin(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserEphemeral(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserNameSet()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->isUserNameSet(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserRunning(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->isUserRunning(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserRunning(Landroid/os/UserHandle;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserRunningOrStopping(Landroid/os/UserHandle;)Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserSwitcherEnabled()Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    iget-object v5, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v7

    :cond_1
    invoke-virtual {p0, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    return v7

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/os/UserManager;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getGuestUserDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    xor-int/lit8 v0, v5, 0x1

    if-gt v1, v6, :cond_5

    :goto_1
    return v0

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method public isUserUnlocked()Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->isUserUnlocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isVirtualUser(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isVirtualUser()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public markGuestForDeletion(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeUser(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->removeUserEvenWhenDisallowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->semGetSemUserInfo(I)Landroid/content/pm/SemUserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semGetUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    throw v0
.end method

.method public semIsLinkedUser()Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    return v0
.end method

.method public semIsManagedProfile()Z
    .locals 1

    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    return v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setQuietModeEnabled(IZ)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setQuietModeEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    const/4 v5, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IUserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->setUserEnabled(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This method is no longer supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateUserInfo(ILandroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/os/UserManager;->mService:Landroid/os/IUserManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IUserManager;->updateUserInfo(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
