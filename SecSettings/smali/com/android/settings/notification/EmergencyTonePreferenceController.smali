.class public Lcom/android/settings/notification/EmergencyTonePreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "EmergencyTonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;

    const-string/jumbo v3, "emergency_tone"

    const-string/jumbo v4, "emergency_tone"

    const/4 v1, 0x2

    filled-new-array {v2, v1, v5}, [I

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/EmergencyTonePreferenceController$1;-><init>(Lcom/android/settings/notification/EmergencyTonePreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/notification/EmergencyTonePreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method
