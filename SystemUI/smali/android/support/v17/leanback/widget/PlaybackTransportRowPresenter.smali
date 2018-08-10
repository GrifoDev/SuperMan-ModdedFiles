.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.source "PlaybackTransportRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$1;,
        Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;,
        Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;,
        Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field mDefaultSeekIncrement:F

.field mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field private final mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field private final mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

.field mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

.field mProgressColor:I

.field mProgressColorSet:Z

.field mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;-><init>()V

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDefaultSeekIncrement:F

    iput v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mProgressColor:I

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->setSelectEffectEnabled(Z)V

    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_control_bar:I

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setDefaultFocusToMiddle(Z)V

    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_control_bar:I

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setDefaultFocusToMiddle(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    return-void
.end method

.method static formatTime(JLjava/lang/StringBuilder;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    const-string/jumbo v6, "--"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-wide/16 v6, 0x3e8

    div-long v4, p0, v6

    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    const-wide/16 v6, 0x3c

    div-long v0, v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v0

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0xa

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    const/16 v6, 0x30

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0xa

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const/16 v6, 0x30

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getDefaultProgressColor(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->playbackProgressPrimaryColor:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_playback_progress_color_no_theme:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
.end method

.method private initRow(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mProgressColorSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mProgressColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setProgressColor(I)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$3;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/PlaybackTransportRowView$OnUnhandledKeyListener;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->getDefaultProgressColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_playback_transport_controls_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-direct {v1, p0, v0, v2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->initRow(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    return-object v1
.end method

.method public getDefaultSeekIncrement()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDefaultSeekIncrement:F

    return v0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iput-object v1, v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v4, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {v1, v5}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iput-object v1, v2, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v4, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setTotalTime(J)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setCurrentPosition(J)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getBufferedPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->setBufferedPosition(J)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    return-void

    :cond_1
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onProgressBarClicked(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    invoke-interface {v0, p1, v1, p1, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/OnActionClickedListener;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    :cond_2
    return-void
.end method

.method public onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SeekBar;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    if-eqz p2, :cond_0

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->dispatchItemSelection()V

    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 5

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setDescriptionPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    return-void
.end method
