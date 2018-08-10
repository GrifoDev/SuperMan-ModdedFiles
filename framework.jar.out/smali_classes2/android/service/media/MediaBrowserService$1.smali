.class Landroid/service/media/MediaBrowserService$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$token:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$1;->val$token:Landroid/media/session/MediaSession$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$1;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->-get0(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    :try_start_0
    iget-object v3, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v4, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v4}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$1;->val$token:Landroid/media/session/MediaSession$Token;

    iget-object v6, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v6}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is no longer valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method
