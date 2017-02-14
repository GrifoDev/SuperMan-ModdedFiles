.class Lcom/android/server/wm/WindowSurfacePlacer$1;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowSurfacePlacer;->postDelayedResize(Lcom/android/server/wm/WindowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowSurfacePlacer;

.field final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer;Lcom/android/server/wm/WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x96

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    add-long v2, v4, v6

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/WindowSurfacePlacer;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Input method animation duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const-wide/16 v2, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v4, Lcom/android/server/wm/WindowSurfacePlacer$1$1;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/WindowSurfacePlacer$1$1;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$1;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/wm/WindowSurfacePlacer;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Failed to get input method animation duration, use default only"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->val$win:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
