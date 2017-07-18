.class public Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.super Ljava/lang/Object;
.source "VideoSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;,
        Lcom/gsma/services/rcs/sharing/video/VideoSharing$Encoding;
    }
.end annotation


# instance fields
.field private sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    return-void
.end method


# virtual methods
.method public abortSharing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->abortSharing()V
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

.method public acceptInvitation(Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->acceptInvitation(Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)V
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
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
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

.method public getDuration()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getDuration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getReasonCode()Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
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
    new-instance v1, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getRemoteContact()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getSharingId()Ljava/lang/String;
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

.method public getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getState()Lcom/gsma/services/rcs/sharing/video/VideoSharing$State;
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

.method public getTimestamp()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getTimeStamp()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getVideoDescriptor()Lcom/gsma/services/rcs/sharing/video/VideoDescriptor;
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

.method public getVideoEncoding()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->getVideoEncoding()Ljava/lang/String;
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

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing;->sharingInf:Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing;->rejectInvitation()V
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
