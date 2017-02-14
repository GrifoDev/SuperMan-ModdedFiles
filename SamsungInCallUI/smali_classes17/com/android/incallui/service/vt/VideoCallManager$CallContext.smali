.class Lcom/android/incallui/service/vt/VideoCallManager$CallContext;
.super Ljava/lang/Object;
.source "VideoCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallContext"
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mDomain:I

.field private mIsSupportCameraRotation:Z

.field private mSessionId:I

.field private mState:I

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private mVideoSession:Z

.field private mVideoState:I

.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/vt/VideoCallManager;Lcom/android/incallui/Call;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mState:I

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->update(Lcom/android/incallui/Call;)V

    return-void
.end method


# virtual methods
.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getDomain()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mDomain:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mSessionId:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mState:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoState:I

    return v0
.end method

.method public hasVideoSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoSession:Z

    return v0
.end method

.method public isSupportCameraRotation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mIsSupportCameraRotation:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoState:I

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public isVideoCallChanged(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVideoSessionChanged(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoSession:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CallContext {CallId=%s, State=%s, CurrentState=%s, VideoState=%d, SessionId=%d, VideoSession=%s}"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mState:I

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mSessionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoSession:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSessionId()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mSessionId:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mDomain:I

    invoke-static {p1}, Lcom/android/incallui/service/vt/VideoCallControl;->canUseScreenTypeSensor(Lcom/android/incallui/Call;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mIsSupportCameraRotation:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoSession:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$CallContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-void
.end method
