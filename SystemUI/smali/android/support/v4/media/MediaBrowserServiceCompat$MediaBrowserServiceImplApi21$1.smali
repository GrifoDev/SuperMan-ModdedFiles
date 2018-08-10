.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final synthetic val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# virtual methods
.method public run()V
    .locals 5

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v3, "extra_session_binder"

    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v1, v3, v4}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$token:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
