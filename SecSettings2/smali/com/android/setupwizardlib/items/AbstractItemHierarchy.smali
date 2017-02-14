.class public abstract Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.super Ljava/lang/Object;
.source "AbstractItemHierarchy.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy;


# instance fields
.field private mId:I

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwAbstractItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwAbstractItem_android_id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mId:I

    return v0
.end method

.method public notifyChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
