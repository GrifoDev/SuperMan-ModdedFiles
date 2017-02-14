.class final Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "lock_screen_show_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap3(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap2(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap1(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    :cond_2
    return-void
.end method

.method public register(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ConfigureNotificationSettings;->-wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
