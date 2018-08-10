.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;,
        Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;
    }
.end annotation


# instance fields
.field mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field final mControlsDock:Landroid/view/ViewGroup;

.field mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field final mCurrentTime:Landroid/widget/TextView;

.field mCurrentTimeInMs:J

.field final mDescriptionDock:Landroid/view/ViewGroup;

.field final mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mImageView:Landroid/widget/ImageView;

.field mInSeek:Z

.field final mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field mPositions:[J

.field mPositionsLength:I

.field final mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

.field mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field final mSecondaryControlsDock:Landroid/view/ViewGroup;

.field mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field mSecondaryProgressInMs:J

.field mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

.field mSelectedItem:Ljava/lang/Object;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mTempBuilder:Ljava/lang/StringBuilder;

.field mThumbHeroIndex:I

.field mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

.field final mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

.field final mTotalTime:Landroid/widget/TextView;

.field mTotalTimeInMs:J

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    iput-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    iput-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    sget v0, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v17/leanback/R$id;->description_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->current_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->total_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->playback_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;

    invoke-direct {v2, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SeekBar;->setAccessibilitySeekListener(Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/SeekBar;->setMax(I)V

    sget v0, Landroid/support/v17/leanback/R$id;->controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    sget v0, Landroid/support/v17/leanback/R$id;->secondary_controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    if-nez p3, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    sget v0, Landroid/support/v17/leanback/R$id;->thumbs_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ThumbsBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method dispatchItemSelection()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    invoke-interface {v0, v2, v2, p0, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v3

    invoke-interface {v0, v1, v2, p0, v3}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->getSecondaryPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    return-object v2

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method onBackward()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method onForward()Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    return v1
.end method

.method protected onSetCurrentPositionLabel(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSetDurationLabel(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setBufferedPosition(J)V
    .locals 9

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryProgressInMs:J

    long-to-double v4, p1

    iget-wide v6, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v6, v6

    div-double v2, v4, v6

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v0, v2, v4

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    double-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/SeekBar;->setSecondaryProgress(I)V

    return-void
.end method

.method setCurrentPosition(J)V
    .locals 9

    iget-wide v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    cmp-long v1, p1, v4

    if-eqz v1, :cond_0

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onSetCurrentPositionLabel(J)V

    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    iget-wide v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    iget-wide v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    long-to-double v4, v4

    iget-wide v6, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v6, v6

    div-double v2, v4, v6

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v2

    double-to-int v0, v4

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    return-void
.end method

.method setTotalTime(J)V
    .locals 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onSetDurationLabel(J)V

    :cond_0
    return-void
.end method

.method startSeek()Z
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-eqz v2, :cond_0

    return v7

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->isSeekEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    :cond_1
    return v6

    :cond_2
    iput-boolean v7, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekStarted()V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getSeekPositions()[J

    move-result-object v1

    :cond_3
    iput-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v1, v6}, Landroid/support/v17/leanback/widget/ThumbsBar;->setVisibility(I)V

    return v7

    :cond_4
    rsub-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_0

    :cond_5
    iput v6, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_0
.end method

.method stopSeek(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekFinished(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->reset()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ThumbsBar;->clearThumbBitmaps()V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iput v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->setVisibility(I)V

    return-void
.end method

.method updateProgressInSeek(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const/4 v15, 0x0

    invoke-static {v13, v15, v14, v8, v9}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2

    if-eqz p1, :cond_5

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v13, v13, -0x1

    if-ge v2, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v14, v2, 0x1

    aget-wide v6, v13, v14

    add-int/lit8 v12, v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateThumbsInSeek(IZ)V

    :cond_0
    :goto_1
    long-to-double v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    const-wide v14, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v14, v10

    double-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/support/v17/leanback/widget/SeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v13, v6, v7}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekPositionChanged(J)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    move v12, v2

    goto :goto_0

    :cond_2
    rsub-int/lit8 v3, v2, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v13, v13, -0x1

    if-gt v3, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    aget-wide v6, v13, v3

    move v12, v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    if-lez v3, :cond_4

    add-int/lit8 v12, v3, -0x1

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    :cond_5
    if-ltz v2, :cond_7

    if-lez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v14, v2, -0x1

    aget-wide v6, v13, v14

    add-int/lit8 v12, v2, -0x1

    goto :goto_0

    :cond_6
    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    goto :goto_0

    :cond_7
    rsub-int/lit8 v3, v2, -0x1

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v14, v3, -0x1

    aget-wide v6, v13, v14

    add-int/lit8 v12, v3, -0x1

    goto :goto_0

    :cond_8
    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-virtual {v14}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->getDefaultSeekIncrement()F

    move-result v14

    mul-float/2addr v13, v14

    float-to-long v4, v13

    if-eqz p1, :cond_a

    :goto_2
    add-long v6, v8, v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long v13, v6, v14

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    goto/16 :goto_1

    :cond_a
    neg-long v4, v4

    goto :goto_2

    :cond_b
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-gez v13, :cond_0

    const-wide/16 v6, 0x0

    goto/16 :goto_1
.end method

.method updateThumbsInSeek(IZ)V
    .locals 14

    iget v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-ne v10, p1, :cond_0

    return-void

    :cond_0
    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v10}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v9

    if-ltz v9, :cond_1

    and-int/lit8 v10, v9, 0x1

    if-nez v10, :cond_2

    :cond_1
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    throw v10

    :cond_2
    div-int/lit8 v2, v9, 0x2

    div-int/lit8 v10, v9, 0x2

    sub-int v10, p1, v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v9, 0x2

    add-int/2addr v10, p1

    iget v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-gez v10, :cond_4

    move v5, v8

    move v4, v1

    :cond_3
    iput p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-eqz p2, :cond_7

    move v3, v5

    :goto_0
    if-gt v3, v4, :cond_8

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {v10, v3, v11}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-le p1, v10, :cond_5

    const/16 p2, 0x1

    :goto_1
    iget v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    div-int/lit8 v11, v9, 0x2

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    div-int/lit8 v11, v9, 0x2

    add-int/2addr v10, v11

    iget v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eqz p2, :cond_6

    add-int/lit8 v10, v6, 0x1

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v1

    move v3, v8

    :goto_2
    add-int/lit8 v10, v5, -0x1

    if-gt v3, v10, :cond_3

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    sub-int v11, v3, p1

    add-int/2addr v11, v2

    iget-object v12, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    iget v13, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v13, v3, v13

    add-int/2addr v13, v2

    invoke-virtual {v12, v13}, Landroid/support/v17/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/16 p2, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v10, v7, -0x1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v8

    move v3, v1

    :goto_3
    add-int/lit8 v10, v4, 0x1

    if-lt v3, v10, :cond_3

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    sub-int v11, v3, p1

    add-int/2addr v11, v2

    iget-object v12, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    iget v13, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v13, v3, v13

    add-int/2addr v13, v2

    invoke-virtual {v12, v13}, Landroid/support/v17/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_4
    if-lt v3, v5, :cond_8

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {v10, v3, v11}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v10, v2, v10

    add-int/2addr v10, v8

    if-ge v0, v10, :cond_9

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    add-int v10, v2, v1

    iget v11, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int/2addr v10, v11

    add-int/lit8 v0, v10, 0x1

    :goto_6
    if-ge v0, v9, :cond_a

    iget-object v10, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    return-void
.end method
