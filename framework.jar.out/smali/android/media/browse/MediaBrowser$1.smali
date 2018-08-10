.class Landroid/media/browse/MediaBrowser$1;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->connect()V
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

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/media/browse/MediaBrowser;->-set6(Landroid/media/browse/MediaBrowser;I)I

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceBinder should be null. Instead it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v5}, Landroid/media/browse/MediaBrowser;->-get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceCallbacks should be null. Instead it is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v5}, Landroid/media/browse/MediaBrowser;->-get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.browse.MediaBrowserService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    new-instance v4, Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v5, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {v4, v5, v6}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)V

    invoke-static {v3, v4}, Landroid/media/browse/MediaBrowser;->-set5(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get1(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v4}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-wrap3(Landroid/media/browse/MediaBrowser;)V

    iget-object v3, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v3}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionFailed()V

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "MediaBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed binding to service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/browse/MediaBrowser$1;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v5}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
