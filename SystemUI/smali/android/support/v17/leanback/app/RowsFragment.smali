.class public Landroid/support/v17/leanback/app/RowsFragment;
.super Landroid/support/v17/leanback/app/BaseRowFragment;
.source "RowsFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapterProvider;
.implements Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapterProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/RowsFragment$1;,
        Landroid/support/v17/leanback/app/RowsFragment$2;,
        Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;,
        Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;,
        Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;
    }
.end annotation


# instance fields
.field mAfterEntranceTransition:Z

.field private mAlignedTop:I

.field private final mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mExpand:Z

.field mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

.field private mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

.field mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private mPresenterMapper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field mSelectAnimatorDuration:I

.field mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

.field private mSubPosition:I

.field mViewsCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;-><init>()V

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsFragment$1;-><init>(Landroid/support/v17/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method private freezeRows(Z)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->freeze(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method static setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewExpanded(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    return-void
.end method

.method static setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getExtraObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsFragment$RowViewHolderExtra;->animateSelect(ZZ)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/RowPresenter;->setRowViewSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Z)V

    return-void
.end method


# virtual methods
.method protected findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$id;->container_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method getLayoutResourceId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_rows_fragment:I

    return v0
.end method

.method public getMainFragmentAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;-><init>(Landroid/support/v17/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    return-object v0
.end method

.method public getMainFragmentRowsAdapter()Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;-><init>(Landroid/support/v17/leanback/app/RowsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentRowsAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;

    return-object v0
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_browse_rows_anim_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectAnimatorDuration:I

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onDestroyView()V

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-ne v2, p2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSubPosition:I

    if-eq v2, p4, :cond_2

    :cond_0
    iput p4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSubPosition:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v2, v1, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    :cond_1
    check-cast p2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iput-object p2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v2, v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewSelected(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;ZZ)V

    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object v2

    if-gtz p3, :cond_4

    :goto_0
    invoke-interface {v2, v0}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;->showTitleView(Z)V

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionEnd()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/RowsFragment;->freezeRows(Z)V

    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->freezeRows(Z)V

    :cond_0
    return v0
.end method

.method public bridge synthetic onTransitionStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionStart()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->row_content:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentViewId(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSaveChildrenPolicy(I)V

    iget v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/RowsFragment;->setAlignment(I)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    iput-object v2, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;->notifyViewCreated(Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;)V

    :cond_0
    return-void
.end method

.method public setAlignment(I)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetWithPadding(Z)V

    iget v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAlignedTop:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    :cond_1
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 7

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/v17/leanback/app/RowsFragment;->mAfterEntranceTransition:Z

    invoke-virtual {v3, v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpand(Z)V
    .locals 6

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-boolean v5, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExpand:Z

    invoke-static {v3, v5}, Landroid/support/v17/leanback/app/RowsFragment;->setRowViewExpanded(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mExternalAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Item clicked listener must be set before views are created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 7

    iput-object p1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-static {v2}, Landroid/support/v17/leanback/app/RowsFragment;->getRowViewHolder(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/app/RowsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method setupSharedViewPool(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowPresenter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v2

    instance-of v4, v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/HorizontalGridView;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    :goto_0
    check-cast v2, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ListRowPresenter$ViewHolder;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getPresenterMapper()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mRecycledViewPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/support/v17/leanback/app/RowsFragment;->mPresenterMapper:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenterMapper(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method updateAdapter()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mViewsCreated:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/RowsFragment;->mBridgeAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    :cond_0
    return-void
.end method
