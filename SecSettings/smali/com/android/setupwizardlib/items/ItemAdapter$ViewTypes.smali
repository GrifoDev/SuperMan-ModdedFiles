.class Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;
.super Ljava/lang/Object;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTypes"
.end annotation


# instance fields
.field private mPositionMap:Landroid/util/SparseIntArray;

.field private nextPosition:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->mPositionMap:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->nextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;-><init>()V

    return-void
.end method


# virtual methods
.method public add(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->mPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->mPositionMap:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->nextPosition:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->nextPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->nextPosition:I

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->mPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->mPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->mPositionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method
