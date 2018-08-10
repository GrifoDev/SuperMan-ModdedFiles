.class Lcom/sec/android/cover/neoncover/NeonCoverController$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "NeonCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 6

    const/16 v4, 0x10

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "display_density_forced"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDensityChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v3}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v2}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "neon_cover_test_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Test mode changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onCoverAppCovered(Z)V
    .locals 4

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoverAppCovered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get3(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "neon_cover_all_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x378

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$1;->this$0:Lcom/sec/android/cover/neoncover/NeonCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get4(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
