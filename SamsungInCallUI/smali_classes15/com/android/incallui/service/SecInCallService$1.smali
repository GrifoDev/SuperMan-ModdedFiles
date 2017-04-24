.class Lcom/android/incallui/service/SecInCallService$1;
.super Landroid/os/Handler;
.source "SecInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/SecInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecInCallService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecInCallService$1;->this$0:Lcom/android/incallui/service/SecInCallService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "SecInCallService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/telecom/ISecInCallInterface;

    invoke-virtual {v3, v2}, Lcom/android/incallui/TelecomAdapter;->setSecInCallAdapter(Lcom/android/server/telecom/ISecInCallInterface;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/service/SecModifyCallProcessor;->getInstance()Lcom/android/incallui/service/SecModifyCallProcessor;

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    invoke-virtual {v5, v2, v6, v4, v3}, Lcom/android/incallui/service/SecModifyCallProcessor;->onModifyCall(ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/incallui/InCallPresenter;->onPostDialCharPause(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/incallui/InCallPresenter;->onPostDialCharPauseComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/incallui/InCallPresenter;->onReceivedMessageFromTelecom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallNotifier;->getInstance()Lcom/android/incallui/service/vt/VideoCallNotifier;

    move-result-object v2

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/incallui/service/vt/VideoCallNotifier;->handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
