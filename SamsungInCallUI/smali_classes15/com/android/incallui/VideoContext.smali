.class public Lcom/android/incallui/VideoContext;
.super Ljava/lang/Object;
.source "VideoContext.java"


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mDomain:I

.field private mIsConferecedVideoRx:Z

.field private mSecVideoState:I

.field private mState:I

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;

.field private mVideoResolution:I

.field private mVideoSession:Z

.field private mVideoState:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mState:I

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoContext;->update(Lcom/android/incallui/Call;)V

    return-void
.end method


# virtual methods
.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSecVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoContext;->mState:I

    return v0
.end method

.method public getVideoResolution()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    return v0
.end method

.method public hasVideoSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    return v0
.end method

.method public isCallStateChanged(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/incallui/VideoContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChanged(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mDomain:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public isConferecedVideoRx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    return v0
.end method

.method public isPSDomain()Z
    .locals 2

    iget v0, p0, Lcom/android/incallui/VideoContext;->mDomain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v0

    return v0
.end method

.method public isVideoSessionChanged(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "VideoContext {CallId=%s, State=%s, VideoState=%s, PS=%s, Video=%s, ConferencedVideoRx=%s, SecVideoState=%s, VideoCall=%s} "

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mState:I

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    invoke-static {v3}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/incallui/VideoContext;->isPSDomain()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    invoke-static {v3}, Lcom/android/incallui/SecCall$VideoResolution;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    invoke-static {v3}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

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

    iput-object v0, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mDomain:I

    return-void
.end method
