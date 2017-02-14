.class public Lcom/samsung/android/settings/csc/CscSettingsLoader;
.super Ljava/lang/Object;
.source "CscSettingsLoader.java"


# instance fields
.field private final PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mParser:Lcom/samsung/android/settings/csc/CscParser;

.field private mResolver:Landroid/content/ContentResolver;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Operators.DefaultRinger"

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->PATH_OPERATORS_DEFAULTRINGER:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "USER_PREFERENCES"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time_zone"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "CscSettingsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v3, "Settings.Main.Sound.MediaVolume"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Settings.Main.Sound.MediaVolume"

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "CscSettingsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Settings.Main.Sound.NotificationVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v3, "Settings.Main.Sound.MsgToneVolume"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Settings.Main.Sound.MsgToneVolume"

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.RngVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.RingVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Settings.Main.Sound.RngVolume"

    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.AlarmVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Settings.Main.Sound.ALARMVolume"

    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.RngToneAlertType"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Settings.Main.Sound.RngToneAlertType"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateSilentMode(Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Settings.Main.Sound.KeyTone.KeyVolume"

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateVolume(ILjava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "15sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_8
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Setting Power Saving Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "psm_switch"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Setting GPS Satelites"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "gps,network"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.MotionActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_engine"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_b
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_GLANCE_VIEW"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "air_motion_glance_view"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_c
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Motion.DirctCall"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    :goto_d
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    :goto_e
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    :goto_f
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_SWIPE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    :goto_10
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PALM_TOUCH"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    :goto_11
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PREF_RINGTONE_SET"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PREF_NOTIFICATION_SET"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "PREF_ALARMTONE_SET"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/csc/CscSettingsLoader;->updateRingtones(I)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.DateTimeFormat.TimezoneUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "auto_time_zone"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Timezone Update is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Media volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Notification volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Ring Volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "ALARM Volume is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "RngToneAlertType is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "KeyTones is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "30sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0x1d4c0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0x493e0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "10min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "screen_off_timeout"

    const v2, 0x927c0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.BackLightTime"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "30min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    :cond_1a
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "BackLight Time is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Sound.TouchTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_1c
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Touch Sounds is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.PowerSavingMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "psm_switch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    :cond_1e
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "Setting Power Saving Mode is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "-gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.GPS.GPSActivation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "location_providers_allowed"

    const-string/jumbo v2, "-gps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    :cond_22
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "GPS Satelites is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_23
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.Activation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_engine"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_b

    :cond_24
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "MotionActivation is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.GlanceView"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "air_motion_glance_view"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    :cond_26
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "GlanceView is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.DirectCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up_to_call_out"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_d

    :cond_28
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "DirctCall is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.SmartAlert"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_pick_up"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_e

    :cond_2a
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "SmartAlert is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.TurnOver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_f

    :cond_2c
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "TurnOver is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmSwipe"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_swipe"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_10

    :cond_2e
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "PalmSwipe is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v1, "Settings.Main.Phone.Motion.PalmTouch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "surface_palm_touch"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_11

    :cond_30
    const-string/jumbo v0, "CscSettingsLoader"

    const-string/jumbo v1, "PalmTouch is not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method

.method public updateRingtones(I)V
    .locals 17

    new-instance v7, Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-direct {v7, v13}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    new-instance v13, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Common_UseChameleon"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v4, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getChameleonPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "Operators.DefaultRinger"

    invoke-virtual {v4, v13}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.RingTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Chameleon Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1

    :cond_1
    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Setting Ringtones (type) : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.RingTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "1. Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Ringtone found: PREF_RINGTONE_SET(1)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-virtual {v7}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    const-string/jumbo v13, "title"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v6, 0x0

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v13, "Ringtone title : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v13, "CscSettingsLoader"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v13, "Ringtone equalsIgnoreCase (position): "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v13, "CscSettingsLoader"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lt v6, v13, :cond_11

    :cond_5
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "No matched ringtones"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_b

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Aleady failed. The Ringtone is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_6
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.MessageTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "1. Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Landroid/media/RingtoneManager;->setType(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v14, "Settings.Main.Sound.AlarmTone.src"

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/settings/csc/CscParser;->getAttrbute(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "1. Tag_Str: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Notification found: PREF_NOTIFICATION_SET(1)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Alarmtone found: PREF_ALARMTONE_SET(1)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Ringtone not found. Media DB was not prepared: PREF_RINGTONE_SET(2)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_d
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_e

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Aleady failed. Notification is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Notification not found. Media DB was not prepared: PREF_NOTIFICATION_SET(2)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_10

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Aleady failed. Alarmtone is not exist"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "Alarmtone not found. Media DB was not prepared: PREF_ALARMTONE_SET(2)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v7, v6}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "CscSettingsLoader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ringtone uri : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_13

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    invoke-static {v13, v14, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "DEBUG_RINGTONE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CscSettings : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_12
    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Ringtone was set : Before PREF_RINGTONE_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x2710

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_RINGTONE_SET"

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Ringtone was set : PREF_RINGTONE_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_14
    return-void

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_15
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    invoke-static {v13, v14, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "DEBUG_RINGTONE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CscSettings : "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_16

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_6
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_NOTIFICATION_SET"

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Notification was set : PREF_NOTIFICATION_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_16
    const-string/jumbo v13, ""

    goto :goto_6

    :cond_17
    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const/4 v14, 0x4

    invoke-static {v13, v14, v12}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "DEBUG_RINGTONE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CscSettings : "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_7
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v14, "PREF_ALARMTONE_SET"

    const/4 v15, 0x3

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "CscSettingsLoader"

    const-string/jumbo v14, "CSC Alarmtone was set : PREF_ALARMTONE_SET(3)"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_18
    const-string/jumbo v13, ""

    goto :goto_7
.end method

.method public updateSilentMode(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "CscSettingsLoader"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v2, "melody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " melody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : mute"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "vib"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : vib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : vibmelody"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "CscSettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateVolume(ILjava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Lcom/samsung/android/settings/csc/CscParser;

    invoke-static {}, Lcom/samsung/android/settings/csc/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/csc/CscParser;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    const-string/jumbo v3, "CscSettingsLoader"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mParser:Lcom/samsung/android/settings/csc/CscParser;

    invoke-virtual {v3, p2}, Lcom/samsung/android/settings/csc/CscParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/csc/CscSettingsLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "CscSettingsLoader"

    const-string/jumbo v4, "updateVolume explain error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "CscSettingsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
