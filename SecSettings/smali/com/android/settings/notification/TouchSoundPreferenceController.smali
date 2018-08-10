.class public Lcom/android/settings/notification/TouchSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "TouchSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/TouchSoundPreferenceController$1;

    const-string/jumbo v3, "touch_sounds"

    const-string/jumbo v4, "sound_effects_enabled"

    const/4 v1, 0x0

    new-array v6, v1, [I

    const/4 v2, 0x2

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/TouchSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/TouchSoundPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/notification/TouchSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method
