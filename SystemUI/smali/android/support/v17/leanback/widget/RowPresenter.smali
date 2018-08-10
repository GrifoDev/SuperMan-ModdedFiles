.class public abstract Landroid/support/v17/leanback/widget/RowPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "RowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;,
        Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    }
.end annotation


# instance fields
.field private mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

.field mSelectEffectEnabled:Z

.field mSyncActivatePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    iput v1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setNullItemVisibilityGone(Z)V

    return-void
.end method

.method private updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSyncActivatePolicy:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->syncActivatedStatus(Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setActivated(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/RowContainerView;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowContainerView;->showHeader(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
.end method

.method protected dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getRowObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v2, p1, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public final getHeaderPresenter()Landroid/support/v17/leanback/widget/RowHeaderPresenter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    return-object v0
.end method

.method public final getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1

    instance-of v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->mRowViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    return-object v0

    :cond_0
    check-cast p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    return-object p1
.end method

.method public final getSelectEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return v0
.end method

.method public final getSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    return v0
.end method

.method protected initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isClippingChildren()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    return-void
.end method

.method protected isClippingChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingDefaultSelectEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final needsDefaultSelectEffect()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final needsRowContainerView()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->needsDefaultSelectEffect()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    instance-of v1, p2, Landroid/support/v17/leanback/widget/Row;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/Row;

    :cond_0
    iput-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1, p2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 5

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->createRowViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->needsRowContainerView()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/support/v17/leanback/widget/RowContainerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/support/v17/leanback/widget/RowContainerView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v3, v2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iput-object v3, v2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    :cond_0
    new-instance v1, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    invoke-direct {v1, v0, v2}, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;-><init>(Landroid/support/v17/leanback/widget/RowContainerView;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    :goto_0
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/RowPresenter;->initializeRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-boolean v3, v2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mInitialzed:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "super.initializeRowViewHolder() must be called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/RowPresenter;->cancelAnimationsRecursive(Landroid/view/View;)V

    return-void
.end method

.method protected onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method protected onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->dispatchItemSelectedListener(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->updateHeaderViewVisibility(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->updateActivateStatus(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    iget v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->setActiveLevel(F)V

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget v2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->setSelectLevel(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;F)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RowPresenter;->isUsingDefaultSelectEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mContainerViewHolder:Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowPresenter$ContainerViewHolder;->view:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/RowContainerView;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {v1}, Landroid/support/v17/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowContainerView;->setForegroundColor(I)V

    :cond_1
    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    :cond_0
    iput-object v2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRow:Landroid/support/v17/leanback/widget/Row;

    iput-object v2, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mRowObject:Ljava/lang/Object;

    return-void
.end method

.method public final onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mHeaderViewHolder:Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final setHeaderPresenter(Landroid/support/v17/leanback/widget/RowHeaderPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mHeaderPresenter:Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    return-void
.end method

.method public final setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    iput-boolean p2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mExpanded:Z

    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewExpanded(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void
.end method

.method public final setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    iput-boolean p2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelected:Z

    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/RowPresenter;->onRowViewSelected(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    return-void
.end method

.method public final setSelectEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/RowPresenter;->mSelectEffectEnabled:Z

    return-void
.end method

.method public final setSelectLevel(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;F)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    iput p2, v0, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->mSelectLevel:F

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method
