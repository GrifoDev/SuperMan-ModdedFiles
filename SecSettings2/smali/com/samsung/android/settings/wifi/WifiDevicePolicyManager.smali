.class public Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;
.super Ljava/lang/Object;
.source "WifiDevicePolicyManager.java"


# static fields
.field private static sPropertyValue3lm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->sPropertyValue3lm:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_0

    return v10

    :cond_0
    const-string/jumbo v11, "device_policy"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v11, "android.software.device_admin"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v3, :cond_1

    return v9

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v11, :cond_3

    const/4 v5, 0x1

    :cond_2
    :goto_0
    if-nez v5, :cond_4

    return v10

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "wifi_device_owner_configs_lockdown"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_5

    move v6, v10

    :goto_1
    if-eqz v6, :cond_6

    :goto_2
    return v9

    :cond_5
    move v6, v9

    goto :goto_1

    :cond_6
    move v9, v10

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isAllowedToChangeUserPolicy(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string/jumbo v1, "getAllowUserPolicyChanges"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedToChangeUserPolicy false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string/jumbo v1, "getPasswordHidden"

    const-string/jumbo v2, "true"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedToShowPasswordHiddenView false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToShowRetryDialog(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string/jumbo v1, "getPromptCredentialsEnabled"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string/jumbo v1, "isEnterpriseNetwork"

    const-string/jumbo v2, "true"

    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedToUseEnterpriseSsid false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiChange3lm(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiDirectEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v1, "isWifiDirectAllowed"

    const-string/jumbo v2, "false"

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedWifiDirectEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    const-string/jumbo v1, "isWifiEnabled"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedWifiEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowedWifiStateChange(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    const-string/jumbo v1, "isWifiStateChangeAllowed"

    const-string/jumbo v2, "false"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->getCursorValuePositive(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiDevicePolicyManager"

    const-string/jumbo v1, "isAllowedWifiStateChange false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSharedDeviceKeyguardOn(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2
.end method
