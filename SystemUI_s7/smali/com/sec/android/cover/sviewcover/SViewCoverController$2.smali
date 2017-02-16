.class Lcom/sec/android/cover/sviewcover/SViewCoverController$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 4

    const/16 v3, 0x3e9

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "display_density_forced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDensityChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get1(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get2(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get2(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get2(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverController;->-get2(Lcom/sec/android/cover/sviewcover/SViewCoverController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
