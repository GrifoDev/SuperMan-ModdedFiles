.class final Lcom/android/server/aod/AODManagerService$LocalService;
.super Lcom/samsung/android/aod/AODManagerInternal;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Lcom/samsung/android/aod/AODManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$LocalService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/aod/AODManagerService$LocalService;-><init>(Lcom/android/server/aod/AODManagerService;)V

    return-void
.end method


# virtual methods
.method public isAODState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->isAODStateInternal()Z

    const/4 v0, 0x0

    return v0
.end method

.method public notifyScreenOff()Z
    .locals 2

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-wrap2(Lcom/android/server/aod/AODManagerService;I)Z

    move-result v0

    return v0
.end method

.method public notifyScreenOn()Z
    .locals 2

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-wrap2(Lcom/android/server/aod/AODManagerService;I)Z

    move-result v0

    return v0
.end method

.method public screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V
    .locals 6

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/server/aod/AODManagerService;->SEC_FEATURE_SUPPORT_SCREEN_TURNING_ON_DELAY:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get7(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get22(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get7(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get22(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/aod/AODManagerService$AODHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenTurningOn post"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "debug.aod.turningondelay"

    invoke-static {v1, v3}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screenTurningOn post - add delay +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get7(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-get22(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Runnable;

    move-result-object v2

    add-int/lit8 v3, v0, 0x64

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/aod/AODManagerService$AODHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-get21(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1, p1}, Lcom/android/server/aod/AODManagerService;->-set1(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)Lcom/samsung/android/aod/AODManager$AODChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v1}, Lcom/android/server/aod/AODManagerService;->wakeUpInternal()Z

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenTurningOn directly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-get3()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenTurningOn : Do nothing, There is no Listener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAOD()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->startAODInternal()Z

    move-result v0

    return v0
.end method

.method public stopAOD()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->stopAODInternal()Z

    move-result v0

    return v0
.end method

.method public updateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/aod/AODManagerService;->-wrap33(Lcom/android/server/aod/AODManagerService;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updateNotificationKeys(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/aod/AODManagerService;->-wrap35(Lcom/android/server/aod/AODManagerService;ILjava/util/List;)V

    return-void
.end method

.method public wakeUp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$LocalService;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-virtual {v0}, Lcom/android/server/aod/AODManagerService;->wakeUpInternal()Z

    move-result v0

    return v0
.end method
