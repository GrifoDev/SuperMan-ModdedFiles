.class Lcom/android/server/job/controllers/DeviceIdleJobsController$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/DeviceIdleJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/DeviceIdleJobsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->-get0(Lcom/android/server/job/controllers/DeviceIdleJobsController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateIdleMode(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/DeviceIdleJobsController$2;->this$0:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->updateWhitelist()V

    goto :goto_1
.end method
