.class public Lcom/android/settings/notification/VibrateOnTouchPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "VibrateOnTouchPreferenceController.java"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 7

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;

    const-string/jumbo v3, "vibrate_on_touch"

    const-string/jumbo v4, "haptic_feedback_enabled"

    new-array v6, v5, [I

    const/4 v2, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;-><init>(Lcom/android/settings/notification/VibrateOnTouchPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object v0, p0, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    return-void
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
