.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract addQsTile(Landroid/content/ComponentName;)V
.end method

.method public abstract animateCollapsePanels(I)V
.end method

.method public abstract animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract animateExpandNotificationsPanel()V
.end method

.method public abstract animateExpandSettingsPanel(Ljava/lang/String;)V
.end method

.method public abstract appTransitionCancelled()V
.end method

.method public abstract appTransitionFinished()V
.end method

.method public abstract appTransitionPending()V
.end method

.method public abstract appTransitionStarting(JJ)V
.end method

.method public abstract buzzBeepBlinked()V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract clickTile(Landroid/content/ComponentName;)V
.end method

.method public abstract disable(IIZ)V
.end method

.method public abstract dismissKeyboardShortcutsMenu()V
.end method

.method public abstract hideNaviBarRemoteView(Ljava/lang/String;I)V
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract notificationLightOff()V
.end method

.method public abstract notificationLightPulse(III)V
.end method

.method public abstract onCameraLaunchGestureDetected(I)V
.end method

.method public abstract onNavigationBarForceClicked(III)V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract remQsTile(Landroid/content/ComponentName;)V
.end method

.method public abstract removeIcon(Ljava/lang/String;)V
.end method

.method public abstract sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
.end method

.method public abstract setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
.end method

.method public abstract setImeWindowStatus(Landroid/os/IBinder;IIZ)V
.end method

.method public abstract setIndicatorBgColor(I)V
.end method

.method public abstract setKnoxDesktopTaskBar(ZZ)V
.end method

.method public abstract setNavigationBarIconColor(I)V
.end method

.method public abstract setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract setWindowState(II)V
.end method

.method public abstract showAssistDisclosure()V
.end method

.method public abstract showNaviBarRemoteView(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
.end method

.method public abstract showNavigationBarInFullscreen()V
.end method

.method public abstract showRecentApps(ZZ)V
.end method

.method public abstract showScreenPinningRequest(I)V
.end method

.method public abstract showServiceBox(Ljava/lang/String;)V
.end method

.method public abstract showTvPictureInPictureMenu()V
.end method

.method public abstract startAssist(Landroid/os/Bundle;)V
.end method

.method public abstract toggleKeyboardShortcutsMenu(I)V
.end method

.method public abstract toggleNotificationPanel()V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract toggleSplitScreen(Z)V
.end method

.method public abstract topAppWindowChanged(Z)V
.end method

.method public abstract updateKnoxDesktopTaskBar(IIIILandroid/content/ComponentName;Ljava/lang/String;)V
.end method
