.class public Lcom/android/settings/notification/ScreenLockSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "ScreenLockSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string/jumbo v2, "screen_locking_sounds"

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    const/4 v1, 0x0

    new-array v5, v1, [I

    const/4 v1, 0x2

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method
