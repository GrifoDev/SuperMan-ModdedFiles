.class public final Lcom/gsma/services/rcs/sharing/video/VideoSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "VideoSharingService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;

    invoke-direct {v1, p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
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

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "TAPI is not available or not activated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to vsh service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteVideoSharing(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharing(Ljava/lang/String;)V
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

.method public deleteVideoSharings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharings()V
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

.method public deleteVideoSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->deleteVideoSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
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
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->apiConnection:Landroid/content/ServiceConnection;

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

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getConfiguration()Lcom/gsma/services/rcs/sharing/video/VideoSharingServiceConfiguration;
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

.method public getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getVideoSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
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

.method public getVideoSharings()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v6}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->getVideoSharings()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v3

    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/video/IVideoSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    new-instance v6, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    new-instance v6, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v6}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v6

    :cond_1
    return-object v2

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;

    invoke-direct {v1, p0, p1}, Lcom/gsma/services/rcs/sharing/video/VideoSharingService$3;-><init>(Lcom/gsma/services/rcs/sharing/video/VideoSharingService;Lcom/gsma/services/rcs/sharing/video/VideoSharingListener;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/video/IVideoSharingListener;)V
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

    check-cast p1, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    return-void
.end method

.method public shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/VideoPlayer;)Lcom/gsma/services/rcs/sharing/video/VideoSharing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharingService;->api:Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/sharing/video/IVideoSharingService;->shareVideo(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;)Lcom/gsma/services/rcs/sharing/video/IVideoSharing;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/sharing/video/VideoSharing;-><init>(Lcom/gsma/services/rcs/sharing/video/IVideoSharing;)V
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
