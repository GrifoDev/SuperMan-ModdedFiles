.class Lcom/android/server/wm/WindowSurfacePlacer$1$1;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowSurfacePlacer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowSurfacePlacer$1;

.field final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowSurfacePlacer$1;Lcom/android/server/wm/WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->this$1:Lcom/android/server/wm/WindowSurfacePlacer$1;

    iput-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/WindowSurfacePlacer;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handle delayed resize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->val$win:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mDelayedResize:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->reportResized()V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->this$1:Lcom/android/server/wm/WindowSurfacePlacer$1;

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer$1;->this$0:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-static {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->-get1(Lcom/android/server/wm/WindowSurfacePlacer;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer$1$1;->val$win:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
