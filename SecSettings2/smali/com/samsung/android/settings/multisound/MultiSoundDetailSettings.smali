.class public Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "MultiSoundDetailSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceType:Landroid/preference/PreferenceScreen;

.field private mSetApplication:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "set_application"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "device_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onResume()V
    .locals 7

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "multisound_app"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "multisound_devicetype"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mSetApplication:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b09e7

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/MultiSoundDetailSettings;->mDeviceType:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b09e8

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
