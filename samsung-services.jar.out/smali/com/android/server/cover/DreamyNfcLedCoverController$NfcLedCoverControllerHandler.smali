.class final Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap9(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v4, v5, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap8(Lcom/android/server/cover/DreamyNfcLedCoverController;I[B)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4, v5}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap2(Lcom/android/server/cover/DreamyNfcLedCoverController;II)V

    goto :goto_0

    :pswitch_4
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap1(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap0(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap6(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap3(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    const-wide/16 v2, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1, v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap7(Lcom/android/server/cover/DreamyNfcLedCoverController;J)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap4(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    :pswitch_a
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v1, :cond_2

    :goto_2
    invoke-static {v5, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap10(Lcom/android/server/cover/DreamyNfcLedCoverController;Z)V

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_2

    :pswitch_b
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v1, :cond_3

    :goto_3
    invoke-static {v5, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap5(Lcom/android/server/cover/DreamyNfcLedCoverController;Z)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
