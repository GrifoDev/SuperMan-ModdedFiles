.class public final Lcom/gsma/services/rcs/capability/CapabilityService;
.super Lcom/gsma/services/rcs/RcsService;
.source "CapabilityService.java"


# static fields
.field public static final EXTENSION_MIME_TYPE:Ljava/lang/String; = "com.gsma.services.rcs"

.field public static final INTENT_EXTENSIONS:Ljava/lang/String; = "com.gsma.services.rcs.capability.EXTENSION"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/capability/ICapabilityService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/capability/CapabilityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    new-instance v0, Lcom/gsma/services/rcs/capability/CapabilityService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/capability/CapabilityService$1;-><init>(Lcom/gsma/services/rcs/capability/CapabilityService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/capability/CapabilityService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : addCapabilitiesListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
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

.method public addCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "start : addCapabilitiesListener(Set<String> contacts)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v3, v0, p2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    :cond_1
    return-void
.end method

.method public connect()V
    .locals 6

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "TAPI is not available or not activated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sget-object v2, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getContactCapabilities()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
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

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : getMyCapabilities"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
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

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "start : removeCapabilitiesListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
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

.method public removeCapabilitiesListener(Ljava/util/Set;Lcom/gsma/services/rcs/capability/CapabilitiesListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;",
            "Lcom/gsma/services/rcs/capability/CapabilitiesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "start : removeCapabilitiesListener(Set<String> contacts)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v3, v0, p2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

    :cond_1
    return-void
.end method

.method public requestContactCapabilities(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : requestContactCapabilities(Set<String> contacts)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v2, :cond_2

    :try_start_0
    sget-object v2, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : requestAllContactsCapabilities()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestAllContactsCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2

    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    if-eqz v2, :cond_4

    :try_start_1
    sget-object v2, Lcom/gsma/services/rcs/capability/CapabilityService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "start : requestContactCapabilities(String contact)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-interface {v3, v2}, Lcom/gsma/services/rcs/capability/ICapabilityService;->requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v2}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v2
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    check-cast p1, Lcom/gsma/services/rcs/capability/ICapabilityService;

    iput-object p1, p0, Lcom/gsma/services/rcs/capability/CapabilityService;->api:Lcom/gsma/services/rcs/capability/ICapabilityService;

    return-void
.end method
