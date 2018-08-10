.class Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "SamsungActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SamsungActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VSContainerState"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/am/SamsungActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/SamsungActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method getSurface()Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->this$0:Lcom/android/server/am/SamsungActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/SamsungActivityManagerService;->mSamsungWindowManager:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/SamsungWindowManagerService;->makeTransitionSurfaceVS()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-static {}, Lcom/android/server/am/SamsungActivityManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "VSContainerState: created surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/am/SamsungActivityManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungActivityManager"

    const-string/jumbo v1, "VSContainerState.onAllActivitiesComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    iput-object v2, p0, Lcom/android/server/am/SamsungActivityManagerService$VSContainerState;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_2
    return-void
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/SamsungActivityManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VSContainerState.setVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
