.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-wide v4, v3, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    long-to-int v1, v4

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget v3, v3, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-boolean v3, v3, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    iget-object v4, v4, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    int-to-long v4, v1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
