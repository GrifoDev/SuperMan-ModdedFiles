.class Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;
.super Landroid/support/v17/leanback/media/PlayerAdapter$Callback;
.source "PlaybackBaseControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateBufferedProgress()V

    return-void
.end method

.method public onBufferingStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput-boolean p2, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mBuffering:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onBufferingStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onUpdateProgress()V

    return-void
.end method

.method public onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p2, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorCode:I

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput-object p3, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mErrorMessage:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onPlayCompleted(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayCompleted()V

    return-void
.end method

.method public onPlayStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPlayStateChanged()V

    return-void
.end method

.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlayerAdapter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->onPreparedStateChanged()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/support/v17/leanback/media/PlayerAdapter;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p2, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoWidth:I

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iput p3, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mVideoHeight:I

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;

    iget-object v0, v0, Landroid/support/v17/leanback/media/PlaybackBaseControlGlue;->mPlayerCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/media/PlaybackGlueHost$PlayerCallback;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method
