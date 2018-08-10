.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$cb:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
