.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

.field final synthetic val$connectionStartTime:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iput-wide p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionResult(Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionResult : success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / elapsed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$connectionStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get4(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get8(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v9}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SaveImageInBackgroundTask : Disconnect ScrollCapture service because saving image failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get8(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get8(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set0(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get8(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "originId"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "rotation"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get7(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "captureMode"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isAutoCropSupported(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "statusBarVisible"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get11(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "navigationBarVisible"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get6(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "statusBarHeight"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get10(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "navigationBarHeight"

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get5(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get8(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get9(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v4}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get3(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotStarted(JLjava/lang/String;Landroid/os/Bundle;)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SaveImageInBackgroundTask : Failed to connect to ScrollCapture service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set2(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;->this$0:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v1, v9}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->-set1(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
