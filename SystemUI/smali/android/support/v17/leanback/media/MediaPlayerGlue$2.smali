.class Landroid/support/v17/leanback/media/MediaPlayerGlue$2;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mFirstRepeat:Z

.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$2;->mFirstRepeat:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$2;->mFirstRepeat:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$2;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->play()V

    return-void
.end method
