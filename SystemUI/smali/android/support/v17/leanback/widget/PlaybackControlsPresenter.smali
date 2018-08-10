.class Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;
.super Landroid/support/v17/leanback/widget/ControlBarPresenter;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;,
        Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    }
.end annotation


# static fields
.field private static sChildMarginBigger:I

.field private static sChildMarginBiggest:I


# instance fields
.field private mMoreActionsEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return-void
.end method

.method static formatTime(JLjava/lang/StringBuilder;)V
    .locals 12

    const-wide/16 v10, 0xa

    const/16 v9, 0x3a

    const/16 v8, 0x30

    const-wide/16 v6, 0x3c

    div-long v2, p0, v6

    div-long v0, v2, v6

    mul-long v4, v2, v6

    sub-long/2addr p0, v4

    mul-long v4, v0, v6

    sub-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v4, v2, v10

    if-gez v4, :cond_0

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmp-long v4, p0, v10

    if-gez v4, :cond_1

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public enableSecondaryActions(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return-void
.end method

.method public enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    iget v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeMarginStart:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_0

    iget v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeMarginEnd:I

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method getChildMarginBigger(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_bigger:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    return v0
.end method

.method getChildMarginBiggest(Landroid/content/Context;)I
    .locals 2

    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_biggest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4

    move-object v1, p1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->showMoreActions(Z)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getLayoutResourceId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    iput-object v3, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :cond_0
    return-void
.end method

.method public resetFocus(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ControlBar;->requestFocus()Z

    return-void
.end method

.method public setCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setCurrentTime(J)V

    return-void
.end method

.method public setProgressColor(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 4
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    return-void
.end method

.method public setSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setSecondaryProgress(J)V

    return-void
.end method

.method public setTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    return-void
.end method

.method public setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setTotalTime(J)V

    return-void
.end method

.method public showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 1

    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->toggleMoreActions()V

    :cond_0
    return-void
.end method
