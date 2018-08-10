.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackHandler"
.end annotation


# instance fields
.field private final mTempCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/media/MediaRouter$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    return-void
.end method

.method private invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    .locals 5

    iget-object v3, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v0, p1, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    const v4, 0xff00

    and-int/2addr v4, p2

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object v2, p3

    check-cast v2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouter$CallbackRecord;->filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v3, v2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v3, v2, p4}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_0

    :sswitch_1
    move-object v1, p3

    check-cast v1, Landroid/support/v7/media/MediaRouter$ProviderInfo;

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/media/MediaRouter$Callback;->onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x201
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private syncWithSystemProvider(ILjava/lang/Object;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteAdded(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteRemoved(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteChanged(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v0, v0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mSystemProvider:Landroid/support/v7/media/SystemMediaRouteProvider;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/SystemMediaRouteProvider;->onSyncRouteSelected(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v5, p1, Landroid/os/Message;->what:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v6, 0x103

    if-ne v5, v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v7

    move-object v6, v3

    check-cast v6, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->-wrap1(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;Z)V

    :cond_0
    invoke-direct {p0, v5, v3}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->syncWithSystemProvider(ILjava/lang/Object;)V

    :try_start_0
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter;

    if-nez v4, :cond_1

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->this$1:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget-object v6, v6, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->mRouters:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    throw v6

    :cond_1
    :try_start_1
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/support/v7/media/MediaRouter;->mCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/media/MediaRouter$CallbackRecord;

    invoke-direct {p0, v6, v5, v3, v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->invokeCallback(Landroid/support/v7/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->mTempCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
