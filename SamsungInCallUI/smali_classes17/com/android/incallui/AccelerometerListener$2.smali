.class Lcom/android/incallui/AccelerometerListener$2;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccelerometerListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AccelerometerListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 152
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    # getter for: Lcom/android/incallui/AccelerometerListener;->mPendingOrientation:I
    invoke-static {v2}, Lcom/android/incallui/AccelerometerListener;->access$200(Lcom/android/incallui/AccelerometerListener;)I

    move-result v2

    # setter for: Lcom/android/incallui/AccelerometerListener;->mOrientation:I
    invoke-static {v0, v2}, Lcom/android/incallui/AccelerometerListener;->access$102(Lcom/android/incallui/AccelerometerListener;I)I

    .line 155
    const-string v2, "AccelerometerListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    .line 156
    # getter for: Lcom/android/incallui/AccelerometerListener;->mOrientation:I
    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->access$100(Lcom/android/incallui/AccelerometerListener;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const-string v0, "horizontal"

    .line 157
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    # getter for: Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;
    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->access$300(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    # getter for: Lcom/android/incallui/AccelerometerListener;->mListener:Lcom/android/incallui/AccelerometerListener$OrientationListener;
    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->access$300(Lcom/android/incallui/AccelerometerListener;)Lcom/android/incallui/AccelerometerListener$OrientationListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    # getter for: Lcom/android/incallui/AccelerometerListener;->mOrientation:I
    invoke-static {v2}, Lcom/android/incallui/AccelerometerListener;->access$100(Lcom/android/incallui/AccelerometerListener;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/incallui/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 163
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 156
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/AccelerometerListener$2;->this$0:Lcom/android/incallui/AccelerometerListener;

    .line 157
    # getter for: Lcom/android/incallui/AccelerometerListener;->mOrientation:I
    invoke-static {v0}, Lcom/android/incallui/AccelerometerListener;->access$100(Lcom/android/incallui/AccelerometerListener;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    const-string v0, "vertical"

    goto :goto_1

    :cond_2
    const-string v0, "unknown"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x4d2
        :pswitch_0
    .end packed-switch
.end method
