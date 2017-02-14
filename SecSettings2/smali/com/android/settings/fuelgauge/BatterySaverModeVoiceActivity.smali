.class public Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;
.super Lcom/android/settings/utils/VoiceSettingsActivity;
.source "BatterySaverModeVoiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/VoiceSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onVoiceSettingInteraction(Landroid/content/Intent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "android.settings.extra.battery_saver_mode_enabled"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v1, "android.settings.extra.battery_saver_mode_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->notifySuccess(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "BatterySaverModeVoiceActivity"

    const-string/jumbo v2, "Unable to set power mode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/fuelgauge/BatterySaverModeVoiceActivity;->notifyFailure(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "BatterySaverModeVoiceActivity"

    const-string/jumbo v2, "Missing battery saver mode extra"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
