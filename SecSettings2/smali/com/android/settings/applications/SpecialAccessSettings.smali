.class public Lcom/android/settings/applications/SpecialAccessSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SpecialAccessSettings.java"


# instance fields
.field private mOverlay:Landroid/preference/PreferenceScreen;

.field private mWriteSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "system_alert_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mOverlay:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "write_settings_apps"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/SpecialAccessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mWriteSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mOverlay:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/applications/SpecialAccessSettings;->mWriteSettings:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    return-void
.end method
