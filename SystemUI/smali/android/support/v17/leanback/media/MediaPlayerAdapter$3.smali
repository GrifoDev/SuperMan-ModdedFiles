.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$3;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    return-void
.end method
