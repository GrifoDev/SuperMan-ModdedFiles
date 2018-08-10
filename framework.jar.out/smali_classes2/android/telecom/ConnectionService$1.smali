.class Landroid/telecom/ConnectionService$1;
.super Lcom/android/internal/telecom/IConnectionService$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.ab"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.aCSA"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.an"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.anV"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.c"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "CS.crCo"

    invoke-static {p6, v3}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz p4, :cond_0

    move v3, v1

    :goto_0
    iput v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz p5, :cond_1

    :goto_1
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.crCoC"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.crCoF"

    invoke-static {p5, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.d"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.h"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.mC"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.cASC"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.oEC"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.oPDC"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.pDT"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.pEC"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.r"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.rWM"

    invoke-static {p3, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.rCSA"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "CS.rTRUR"

    invoke-static {p4, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    :goto_0
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Landroid/telecom/Connection$RttTextStream;

    invoke-direct {v1, p3, p2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.sCE"

    invoke-static {p4, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.s"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.sFC"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "CS.+RTT"

    invoke-static {p4, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    new-instance v1, Landroid/telecom/Connection$RttTextStream;

    invoke-direct {v1, p3, p2}, Landroid/telecom/Connection$RttTextStream;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.sDT"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "CS.-RTT"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.sC"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method

.method public unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V
    .locals 3

    const-string/jumbo v1, "CS.u"

    invoke-static {p2, v1}, Landroid/telecom/Log;->startSession(Landroid/telecom/Logging/Session$Info;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ConnectionService$1;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v1}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v1
.end method
