.class final Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/media/MediaRouteProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouteProviderService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 11

    iget-object v2, p0, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouteProviderService;

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :pswitch_0
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result v2

    return v2

    :pswitch_1
    invoke-virtual {v1, p2, p3}, Landroid/support/v7/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result v2

    return v2

    :pswitch_2
    const-string/jumbo v2, "routeId"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "routeGroupId"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    :pswitch_3
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result v2

    return v2

    :pswitch_4
    invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result v2

    return v2

    :pswitch_5
    if-nez p6, :cond_1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1, p2, p3, p4, v8}, Landroid/support/v7/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z

    move-result v2

    return v2

    :cond_1
    const-string/jumbo v2, "unselectReason"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_0

    :pswitch_6
    const-string/jumbo v2, "volume"

    const/4 v3, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {v1, p2, p3, p4, v10}, Landroid/support/v7/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result v2

    return v2

    :pswitch_7
    const-string/jumbo v2, "volume"

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, p2, p3, p4, v7}, Landroid/support/v7/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result v2

    return v2

    :pswitch_8
    move-object/from16 v0, p5

    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_0

    check-cast p5, Landroid/content/Intent;

    move-object/from16 v0, p5

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/support/v7/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v2

    return v2

    :pswitch_9
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    :cond_2
    check-cast p5, Landroid/os/Bundle;

    invoke-static/range {p5 .. p5}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaRouteDiscoveryRequest;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/support/v7/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v1, p2, p3, v9}, Landroid/support/v7/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroid/support/v7/media/MediaRouteDiscoveryRequest;)Z

    move-result v2

    return v2

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/media/MediaRouteProviderService$ReceiveHandler;->processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaRouteProviderSrv"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/support/v7/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": Message failed, what="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", requestId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", arg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", obj="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v2, v3}, Landroid/support/v7/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v0, Landroid/support/v7/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MediaRouteProviderSrv"

    const-string/jumbo v7, "Ignoring message without valid reply messenger."

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
