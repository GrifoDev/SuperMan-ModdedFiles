.class public Lcom/gsma/services/rcs/upload/FileUpload;
.super Ljava/lang/Object;
.source "FileUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/upload/FileUpload$State;
    }
.end annotation


# instance fields
.field private uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;


# direct methods
.method constructor <init>(Lcom/gsma/services/rcs/upload/IFileUpload;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    return-void
.end method


# virtual methods
.method public abortUpload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUpload;->abortUpload()V
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

.method public getFile()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUpload;->getFile()Landroid/net/Uri;
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

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUpload;->getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
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

.method public getUploadId()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUpload;->getUploadId()Ljava/lang/String;
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

.method public getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/upload/FileUpload;->uploadInf:Lcom/gsma/services/rcs/upload/IFileUpload;

    invoke-interface {v1}, Lcom/gsma/services/rcs/upload/IFileUpload;->getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
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
