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
.method static synthetic -wrap0(Lcom/android/server/display/DisplayManagerService$LocalService$3;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService$LocalService$3;->requestDesiredDisplayState(III)V

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

.method private requestDesiredDisplayState(III)V
    .locals 2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-wrap25(Lcom/android/server/display/DisplayManagerService;II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_GED_SETINTERACTIVE_ORDER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(II)V

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->-wrap25(Lcom/android/server/display/DisplayManagerService;II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get2(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public registerRequestDisplayStateDoneListener(ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_1
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestSubDisplayStateDoneListener:Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestDisplayState(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService$3;->requestDisplayState(III)V

    return-void
.end method

.method public requestDisplayState(III)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get7(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;->-set1(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService;->-set2(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get2(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->-wrap1(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v1, p3}, Lcom/android/server/display/DisplayManagerService$LocalService;->-set0(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get10(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService;->-set3(Lcom/android/server/display/DisplayManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get0(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-get4(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$3;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->-get1(Lcom/android/server/display/DisplayManagerService$LocalService;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
