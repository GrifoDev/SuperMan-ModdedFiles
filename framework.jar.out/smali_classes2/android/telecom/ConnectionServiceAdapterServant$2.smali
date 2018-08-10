.class Landroid/telecom/ConnectionServiceAdapterServant$2;
.super Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.source "ConnectionServiceAdapterServant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionServiceAdapterServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionServiceAdapterServant;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionServiceAdapterServant;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setAudioRoute(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/Logging/Session$Info;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0x10

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v1}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/ConnectionServiceAdapterServant$2;->this$0:Landroid/telecom/ConnectionServiceAdapterServant;

    invoke-static {v0}, Landroid/telecom/ConnectionServiceAdapterServant;->-get1(Landroid/telecom/ConnectionServiceAdapterServant;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
