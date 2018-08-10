.class public Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiControlHistoryPrefController.java"


# static fields
.field private static DBG:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mControlHistory:Landroid/support/v7/preference/SecPreference;

.field private final mFragment:Landroid/app/Fragment;

.field private mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mIsAvailable:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_control_history"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mControlHistory:Landroid/support/v7/preference/SecPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wifi_control_history"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mControlHistory:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_control_history"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    const-class v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    const v4, 0x7f121fcb

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    const v1, 0x7f121760

    const v2, 0x7f120a19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    check-cast v4, Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiControlHistoryPrefController;->mFragment:Landroid/app/Fragment;

    const-class v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f12204b

    const/4 v8, -0x1

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    return v7
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
