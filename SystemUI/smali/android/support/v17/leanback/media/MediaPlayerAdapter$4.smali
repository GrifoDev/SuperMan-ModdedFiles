.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 6

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getDuration()J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferedProgress:J

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$4;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void
.end method
