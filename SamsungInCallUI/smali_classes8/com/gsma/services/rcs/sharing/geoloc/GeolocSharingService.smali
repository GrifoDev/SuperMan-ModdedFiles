.class public final Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "GeolocSharingService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

.field private mApiConnection:Landroid/content/ServiceConnection;

.field private final mMapForGeolocListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;",
            "Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v3, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "addEventListener()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;

    invoke-direct {v2, p0, v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v3, v2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v3}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v3
.end method

.method public connect()V
    .locals 6

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "TAPI is not available or not activated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to GeolocSharingService service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteGeolocSharing(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deleteGeolocSharings() by sharing id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharingBySharingId(Ljava/lang/String;)V
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

.method public deleteGeolocSharings()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, " deleteGeolocSharings()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteAllGeolocSharings()V
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

.method public deleteGeolocSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "deleteGeolocSharings () by contact id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
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
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApiConnection:Landroid/content/ServiceConnection;

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

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
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

.method public getGeolocSharings()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v5, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v5, :cond_0

    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v5}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->getGeolocSharings()Ljava/util/List;

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

    new-instance v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-static {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V

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

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "removeEventListener()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    :cond_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

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

    :cond_1
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    check-cast p1, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    iput-object p1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    return-void
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
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
