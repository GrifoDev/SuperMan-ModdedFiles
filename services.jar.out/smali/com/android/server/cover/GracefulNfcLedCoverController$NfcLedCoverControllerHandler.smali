.class final Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/GracefulNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap9(Lcom/android/server/cover/GracefulNfcLedCoverController;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap0(Lcom/android/server/cover/GracefulNfcLedCoverController;)V

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v3, v4, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap8(Lcom/android/server/cover/GracefulNfcLedCoverController;I[B)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-get2(Lcom/android/server/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-get0(Lcom/android/server/cover/GracefulNfcLedCoverController;)Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-get0(Lcom/android/server/cover/GracefulNfcLedCoverController;)Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-get2(Lcom/android/server/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap6(Lcom/android/server/cover/GracefulNfcLedCoverController;I)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap4(Lcom/android/server/cover/GracefulNfcLedCoverController;II)V

    goto :goto_0

    :pswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_1

    :goto_1
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap2(Lcom/android/server/cover/GracefulNfcLedCoverController;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap1(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap7(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap3(Lcom/android/server/cover/GracefulNfcLedCoverController;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/GracefulNfcLedCoverController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v3, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->-wrap5(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
