.class final Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;
.super Lcom/android/server/telecom/ISecInCallInterface$Stub;
.source "SecInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecInCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecInCallService;


# direct methods
.method private constructor <init>(Lcom/android/incallui/service/SecInCallService;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    invoke-direct {p0}, Lcom/android/server/telecom/ISecInCallInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/service/SecInCallService;Lcom/android/incallui/service/SecInCallService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/service/SecInCallService;
    .param p2, "x1"    # Lcom/android/incallui/service/SecInCallService$1;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;-><init>(Lcom/android/incallui/service/SecInCallService;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const-string v12, "SecInCallService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invoke: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v8, "retValue":Landroid/os/Bundle;
    const/4 v12, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v12, :pswitch_data_0

    .line 133
    const-string v12, "SecInCallService"

    const-string v13, "invoke: unknown command"

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_1
    return-object v8

    .line 98
    :sswitch_0
    const-string v13, "setSecInCallAdapter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :sswitch_1
    const-string v13, "onModifyCall"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :sswitch_2
    const-string v13, "answerRingingCallInUI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x2

    goto :goto_0

    :sswitch_3
    const-string v13, "onPostDialPause"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x3

    goto :goto_0

    :sswitch_4
    const-string v13, "onPostDialPauseComplete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x4

    goto :goto_0

    :sswitch_5
    const-string v13, "sendMessageToUI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x5

    goto :goto_0

    :sswitch_6
    const-string v13, "needToShowAsFullScreen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x6

    goto :goto_0

    :sswitch_7
    const-string v13, "handleCallSessionMessage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v12, 0x7

    goto :goto_0

    .line 100
    :pswitch_0
    const-string v12, "secInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/telecom/ISecInCallInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/telecom/ISecInCallInterface;

    move-result-object v9

    .line 101
    .local v9, "secInCallAdapter":Lcom/android/server/telecom/ISecInCallInterface;
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 136
    .end local v9    # "secInCallAdapter":Lcom/android/server/telecom/ISecInCallInterface;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "SecInCallService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invoke: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v12, "isIncoming"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 105
    .local v3, "isIncoming":Z
    const-string v12, "callType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "callType":I
    const/4 v12, 0x2

    new-array v5, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "error"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    const-string v13, "callId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    .line 107
    .local v5, "onModifyCallArgs":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v14, v1, v12, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 110
    .end local v1    # "callType":I
    .end local v3    # "isIncoming":Z
    .end local v5    # "onModifyCallArgs":[Ljava/lang/String;
    :pswitch_2
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 113
    :pswitch_3
    const/4 v12, 0x2

    new-array v6, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "callId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    const-string v13, "remainingChars"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v12

    .line 114
    .local v6, "onPostDialPauseArgs":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 117
    .end local v6    # "onPostDialPauseArgs":[Ljava/lang/String;
    :pswitch_4
    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "callId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    const/4 v12, 0x1

    const-string v13, "remainingChars"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 118
    .local v7, "onPostDialPauseCompleteArgs":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v12, v13, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 121
    .end local v7    # "onPostDialPauseCompleteArgs":[Ljava/lang/String;
    :pswitch_5
    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "telecomCallId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x1

    const-string v13, "info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 122
    .local v10, "sendMessageToUIArgs":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x6

    invoke-virtual {v12, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 125
    .end local v10    # "sendMessageToUIArgs":[Ljava/lang/String;
    :pswitch_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowAsFullScreen()Z

    move-result v11

    .line 126
    .local v11, "value":Z
    const-string v12, "retValue"

    invoke-virtual {v8, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 129
    .end local v11    # "value":Z
    :pswitch_7
    const/4 v12, 0x2

    new-array v4, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "telecomCallId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    const/4 v12, 0x1

    const-string v13, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v12

    .line 130
    .local v4, "mediaSessionMessage":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/incallui/service/SecInCallService$SecInCallServiceBinder;->this$0:Lcom/android/incallui/service/SecInCallService;

    # getter for: Lcom/android/incallui/service/SecInCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/incallui/service/SecInCallService;->access$000(Lcom/android/incallui/service/SecInCallService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v12, v13, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 98
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7825a2e5 -> :sswitch_6
        -0x71642529 -> :sswitch_7
        -0x4edf71a0 -> :sswitch_4
        -0x3b6ae7a3 -> :sswitch_0
        0x248882b -> :sswitch_2
        0xf49d977 -> :sswitch_1
        0x2721d24e -> :sswitch_5
        0x3c11f007 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
