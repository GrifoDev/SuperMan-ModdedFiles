.class Landroid/telecom/InCallService$1;
.super Landroid/os/Handler;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v7}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    if-nez v7, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v5, :cond_0

    return-void

    :cond_0
    const-string/jumbo v7, "InCallService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "InCallService - handleMessage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v7, Landroid/telecom/Phone;

    new-instance v8, Landroid/telecom/InCallAdapter;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v8, v5}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    invoke-direct {v7, v8}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;)V

    invoke-static {v6, v7}, Landroid/telecom/InCallService;->-set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v6}, Landroid/telecom/InCallService;->-get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v6, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v6}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableCall;

    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/ParcelableCall;

    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v5

    :pswitch_4
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/telecom/CallAudioState;

    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto :goto_0

    :pswitch_5
    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v7}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto/16 :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    :pswitch_6
    iget-object v7, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v7}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_2

    :goto_2
    invoke-virtual {v7, v5}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_0

    :cond_2
    move v5, v6

    goto :goto_2

    :pswitch_7
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/Phone;->internalSilenceRinger()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v5

    :pswitch_9
    iget-object v5, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v5}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/telecom/Phone;->internalChangeInContent(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
