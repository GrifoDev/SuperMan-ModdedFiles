.class final Landroid/support/v7/media/RegisteredMediaRouteProvider;
.super Landroid/support/v7/media/MediaRouteProvider;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;,
        Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;,
        Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;,
        Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;",
            ">;"
        }
    .end annotation
.end field

.field final mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-direct {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    invoke-direct {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    return-void
.end method

.method private attachControllersToConnection()V
    .locals 4

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bind()V
    .locals 5

    iget-boolean v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    iget-boolean v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Bind failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouteDescriptor;

    invoke-virtual {v4}, Landroid/support/v7/media/MediaRouteDescriptor;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, v6}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->attachConnection(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-object v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private detachControllersFromConnection()V
    .locals 3

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;

    invoke-virtual {v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->detachConnection()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->detachControllersFromConnection()V

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->dispose()V

    iput-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    :cond_0
    return-void
.end method

.method private shouldBind()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private unbind()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method private updateBinding()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->bind()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    goto :goto_0
.end method


# virtual methods
.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectionDescriptorChanged(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Descriptor changed, descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    :cond_1
    return-void
.end method

.method onConnectionDied(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    :cond_1
    return-void
.end method

.method onConnectionError(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v0, p1, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    :cond_1
    return-void
.end method

.method onConnectionReady(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->attachControllersToConnection()V

    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->getDiscoveryRequest()Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    :cond_0
    return-void
.end method

.method onControllerReleased(Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Controller;->detachConnection()V

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-void
.end method

.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    return-object v0
.end method

.method public onCreateRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "routeGroupId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->createRouteController(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    return-object v0
.end method

.method public onDiscoveryRequestChanged(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mConnectionReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mBound:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    if-eqz p2, :cond_2

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {v1}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->register()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    sget-boolean v2, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Registration failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "MediaRouteProviderProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": Service returned invalid messenger binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->disconnect()V

    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mActiveConnection:Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->unbind()V

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->bind()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mStarted:Z

    invoke-direct {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->updateBinding()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Service connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
