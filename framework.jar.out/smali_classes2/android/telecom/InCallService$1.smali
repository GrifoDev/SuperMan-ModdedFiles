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
    .locals 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v10}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v10

    if-nez v10, :cond_0

    iget v10, p1, Landroid/os/Message;->what:I

    if-eq v10, v8, :cond_0

    return-void

    :cond_0
    const-string/jumbo v10, "Telecom-InCallService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "InCallService - handleMessage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-static {v12}, Landroid/telecom/InCallService;->-wrap0(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v8}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    new-instance v10, Landroid/telecom/Phone;

    new-instance v11, Landroid/telecom/InCallAdapter;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telecom/IInCallAdapter;

    invoke-direct {v11, v8}, Landroid/telecom/InCallAdapter;-><init>(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v8}, Landroid/telecom/InCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {v10, v11, v2, v8}, Landroid/telecom/Phone;-><init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V

    invoke-static {v9, v10}, Landroid/telecom/InCallService;->-set0(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    iget-object v9, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v9}, Landroid/telecom/InCallService;->-get2(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/Phone;->addListener(Landroid/telecom/Phone$Listener;)V

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    iget-object v9, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v9}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/telecom/InCallService;->onPhoneCreated(Landroid/telecom/Phone;)V

    goto :goto_0

    :sswitch_1
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/ParcelableCall;

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :sswitch_2
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/ParcelableCall;

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalUpdateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Landroid/telecom/Phone;->internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v8

    :sswitch_4
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/telecom/CallAudioState;

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v10, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v10}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v8, :cond_1

    :goto_1
    invoke-virtual {v10, v8}, Landroid/telecom/Phone;->internalBringToForeground(Z)V

    goto/16 :goto_0

    :cond_1
    move v8, v9

    goto :goto_1

    :sswitch_6
    iget-object v10, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v10}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v8, :cond_2

    :goto_2
    invoke-virtual {v10, v8}, Landroid/telecom/Phone;->internalSetCanAddCall(Z)V

    goto/16 :goto_0

    :cond_2
    move v8, v9

    goto :goto_2

    :sswitch_7
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Phone;->internalSilenceRinger()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v3, v4}, Landroid/telecom/Phone;->internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v8

    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v7}, Landroid/telecom/Phone;->internalOnRttUpgradeRequest(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Landroid/telecom/Phone;->internalOnRttInitiationFailure(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v8, p0, Landroid/telecom/InCallService$1;->this$0:Landroid/telecom/InCallService;

    invoke-static {v8}, Landroid/telecom/InCallService;->-get1(Landroid/telecom/InCallService;)Landroid/telecom/Phone;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/telecom/Phone;->internalChangeInContent(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0x64 -> :sswitch_b
    .end sparse-switch
.end method
