.class Landroid/media/browse/MediaBrowser$5;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$root:Ljava/lang/String;

.field final synthetic val$session:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$5;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$5;->val$root:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$5;->val$session:Landroid/media/session/MediaSession$Token;

    iput-object p5, p0, Landroid/media/browse/MediaBrowser$5;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$callback:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const-string/jumbo v10, "onConnect"

    invoke-static {v8, v9, v10}, Landroid/media/browse/MediaBrowser;->-wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const-string/jumbo v8, "MediaBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onConnect from service while mState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v10}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    move-result v10

    invoke-static {v10}, Landroid/media/browse/MediaBrowser;->-wrap2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "... ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$root:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set2(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$session:Landroid/media/session/MediaSession$Token;

    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set1(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;

    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    iget-object v9, p0, Landroid/media/browse/MediaBrowser$5;->val$extra:Landroid/os/Bundle;

    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set0(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;I)I

    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnected()V

    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get9(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/browse/MediaBrowser$Subscription;

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    :try_start_0
    iget-object v8, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v8}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    iget-object v10, v8, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    iget-object v11, p0, Landroid/media/browse/MediaBrowser$5;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v11}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v11

    invoke-interface {v9, v3, v10, v8, v11}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "MediaBrowser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-void
.end method
