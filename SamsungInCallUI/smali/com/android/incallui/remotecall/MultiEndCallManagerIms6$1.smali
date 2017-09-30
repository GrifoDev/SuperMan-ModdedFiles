.class Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;
.super Lcom/sec/ims/IDialogEventListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;


# direct methods
.method constructor <init>(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-direct {p0}, Lcom/sec/ims/IDialogEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogEvent(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/Dialog;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getState()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getDirection()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->access$002(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    const-string v6, "MultiEndCallManagerIms6"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDialogEvent() state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", direction : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deviceId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msisdn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-static {v3}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->access$000(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sipCallId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    iput-object p1, v0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    iget-object v0, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    iget-object v1, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-virtual {v1}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getRemoteCallAdapterList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    return-void
.end method
