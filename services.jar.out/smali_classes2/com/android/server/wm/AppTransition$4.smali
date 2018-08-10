.class Lcom/android/server/wm/AppTransition$4;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/16 v4, 0x69

    const/16 v3, 0x67

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/AppTransition;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "relaunch_anim onAnimationEnd()"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenFreezeController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getFreeformRelaunchAnimState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/AppTransition$4;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->-get3(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, v1, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/MultiWindowManagerInternal$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/AppTransition;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "relaunch_anim onAnimationStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
