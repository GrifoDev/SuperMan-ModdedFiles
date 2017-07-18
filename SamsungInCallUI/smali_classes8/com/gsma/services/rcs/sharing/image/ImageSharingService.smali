.class public final Lcom/gsma/services/rcs/sharing/image/ImageSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ImageSharingService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

.field private mIshListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;",
            "Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : addEventListener()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;

    invoke-direct {v1, p0, p1}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public connect()V
    .locals 6

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "TAPI is not available or not activated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to ish service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteImageSharing(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : deleteImageSharing(String sharingId)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharing(Ljava/lang/String;)V
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

.method public deleteImageSharings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : deleteImageSharings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteAllImageSharings()V
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

.method public deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : deleteImageSharings(ContactId contact)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
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

.method public disconnect()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getConfiguration()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
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

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : getImageSharing(String sharingId)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method public getImageSharings()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v5, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v5, :cond_0

    :try_start_0
    sget-object v5, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "start : getImageSharings()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v5}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getImageSharings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v5, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v5}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v5

    :cond_1
    return-object v3
.end method

.method public getServiceVersion()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getServiceVersion()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getServiceVersion()I
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

.method public isServiceRegistered()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : isServiceRegistered()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->isServiceRegistered()Z
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

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : removeEventListener()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    check-cast p1, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    return-void
.end method

.method public shareImage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start : shareImage contactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->shareImage(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method
