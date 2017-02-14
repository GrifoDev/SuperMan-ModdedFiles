.class public Lcom/android/setupwizardlib/items/ItemGroup;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "ItemGroup.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# instance fields
.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDirty:Z

.field private mHierarchyStart:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iput v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iput v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    return-void
.end method

.method private static binarySearch(Landroid/util/SparseIntArray;I)I
    .locals 6

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v1, 0x0

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v5, v1, v0

    ushr-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5

    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    return v5
.end method

.method private getItemIndex(I)I
    .locals 4

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-static {v1, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->binarySearch(Landroid/util/SparseIntArray;I)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Cannot have item start index < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method private onHierarchyChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ItemGroup;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    return-void
.end method

.method private updateDataIfNeeded()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    if-eqz v2, :cond_2

    iput v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    iget v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->onHierarchyChanged()V

    return-void
.end method

.method public findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object p0

    :cond_0
    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v4
.end method

.method public getCount()I
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->updateDataIfNeeded()V

    iget v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mCount:I

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ItemGroup;->getItemIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy;

    iget-object v3, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mHierarchyStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    sub-int v2, p1, v3

    invoke-interface {v0, v2}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v3

    return-object v3
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemGroup;->mDirty:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemGroup;->notifyChanged()V

    return-void
.end method
