.class public Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;
.super Ljava/lang/Object;
.source "MultimediaSessionServiceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

.field private maxMsgLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->maxMsgLength:I

    return-void
.end method

.method public constructor <init>(Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    iput-object p1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInactivityTimeout()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getInactivityTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getInactivityTimeout()J
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

.method public getMessageMaxLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMessageMaxLength()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->getMessageMaxLength()I
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

.method public isServiceActivated(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceActivated(),serviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->mMultimediaSessionServiceConfiguration:Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;->isServiceActivated(Ljava/lang/String;)Z
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/extension/MultimediaSessionServiceConfiguration;->maxMsgLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
