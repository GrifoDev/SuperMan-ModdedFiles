.class public Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
.super Lcom/android/setupwizardlib/SetupWizardLayout;
.source "SetupWizardRecyclerLayout.java"


# instance fields
.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

.field private mDividerInset:I

.field private mHeader:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x0

    sget-object v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_android_entries:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v4, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/ItemGroup;

    new-instance v4, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v4, v2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    iput-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_suwHasStableIds:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    iget-object v4, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardRecyclerItemsLayout_suwDividerInset:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/setupwizardlib/R$dimen;->suw_items_icon_divider_inset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setDividerInset(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateDivider()V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->isLayoutDirectionResolved()Z

    move-result v6

    :cond_0
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    move v3, v2

    move v4, v2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_0

    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected findManagedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method protected initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    instance-of v0, v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    check-cast v0, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mHeader:Landroid/view/View;

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/DividerItemDecoration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_recycler_template:I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/SetupWizardLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->updateDivider()V

    :cond_0
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 1

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->initRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->mDividerInset:I

    invoke-direct {p0}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->updateDivider()V

    return-void
.end method
