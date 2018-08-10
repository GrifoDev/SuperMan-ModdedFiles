.class Landroid/support/v17/leanback/media/MediaPlayerGlue$5;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$5;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$5;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedProgress(I)V

    return-void
.end method
