.class Lcom/android/incallui/VideoPauseController$CallContext;
.super Ljava/lang/Object;
.source "VideoPauseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoPauseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallContext"
.end annotation


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mIsVideoCallReady:Z

.field private mState:I

.field private mVideoState:I

.field final synthetic this$0:Lcom/android/incallui/VideoPauseController;


# direct methods
.method public constructor <init>(Lcom/android/incallui/VideoPauseController;Lcom/android/incallui/Call;)V
    .locals 1
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/incallui/VideoPauseController$CallContext;->this$0:Lcom/android/incallui/VideoPauseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    .line 105
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    .line 107
    return-void
.end method


# virtual methods
.method public canUpdate(Lcom/android/incallui/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "canUpdate":Z
    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 117
    .local v1, "isVideoCallReady":Z
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v4}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mIsVideoCallReady:Z

    if-eq v1, v4, :cond_3

    :cond_0
    move v0, v2

    .line 119
    .end local v1    # "isVideoCallReady":Z
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v3

    .line 116
    goto :goto_0

    .restart local v1    # "isVideoCallReady":Z
    :cond_3
    move v0, v3

    .line 117
    goto :goto_1
.end method

.method public canVideoPause()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mIsVideoCallReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    return v0
.end method

.method public isVideoCallReady()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    const-string v0, "CallContext {CallId=%s, CurrentState=%s, SavedState=%s, VideoState=%d, CanVideoPause=%s, isVideoCallReady=%s} "

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    .line 139
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->canVideoPause()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/incallui/VideoPauseController$CallContext;->isVideoCallReady()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 138
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    .line 124
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    .line 125
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    .line 126
    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mIsVideoCallReady:Z

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
