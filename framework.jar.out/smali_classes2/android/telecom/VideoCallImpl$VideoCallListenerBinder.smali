.class final Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
.super Lcom/android/internal/telecom/IVideoCallback$Stub;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallListenerBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method private constructor <init>(Landroid/telecom/VideoCallImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;)V

    return-void
.end method


# virtual methods
.method public changeCallDataUsage(J)V
    .locals 3

    const-string/jumbo v0, "Telecom-VideoCallImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeCallDataUsage - dataUsage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .locals 2

    const-string/jumbo v0, "Telecom-VideoCallImpl"

    const-string/jumbo v1, "changeCameraCapabilities"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changePeerDimensions(II)V
    .locals 3

    const-string/jumbo v1, "Telecom-VideoCallImpl"

    const-string/jumbo v2, "changePeerDimensions"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public changeVideoQuality(I)V
    .locals 3

    const-string/jumbo v0, "Telecom-VideoCallImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeVideoQuality - videoQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleCallSessionEvent(I)V
    .locals 3

    const-string/jumbo v0, "Telecom-VideoCallImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCallSessionEvent - event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .locals 3

    const-string/jumbo v0, "Telecom-VideoCallImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveSessionModifyRequest - videoProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 4

    const-string/jumbo v1, "Telecom-VideoCallImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiveSessionModifyRequest - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;->this$0:Landroid/telecom/VideoCallImpl;

    invoke-static {v1}, Landroid/telecom/VideoCallImpl;->-get1(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
