.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$4;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$query:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$4;->val$callback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$4;->val$query:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21$4;->val$extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
