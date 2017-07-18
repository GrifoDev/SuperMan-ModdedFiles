.class public Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;
.super Ljava/lang/Object;
.source "FileTransferServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;


# direct methods
.method public constructor <init>(Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    return-void
.end method


# virtual methods
.method public getImageResizeOption()Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v4, "getImageResizeOption() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v3}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getImageResizeOption()I

    move-result v2

    invoke-static {v2}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v3}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v3
.end method

.method public getMaxAudioMessageLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMaxAudioMessageLength()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxAudioMessageLength()J
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

.method public getMaxFileTransfers()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMaxFileTransfers() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxFileTransfers()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getMaxSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMaxSize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getMaxSize()J
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

.method public getWarnSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getWarnSize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->getWarnSize()J
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

.method public isAutoAcceptEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isAutoAcceptEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAutoAcceptInRoamingEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isAutoAcceptInRoamingEnabled() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptInRoamingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isAutoAcceptModeChangeable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isAutoAcceptModeChangeable() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isAutoAcceptModeChangeable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isGroupFileTransferSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isGroupFileTransferSupported() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->isGroupFileTransferSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public setAutoAccept(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoAccept() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAccept(Z)V
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setAutoAcceptInRoaming()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setAutoAcceptInRoaming(Z)V
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public setImageResizeOption(Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "setImageResizeOption() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration;->mFtConfigInf:Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toInt()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration;->setImageResizeOption(I)V
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method
