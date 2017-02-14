.class Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popup/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/launcher2/popup/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    iput-object p2, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    new-instance v0, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v5}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/popup/MenuBuilder;->getExpandedItem()Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v5}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/popup/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    if-ne v3, v1, :cond_0

    iput v2, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$300(Lcom/android/launcher2/popup/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/popup/MenuView$ItemView;

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/android/launcher2/popup/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/popup/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/popup/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/launcher2/popup/MenuView$ItemView;->initialize(Lcom/android/launcher2/popup/MenuItemImpl;I)V

    return-object p2
.end method
