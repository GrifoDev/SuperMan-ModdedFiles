.class final Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap10(Lcom/android/server/cover/NfcLedCoverController;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap1(Lcom/android/server/cover/NfcLedCoverController;)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get5(Lcom/android/server/cover/NfcLedCoverController;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap11(Lcom/android/server/cover/NfcLedCoverController;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->-get3(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->-wrap9(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap1(Lcom/android/server/cover/NfcLedCoverController;)V

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v2, v3, v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap9(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->-get6(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->-wrap7(Lcom/android/server/cover/NfcLedCoverController;I)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/server/cover/NfcLedCoverController;->-wrap5(Lcom/android/server/cover/NfcLedCoverController;II)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->-wrap3(Lcom/android/server/cover/NfcLedCoverController;I)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v2}, Lcom/android/server/cover/NfcLedCoverController;->-get6(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    goto/16 :goto_0

    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap4(Lcom/android/server/cover/NfcLedCoverController;)V

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap2(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap8(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/server/cover/NfcLedCoverController;->-wrap6(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
