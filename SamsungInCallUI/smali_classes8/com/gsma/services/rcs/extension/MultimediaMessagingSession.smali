.class public Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;
.super Lcom/gsma/services/rcs/extension/MultimediaSession;
.source "MultimediaMessagingSession.java"


# instance fields
.field private sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/MultimediaSession;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    return-void
.end method


# virtual methods
.method public abortSession()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const-string v1, "MultimediaMessagingSession"

    const-string v2, "abortSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->abortSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const-string v1, "MultimediaMessagingSession"

    const-string v2, "acceptInvitation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->acceptInvitation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flushMessages()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->flushMessages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getServiceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getSessionId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const-string v1, "MultimediaMessagingSession"

    const-string v2, "rejectInvitation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->rejectInvitation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rejectInvitation(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const-string v1, "MultimediaMessagingSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectInvitation reason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendMessage([BLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaMessagingSession;->sessionIntf:Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;

    invoke-interface {v1, p1, p2}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;->sendMessage([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
