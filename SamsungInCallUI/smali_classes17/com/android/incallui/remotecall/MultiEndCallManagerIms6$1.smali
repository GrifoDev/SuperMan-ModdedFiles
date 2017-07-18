.class Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;
.super Lcom/sec/ims/IDialogEventListener$Stub;
.source "MultiEndCallManagerIms6.java"


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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDialogEvent(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getState()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getDirection()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->access$002(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "MultiEndCallManagerIms6"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDialogEvent() state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", direction : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", deviceId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", callId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", msisdn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-static {v9}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->access$000(Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", sipCallId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    iput-object p1, v6, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->mDialogEvent:Lcom/sec/ims/DialogEvent;

    iget-object v6, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    iget-object v7, p0, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6$1;->this$0:Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;

    invoke-virtual {v7}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->getRemoteCallAdapterList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/remotecall/MultiEndCallManagerIms6;->onNotifyRemoteCallStateChanged(Ljava/util/ArrayList;)V

    return-void
.end method
