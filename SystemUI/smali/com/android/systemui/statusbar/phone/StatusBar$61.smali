.class Lcom/android/systemui/statusbar/phone/StatusBar$61;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$beforeFading:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->val$beforeFading:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v4, 0x64

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLaunchTransitionFadingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->val$beforeFading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->val$beforeFading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/ScrimController;->forceHideScrims(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setParentNotFullyVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$61$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$61$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$61;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x78

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(JJZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setParentNotFullyVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$61$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$61$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$61;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-eq v0, v6, :cond_5

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap20(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap31(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLockStarUnlockAnimation()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap30(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    goto/16 :goto_0
.end method
