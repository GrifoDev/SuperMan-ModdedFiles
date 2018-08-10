.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method private setCameraAvailable(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setTorchMode(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchModeChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callback at : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setCameraAvailable(Z)V

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setTorchMode(Z)V

    :cond_0
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setCameraAvailable(Z)V

    :cond_0
    return-void
.end method
