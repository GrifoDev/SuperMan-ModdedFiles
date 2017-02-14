.class public Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/setupwizardlib/items/ItemViewHolder;",
        ">;",
        "Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;"
    }
.end annotation


# instance fields
.field private final mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

.field private mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;


# direct methods
.method static synthetic -get0(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;)Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    return-void
.end method


# virtual methods
.method public findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 5

    const-wide/16 v2, -0x1

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v1

    instance-of v4, v1, Lcom/android/setupwizardlib/items/AbstractItem;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/android/setupwizardlib/items/AbstractItem;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/items/AbstractItem;->getId()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v2, v0

    :cond_0
    return-wide v2

    :cond_1
    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v1

    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    iget-object v1, p1, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/setupwizardlib/items/IItem;->onBindView(Landroid/view/View;)V

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setEnabled(Z)V

    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setItem(Lcom/android/setupwizardlib/items/IItem;)V

    return-void
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-direct {v6, v5}, Lcom/android/setupwizardlib/items/ItemViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_selectableItemBackground:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_selectableItemBackground:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_colorBackground:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v7, "RecyclerItemAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " background="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v7, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;

    invoke-direct {v7, p0, v6}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;-><init>(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;Lcom/android/setupwizardlib/items/ItemViewHolder;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v6

    :cond_2
    const/4 v7, 0x2

    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v9

    const/4 v7, 0x1

    aput-object v3, v2, v7

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-void
.end method
