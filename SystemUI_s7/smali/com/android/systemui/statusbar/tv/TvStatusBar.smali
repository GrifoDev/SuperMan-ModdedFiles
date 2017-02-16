.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# instance fields
.field private mLastDispatchedSystemUiVisibility:I

.field mSystemUiVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mLastDispatchedSystemUiVisibility:I

    return-void
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mLastDispatchedSystemUiVisibility:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    iput p1, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mLastDispatchedSystemUiVisibility:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public appTransitionCancelled()V
    .locals 0

    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    return-void
.end method

.method public appTransitionPending()V
    .locals 0

    return-void
.end method

.method public appTransitionStarting(JJ)V
    .locals 0

    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    return-void
.end method

.method public disable(IIZ)V
    .locals 0

    return-void
.end method

.method protected getMaxKeyguardNotifications(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPanelFullyCollapsed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public maybeEscalateHeadsUp()V
    .locals 0

    return-void
.end method

.method public notificationLightOff()V
    .locals 0

    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0

    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .locals 0

    return-void
.end method

.method public onDoubleTapped(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    return-void
.end method

.method protected setHeadsUpUser(I)V
    .locals 0

    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setWindowState(II)V
    .locals 0

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0

    return-void
.end method

.method public showTvPictureInPictureMenu()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/tv/pip/PipManager;->getInstance()Lcom/android/systemui/tv/pip/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tv/pip/PipManager;->showTvPictureInPictureMenu()V

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    const-class v0, Lcom/android/systemui/statusbar/tv/TvStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method protected toggleSplitScreenMode(IIZ)V
    .locals 0

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0

    return-void
.end method

.method protected updateHeadsUp(Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationData$Entry;ZZ)V
    .locals 0

    return-void
.end method

.method protected updateKnoxCustomStatusBarText()V
    .locals 0

    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    return-void
.end method

.method public updatePipVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->notifyUiVisibilityChanged(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method protected updateQuickSettingPanel(Z)V
    .locals 0

    return-void
.end method

.method protected updateQuickSettingPanelVisibility()V
    .locals 0

    return-void
.end method

.method public updateRecentsVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tv/TvStatusBar;->notifyUiVisibilityChanged(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/tv/TvStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method protected updateStatusBarHidden()V
    .locals 0

    return-void
.end method

.method protected updateStatusBarIcons()V
    .locals 0

    return-void
.end method
