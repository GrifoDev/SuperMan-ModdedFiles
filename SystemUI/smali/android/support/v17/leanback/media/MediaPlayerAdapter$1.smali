.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getUpdatePeriod()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
