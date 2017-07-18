.class Lcom/android/launcher2/ar/AROrientationManager$1;
.super Landroid/os/Handler;
.source "AROrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ar/AROrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ar/AROrientationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ar/AROrientationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0xc8

    const/16 v7, 0x64

    const/4 v6, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/android/launcher2/ar/AROrientationManager;->access$000()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$100(Lcom/android/launcher2/ar/AROrientationManager;)I

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$200(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$200(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-ne v2, v6, :cond_4

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ar/AROrientationManager;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OrientationManager::ORIENTATION_CHANGE : prevOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->isAnimationRunning()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$400(Lcom/android/launcher2/ar/AROrientationManager;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$500(Lcom/android/launcher2/ar/AROrientationManager;)V

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$600(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$700(Lcom/android/launcher2/ar/AROrientationManager;)Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$700(Lcom/android/launcher2/ar/AROrientationManager;)Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/launcher2/ar/AROrientationManager$OrientationChangeListener;->onOrientationChanged(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3, v0}, Lcom/android/launcher2/ar/AROrientationManager;->access$802(Lcom/android/launcher2/ar/AROrientationManager;I)I

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3, v6}, Lcom/android/launcher2/ar/AROrientationManager;->access$402(Lcom/android/launcher2/ar/AROrientationManager;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$600(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x384

    const-wide/16 v6, 0x118

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$600(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$600(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$600(Lcom/android/launcher2/ar/AROrientationManager;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/launcher2/ar/AROrientationManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "System Rotation is not enabled - Launcher cannot rotate"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$900(Lcom/android/launcher2/ar/AROrientationManager;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/launcher2/ar/AROrientationManager;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Release waiting flag"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher2/ar/AROrientationManager;->access$402(Lcom/android/launcher2/ar/AROrientationManager;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/ar/AROrientationManager$1;->this$0:Lcom/android/launcher2/ar/AROrientationManager;

    invoke-static {v3}, Lcom/android/launcher2/ar/AROrientationManager;->access$900(Lcom/android/launcher2/ar/AROrientationManager;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x384 -> :sswitch_2
    .end sparse-switch
.end method
