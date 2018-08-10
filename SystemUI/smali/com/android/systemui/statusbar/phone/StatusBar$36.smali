.class Lcom/android/systemui/statusbar/phone/StatusBar$36;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "enable_reserve_max_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "enable_reserve_max_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap22(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_2
    :goto_0
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PROPORTIONAL_DIM:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlphaForKeyguard(Z)V

    :cond_3
    sget-boolean v1, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ICONS_ONLY_LOCKSCREEN:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPreviewController:Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateWhiteWallpaperState(Z)V

    :cond_4
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->updateWhiteWallpaperState(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap38(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap43(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get34(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "white_lockscreen_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v0

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white_lockscreen_navigationbar changed. isWhite="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_6
    :goto_1
    const-string/jumbo v1, "shared_device_status"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    :cond_7
    const-string/jumbo v1, "lock_noticard_opacity"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap38(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap43(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_8
    const-string/jumbo v1, "lockscreen_minimizing_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ICONS_ONLY_LOCKSCREEN:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationIconsOnlyState()V

    :cond_9
    const-string/jumbo v1, "notification_text_color_inversion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap43(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_a
    const-string/jumbo v1, "notification_freeform_menuitem"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap39(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap19(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto/16 :goto_1
.end method
