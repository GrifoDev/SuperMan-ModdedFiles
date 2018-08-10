.class Lcom/android/server/wm/AspectRatioController$4;
.super Ljava/lang/Object;
.source "AspectRatioController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get8(Lcom/android/server/wm/AspectRatioController;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get8(Lcom/android/server/wm/AspectRatioController;)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/AppTransition;->prepareAppTransitionLocked(IZIZ)Z

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get7(Lcom/android/server/wm/AspectRatioController;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/AspectRatioController;->-wrap3(Lcom/android/server/wm/AspectRatioController;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AspectRatioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not open this task id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$4;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get8(Lcom/android/server/wm/AspectRatioController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
