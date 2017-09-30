.class Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/carriermatching/CircularCountDownProgress;->startCountDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;


# direct methods
.method constructor <init>(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$002(Lcom/android/incallui/carriermatching/CircularCountDownProgress;J)J

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$200(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$000(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$102(Lcom/android/incallui/carriermatching/CircularCountDownProgress;J)J

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$100(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$100(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$400(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$302(Lcom/android/incallui/carriermatching/CircularCountDownProgress;D)D

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$200(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v2}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$000(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    const-string v0, "CircularCountDownProgress"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$500(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$600(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$600(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress$OnFinishListener;->onFinish(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-virtual {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->invalidate()V

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$500(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/carriermatching/CircularCountDownProgress$1;->this$0:Lcom/android/incallui/carriermatching/CircularCountDownProgress;

    invoke-static {v1}, Lcom/android/incallui/carriermatching/CircularCountDownProgress;->access$700(Lcom/android/incallui/carriermatching/CircularCountDownProgress;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
