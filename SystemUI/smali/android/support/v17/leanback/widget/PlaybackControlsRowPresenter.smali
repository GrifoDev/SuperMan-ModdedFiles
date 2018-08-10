.class public Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.source "PlaybackControlsRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$2;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;
    }
.end annotation


# static fields
.field static sShadowZ:F


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

.field private final mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field private final mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

.field mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

.field private mProgressColor:I

.field private mProgressColorSet:Z

.field private mSecondaryActionsHidden:Z

.field private mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;-><init>()V

    iput v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    iput v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColor:I

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->setSelectEffectEnabled(Z)V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_playback_controls:I

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_control_bar:I

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V

    return-void
.end method

.method private getDefaultBackgroundColor(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->defaultBrandColor:I

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

    sget v2, Landroid/support/v17/leanback/R$color;->lb_default_brand_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1
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

.method private initRow(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
    .locals 4

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iput v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginStart:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    iput v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginEnd:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iput-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColorSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mProgressColor:I

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setProgressColor(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColorSet:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setBackgroundColor(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;I)V

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryActionsHidden:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;

    new-instance v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$3;

    invoke-direct {v2, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$3;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowView;->setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/PlaybackControlsRowView$OnUnhandledKeyListener;)V

    return-void

    :cond_1
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->getDefaultProgressColor(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v1

    goto :goto_1
.end method

.method private updateCardLayout(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;I)V
    .locals 6

    const/4 v4, -0x2

    const/4 v5, 0x0

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCardRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCardRightPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-ne p2, v4, :cond_0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->setOutline(Landroid/view/View;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v4, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V

    :goto_0
    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginStart:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsDockMarginEnd:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColorSet:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mBackgroundColor:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->setOutline(Landroid/view/View;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v4, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v3, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V

    goto :goto_0

    :cond_1
    iget-object v3, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mCard:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->getDefaultBackgroundColor(Landroid/content/Context;)I

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_playback_controls_row:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-direct {v1, p0, v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->initRow(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    return-object v1
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryActionsHidden:Z

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->enableSecondaryActions(Z)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSpacer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->updateCardLayout(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;I)V

    :goto_1
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    iput-object v1, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v4, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v1, v6}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    iput-object v1, v2, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v4, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getTotalTime()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getCurrentTime()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getBufferedProgress()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    return-void

    :cond_1
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    :cond_2
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSpacer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->updateCardLayout(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;I)V

    goto/16 :goto_1
.end method

.method public onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V

    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    if-eqz p2, :cond_0

    check-cast p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->dispatchItemSelection()V

    :cond_0
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 5

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mDescriptionPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mSecondaryControlsPresenter:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public showBottomSpace(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;Z)V
    .locals 2

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mBottomSpacer:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->mPlaybackControlsPresenter:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->resetFocus(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    :cond_0
    return-void
.end method
