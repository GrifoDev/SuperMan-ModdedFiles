.class public Lcom/android/settings/TestingSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f08012b

    invoke-virtual {p0, v2}, Lcom/android/settings/TestingSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "radio_info_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method
