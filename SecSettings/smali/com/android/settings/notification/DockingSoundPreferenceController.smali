.class public Lcom/android/settings/notification/DockingSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "DockingSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 7

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/DockingSoundPreferenceController$1;

    const-string/jumbo v3, "docking_sounds"

    const-string/jumbo v4, "dock_sounds_enabled"

    const/4 v1, 0x0

    new-array v6, v1, [I

    move-object v1, p0

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/DockingSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/DockingSoundPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/notification/DockingSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method
