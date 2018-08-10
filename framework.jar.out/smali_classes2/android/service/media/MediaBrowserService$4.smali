.class Landroid/service/media/MediaBrowserService$4;
.super Landroid/service/media/MediaBrowserService$Result;
.source "MediaBrowserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService;->performLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$ConnectionRecord;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/media/MediaBrowserService$Result",
        "<",
        "Landroid/media/browse/MediaBrowser$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/MediaBrowserService;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService;Ljava/lang/Object;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$4;->this$0:Landroid/service/media/MediaBrowserService;

    iput-object p4, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p1, p3}, Landroid/service/media/MediaBrowserService$Result;-><init>(Landroid/service/media/MediaBrowserService;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;I)V
    .locals 4

    const/4 v2, 0x0

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$4;->val$receiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService$4;->onResultSent(Landroid/media/browse/MediaBrowser$MediaItem;I)V

    return-void
.end method
