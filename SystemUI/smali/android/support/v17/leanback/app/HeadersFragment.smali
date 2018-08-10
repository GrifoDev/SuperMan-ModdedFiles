.class public Landroid/support/v17/leanback/app/HeadersFragment;
.super Landroid/support/v17/leanback/app/BaseRowFragment;
.source "HeadersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/HeadersFragment$1;,
        Landroid/support/v17/leanback/app/HeadersFragment$2;,
        Landroid/support/v17/leanback/app/HeadersFragment$3;,
        Landroid/support/v17/leanback/app/HeadersFragment$NoOverlappingFrameLayout;,
        Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;,
        Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;
    }
.end annotation


# static fields
.field private static final sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field static sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mHeadersEnabled:Z

.field private mHeadersGone:Z

.field mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

.field private mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

.field final mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    const-class v1, Landroid/support/v17/leanback/widget/DividerRow;

    new-instance v2, Landroid/support/v17/leanback/widget/DividerPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/DividerPresenter;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    const-class v1, Landroid/support/v17/leanback/widget/SectionRow;

    new-instance v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_section_header:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    const-class v1, Landroid/support/v17/leanback/widget/Row;

    new-instance v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_header:I

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersFragment$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/HeadersFragment$1;-><init>(Landroid/support/v17/leanback/app/HeadersFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/HeadersFragment$3;-><init>(Landroid/support/v17/leanback/app/HeadersFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    sget-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    return-void
.end method

.method private updateFadingEdgeToBrandColor(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->fade_out_edge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_0
    return-void
.end method

.method private updateListViewVisibility()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v3

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$id;->browse_headers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method getLayoutResourceId()I
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_headers_fragment:I

    return v0
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

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onDestroyView()V

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    if-ltz p3, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    iget-object v3, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Row;

    invoke-interface {v3, v1, v2}, Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    invoke-interface {v1, v2, v2}, Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    goto :goto_0
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 2

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setDescendantFocusability(I)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionEnd()V

    return-void
.end method

.method public bridge synthetic onTransitionPrepare()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    move-result v0

    return v0
.end method

.method public onTransitionStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionStart()V

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setDescendantFocusability(I)V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColorSet:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setBackgroundColor(I)V

    iget v2, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/HeadersFragment;->updateFadingEdgeToBrandColor(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateListViewVisibility()V

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/HeadersFragment;->updateFadingEdgeToBrandColor(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAlignment(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAlignment(I)V

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 2

    iput p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColorSet:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setBackgroundColor(I)V

    iget v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateFadingEdgeToBrandColor(I)V

    :cond_0
    return-void
.end method

.method setHeadersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateListViewVisibility()V

    return-void
.end method

.method setHeadersGone(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateListViewVisibility()V

    return-void
.end method

.method public setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    return-void
.end method

.method public setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

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

.method updateAdapter()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    return-void
.end method
