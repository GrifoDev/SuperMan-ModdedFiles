.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardTouchHelpers(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffordanceTap()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->deactivateNotificationRow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->NOTI_SUPPORT_ICONS_ONLY_LOCKSCREEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->resetNotificationPreview()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationController()Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setHelpText(I)V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/swipe/SwipeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->onUnlockExecuted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method
