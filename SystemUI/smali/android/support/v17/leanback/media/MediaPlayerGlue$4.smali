.class Landroid/support/v17/leanback/media/MediaPlayerGlue$4;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->-set0(Landroid/support/v17/leanback/media/MediaPlayerGlue;Z)Z

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v3}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    goto :goto_0

    :cond_0
    return-void
.end method
