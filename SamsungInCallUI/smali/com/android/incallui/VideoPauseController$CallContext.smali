.class Lcom/android/incallui/VideoPauseController$CallContext;
.super Ljava/lang/Object;


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

    iput-object p1, p0, Lcom/android/incallui/VideoPauseController$CallContext;->this$0:Lcom/android/incallui/VideoPauseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-static {p2}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/incallui/VideoPauseController$CallContext;->update(Lcom/android/incallui/Call;)V

    return-void
.end method


# virtual methods
.method public canUpdate(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v3}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mIsVideoCallReady:Z

    if-eq v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public canVideoPause()Z
    .locals 2

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

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    return v0
.end method

.method public getVideoState()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    return v0
.end method

.method public isVideoCallReady()Z
    .locals 1

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

    const-string v0, "CallContext {CallId=%s, CurrentState=%s, SavedState=%s, VideoState=%d, CanVideoPause=%s, isVideoCallReady=%s} "

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

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

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    iput-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mVideoState:I

    iget-object v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoPauseController$CallContext;->mIsVideoCallReady:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
