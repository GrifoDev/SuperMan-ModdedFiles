.class public final Lcom/gsma/services/rcs/contact/ContactService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ContactService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private api:Lcom/gsma/services/rcs/contact/IContactService;

.field private apiConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/contact/ContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    new-instance v0, Lcom/gsma/services/rcs/contact/ContactService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/contact/ContactService$1;-><init>(Lcom/gsma/services/rcs/contact/ContactService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/gsma/services/rcs/contact/ContactService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "blockContact"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/contact/IContactService;->blockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
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

.method public connect()V
    .locals 6

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "TAPI is not available or not activated!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gsma/services/rcs/contact/IContactService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.imsservice"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->apiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v1, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getRcsContact"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContact(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/contact/RcsContact;
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

.method public getRcsContacts()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v5, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "getRcsContacts"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v5, :cond_2

    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v5}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContacts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v5, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v5}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v5, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/contact/RcsContact;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result.size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :cond_2
    new-instance v5, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v5}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v5
.end method

.method public getRcsContactsOnline()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRcsContactsOnline"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v2}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContactsOnline()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

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

.method public getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/gsma/services/rcs/contact/RcsContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v2, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRcsContactsSupporting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v2, p1}, Lcom/gsma/services/rcs/contact/IContactService;->getRcsContactsSupporting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

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

    check-cast p1, Lcom/gsma/services/rcs/contact/IContactService;

    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    return-void
.end method

.method public unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    sget-object v1, Lcom/gsma/services/rcs/contact/ContactService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "unblockContact"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactService;->api:Lcom/gsma/services/rcs/contact/IContactService;

    invoke-interface {v1, p1}, Lcom/gsma/services/rcs/contact/IContactService;->unblockContact(Lcom/gsma/services/rcs/contact/ContactId;)V
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
