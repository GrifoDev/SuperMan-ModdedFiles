.class Lcom/android/server/policy/SamsungPhoneWindowManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.capture.QuickPanelCapture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    const-string/jumbo v3, "QuickPanelCapture, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set4(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set5(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "com.samsung.android.capture.DesktopCapture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DesktopCapture, so takeScreenshot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set13(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set4(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set5(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    const-string/jumbo v2, "Fullscreen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Region"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager$TakeScreenShotRunnable;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
