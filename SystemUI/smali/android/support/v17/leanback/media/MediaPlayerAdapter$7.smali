.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$7;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->onSeekComplete()V

    return-void
.end method
