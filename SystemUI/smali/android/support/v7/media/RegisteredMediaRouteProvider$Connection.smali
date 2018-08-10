.class final Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private mNextControllerId:I

.field private mNextRequestId:I

.field private final mPendingCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/media/MediaRouter$ControlRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRegisterRequestId:I

.field private final mReceiveHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;

.field private final mServiceMessenger:Landroid/os/Messenger;

.field private mServiceVersion:I

.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    iput-object p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v0, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;

    invoke-direct {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mReceiveHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mReceiveHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mReceiveMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput p1, v2, Landroid/os/Message;->what:I

    iput p2, v2, Landroid/os/Message;->arg1:I

    iput p3, v2, Landroid/os/Message;->arg2:I

    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const-string/jumbo v3, "MediaRouteProviderProxy"

    const-string/jumbo v4, "Could not send message to service."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v0, v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    new-instance v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$2;

    invoke-direct {v1, p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$2;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createRouteController(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    iget v3, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "routeId"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "routeGroupId"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return v3
.end method

.method public dispose()V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move v3, v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mReceiveHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$ReceiveHandler;->dispose()V

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    iget-object v0, v0, Landroid/support/v7/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;

    new-instance v1, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;

    invoke-direct {v1, p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection$1;-><init>(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider$PrivateHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method failPendingCallbacks()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    invoke-virtual {v2, v3, v3}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onControlRequestSucceeded(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onDescriptorChanged(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public onGenericFailure(I)Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    const-string/jumbo v2, "Registration failed"

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionError(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0, v3, v3}, Landroid/support/v7/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onGenericSuccess(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRegistered(IILandroid/os/Bundle;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne p1, v0, :cond_0

    if-lt p2, v2, :cond_0

    iput v1, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iput p2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-static {p3}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProvider;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider;->onConnectionReady(Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;)V

    return v2

    :cond_0
    return v1
.end method

.method public register()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    const/4 v3, 0x2

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v6

    invoke-virtual {p0}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->binderDied()V

    return v7
.end method

.method public releaseRouteController(I)V
    .locals 6

    const/4 v4, 0x0

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x4

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public selectRoute(I)V
    .locals 6

    const/4 v4, 0x0

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x5

    move-object v0, p0

    move v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public sendControlRequest(ILandroid/content/Intent;Landroid/support/v7/media/MediaRouter$ControlRequestCallback;)Z
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/16 v1, 0x9

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDiscoveryRequest(Landroid/support/v7/media/MediaRouteDiscoveryRequest;)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->asBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_0
    const/16 v1, 0xa

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method public setVolume(II)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "volume"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x7

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public unselectRoute(II)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "unselectReason"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method

.method public updateVolume(II)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "volume"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/16 v1, 0x8

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    return-void
.end method
