.class Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;
.source "PlaybackControlsRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public onCurrentPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public onDurationChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method
