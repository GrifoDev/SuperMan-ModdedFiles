.class Lcom/android/systemui/pip/phone/PipManager$1;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "PipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipManager$1;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onActivityPinned()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get3(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMediaController;->onActivityPinned()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onActivityPinned()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->onActivityPinned(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/pip/phone/PipManager$1;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipManager;->-get0(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/pip/phone/PipNotificationController;->onActivityUnpinned(Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipManager$1;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onPinnedStackAnimationEnded()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onPinnedStackAnimationEnded()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipNotificationController;->onPinnedStackAnimationEnded()V

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager$1;->this$0:Lcom/android/systemui/pip/phone/PipManager;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipManager;->-get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    return-void
.end method
