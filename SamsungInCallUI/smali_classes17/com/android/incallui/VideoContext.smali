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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mState:I

    .line 31
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoContext;->update(Lcom/android/incallui/Call;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getSecVideoState()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/incallui/VideoContext;->mState:I

    return v0
.end method

.method public getVideoResolution()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    return v0
.end method

.method public hasVideoSession()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    return v0
.end method

.method public isCallStateChanged(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 97
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return v2

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    .line 38
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mState:I

    .line 39
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    .line 40
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    .line 41
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    .line 42
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v4

    if-ne v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    .line 43
    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 44
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoContext;->mDomain:I

    .line 45
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 46
    .local v0, "isSame":Z
    :goto_1
    if-nez v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    .end local v0    # "isSame":Z
    :cond_1
    move v0, v2

    .line 45
    goto :goto_1

    .restart local v0    # "isSame":Z
    :cond_2
    move v1, v2

    .line 46
    goto :goto_2
.end method

.method public isConferecedVideoRx()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    return v0
.end method

.method public isPSDomain()Z
    .locals 2

    .prologue
    .line 92
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

    .prologue
    .line 110
    iget v0, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v0

    return v0
.end method

.method public isVideoSessionChanged(Lcom/android/incallui/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 102
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

    .prologue
    .line 70
    const-string v0, "VideoContext {CallId=%s, State=%s, VideoState=%s, PS=%s, Video=%s, ConferencedVideoRx=%s, SecVideoState=%s, VideoCall=%s} "

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    .line 71
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

    .line 72
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

    .line 70
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/VideoContext;->mCall:Lcom/android/incallui/Call;

    .line 51
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mState:I

    .line 52
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mVideoState:I

    .line 53
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoResolution()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mVideoResolution:I

    .line 54
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mSecVideoState:I

    .line 55
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoContext;->mIsConferecedVideoRx:Z

    .line 56
    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/VideoContext;->mVideoSession:Z

    .line 57
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoContext;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 58
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDomain()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoContext;->mDomain:I

    .line 59
    return-void
.end method
