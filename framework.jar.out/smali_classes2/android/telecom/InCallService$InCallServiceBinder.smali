.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$InCallServiceBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    return-void
.end method


# virtual methods
.method public addCall(Landroid/telecom/ParcelableCall;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Telecom-InCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InCallServiceBinder - addCall: id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/Call;->stateToStringInternal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const-string/jumbo v0, "Telecom-InCallService"

    const-string/jumbo v1, "InCallServiceBinder - addCall: call is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onChangeInContent(I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRttInitiationFailure(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRttUpgradeRequest(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v1}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public silenceRinger()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Telecom-InCallService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "InCallServiceBinder - updateCall: id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/Call;->stateToStringInternal(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-static {v0}, Landroid/telecom/InCallService;->-get0(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const-string/jumbo v0, "Telecom-InCallService"

    const-string/jumbo v1, "InCallServiceBinder - updateCall: call is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
