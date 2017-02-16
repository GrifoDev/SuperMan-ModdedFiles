.class Lcom/android/systemui/statusbar/policy/FlashlightController$2;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get2(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "camera"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-wrap1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FlashlightController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get0(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get7(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-get5(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightController;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightController;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method
