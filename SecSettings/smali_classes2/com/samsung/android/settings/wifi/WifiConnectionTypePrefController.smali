.class public Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiConnectionTypePrefController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DBG:Z


# instance fields
.field private final mInSetupWizard:Z

.field private mIsAvailable:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mIsAvailable:Z

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mInSetupWizard:Z

    return-void
.end method

.method private updatecmccConnectTypeSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 6

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03013b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "ConfigureWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid cmcc connect type value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_connection_type"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecListDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mInSetupWizard:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mIsAvailable:Z

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    const v2, 0x7f120552

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_connection_type"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "wifi_connection_type"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "wifi_cmcc_manual"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->updatecmccConnectTypeSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/16 v7, 0xf

    iput v7, v5, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "enable"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    move v7, v8

    :goto_0
    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v7, "ConfigureWifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "KEY_WIFI_CONNECTION_TYPE onPreferenceChange connectionType :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "wifi_cmcc_manual"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    const v10, 0x7f1221ba

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const v12, 0x7f121760

    const v13, 0x7f120a0d

    invoke-virtual {v7, v12, v13, v10, v11}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :cond_2
    move v7, v9

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    const v8, 0x7f12201a

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    return v9

    :cond_3
    return v9
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    sget-boolean v2, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_cmcc_manual"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ConfigureWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KEY_WIFI_CONNECTION_TYPE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->wifiConnectType:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiConnectionTypePrefController;->updatecmccConnectTypeSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
