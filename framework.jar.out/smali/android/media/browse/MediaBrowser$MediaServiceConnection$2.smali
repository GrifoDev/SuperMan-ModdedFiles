.class Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser$MediaServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field final synthetic val$name:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->-wrap0(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0, v2}, Landroid/media/browse/MediaBrowser;->-set3(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;

    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0, v2}, Landroid/media/browse/MediaBrowser;->-set4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/media/browse/MediaBrowser;->-set6(Landroid/media/browse/MediaBrowser;I)I

    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;->this$1:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iget-object v0, v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;->onConnectionSuspended()V

    return-void
.end method
