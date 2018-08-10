.class Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;
.super Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsCallSession;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsCallSessionListenerImplBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    :try_start_0
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ImsCallSession"

    const-string/jumbo v4, "callSessionMergeComplete: exception for getCallId!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v3}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    goto :goto_1
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    const-string/jumbo v0, "ImsCallSession"

    const-string/jumbo v1, "callSessionMergeStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/ImsCallSession;Z)V

    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionSuppServiceReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V

    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    :cond_0
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->-get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
