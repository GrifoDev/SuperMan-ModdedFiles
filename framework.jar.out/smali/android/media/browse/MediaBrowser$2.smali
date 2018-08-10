.class Landroid/media/browse/MediaBrowser$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v2

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/service/media/IMediaBrowserService;->disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    move-result v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-wrap3(Landroid/media/browse/MediaBrowser;)V

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2, v1}, Landroid/media/browse/MediaBrowser;->-set6(Landroid/media/browse/MediaBrowser;I)I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException during connect for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$2;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v4}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
