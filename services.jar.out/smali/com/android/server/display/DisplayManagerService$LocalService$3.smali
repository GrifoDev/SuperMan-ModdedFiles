.class Lcom/android/server/display/DisplayManagerService$LocalService$3;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayManagerService$LocalService$3$1;
    }
.end annotation


# instance fields
.field private mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

.field private final mRequestDisplayStateRunnable:Ljava/lang/Runnable;

.field private mRequestSubDisplayStateDoneListener:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/DisplayManagerService$LocalService$3;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService$3;->requestDesiredDisplayState(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$3$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService$3;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private requestDesiredDisplayState(II)V
    .locals 2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap33(Lcom/android/server/display/DisplayManagerService;II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get3(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(I)V

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->-wrap33(Lcom/android/server/display/DisplayManagerService;II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get3(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public registerRequestDisplayStateDoneListener(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get8(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public requestDisplayState(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get8(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;->-set1(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v0, p2}, Lcom/android/server/display/DisplayManagerService$LocalService;->-set0(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get11(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->-set3(Lcom/android/server/display/DisplayManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get0(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get5(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
