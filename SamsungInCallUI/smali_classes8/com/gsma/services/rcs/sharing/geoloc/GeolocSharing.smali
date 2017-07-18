.class public Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
.super Ljava/lang/Object;
.source "GeolocSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;,
        Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    }
.end annotation


# instance fields
.field private mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

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
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->abortSharing()V
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

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->acceptInvitation()V
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v3}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getDirection()I

    move-result v0

    invoke-static {}, Lcom/gsma/services/rcs/RcsService$Direction;->values()[Lcom/gsma/services/rcs/RcsService$Direction;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v4, v3

    invoke-virtual {v2}, Lcom/gsma/services/rcs/RcsService$Direction;->ordinal()I

    move-result v6

    if-ne v6, v0, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/gsma/services/rcs/RcsService$Direction;->IRRELEVANT:Lcom/gsma/services/rcs/RcsService$Direction;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getGeoloc()Lcom/gsma/services/rcs/Geoloc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getGeoloc()Lcom/gsma/services/rcs/Geoloc;
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

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getReasonCode()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
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
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
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

.method public getSharingId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getSharingId()Ljava/lang/String;
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

.method public getState()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getState()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
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
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->getTimeStamp()J
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

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;->mSharingInf:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;->rejectInvitation()V
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
