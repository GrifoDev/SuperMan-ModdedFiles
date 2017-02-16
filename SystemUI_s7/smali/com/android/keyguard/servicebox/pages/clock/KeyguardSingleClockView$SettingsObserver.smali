.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardSingleClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    # getter for: Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->access$001(Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "barometr_in_lockscreen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "hide_digital_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "hide_digital_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "hide_digital_sec"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock3"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock4"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock5"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock6"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock7"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock8"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock9"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock10"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock11"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock12"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock13"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock14"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock15"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock16"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "lock_analog_clock17"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "pedo"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "hide_weather"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "hide_weather1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "weath1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideBarometr()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideDigitalClock()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideDigitalData()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideDigitalSec()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo1()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo2()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo3()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo4()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo5()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo6()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo7()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo8()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo9()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo10()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo11()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo12()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo13()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo14()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo15()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo16()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo17()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo18()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideWeather()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideWeather1()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideWeather2()V

    return-void
.end method
