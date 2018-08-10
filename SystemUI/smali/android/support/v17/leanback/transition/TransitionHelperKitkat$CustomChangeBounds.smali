.class Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;
.super Landroid/transition/ChangeBounds;
.source "TransitionHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/TransitionHelperKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomChangeBounds"
.end annotation


# instance fields
.field final mClassStartDelays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultStartDelay:I

.field final mIdStartDelays:Landroid/util/SparseIntArray;

.field final mViewStartDelays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/ChangeBounds;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mViewStartDelays:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mIdStartDelays:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mClassStartDelays:Ljava/util/HashMap;

    return-void
.end method

.method private getDelay(Landroid/view/View;)I
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mViewStartDelays:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mIdStartDelays:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v4, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mClassStartDelays:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->mDefaultStartDelay:I

    return v2
.end method


# virtual methods
.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/transition/TransitionHelperKitkat$CustomChangeBounds;->getDelay(Landroid/view/View;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_0
    return-object v0
.end method
