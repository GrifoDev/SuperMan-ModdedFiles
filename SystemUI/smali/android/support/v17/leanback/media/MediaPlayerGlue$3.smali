.class Landroid/support/v17/leanback/media/MediaPlayerGlue$3;
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
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->play()V

    return-void
.end method
