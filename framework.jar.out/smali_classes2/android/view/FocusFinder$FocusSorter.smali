.class final Landroid/view/FocusFinder$FocusSorter;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FocusSorter"
.end annotation


# instance fields
.field private mLastPoolRect:I

.field private mRectByView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRtlMult:I

.field private mSidesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    new-instance v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$2;

    invoke-direct {v0, p0}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    new-instance v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$3;

    invoke-direct {v0, p0}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_view_FocusFinder$FocusSorter_31401(Landroid/view/View;Landroid/view/View;)I
    .locals 5

    const/4 v3, 0x0

    if-ne p1, p2, :cond_0

    return v3

    :cond_0
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v4

    if-nez v1, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    return v3

    :cond_1
    return v1
.end method

.method synthetic lambda$-android_view_FocusFinder$FocusSorter_31861(Landroid/view/View;Landroid/view/View;)I
    .locals 5

    const/4 v3, 0x0

    if-ne p1, p2, :cond_0

    return v3

    :cond_0
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    if-nez v1, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    return v3

    :cond_1
    iget v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    mul-int/2addr v3, v1

    return v3
.end method

.method public sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 10

    sub-int v0, p3, p2

    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    :cond_1
    if-eqz p5, :cond_2

    const/4 v7, -0x1

    :goto_0
    iput v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_4

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    iget v8, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    aget-object v7, p1, v2

    invoke-virtual {v7, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    aget-object v7, p1, v2

    invoke-virtual {p4, v7, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v8, p1, v2

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v8, p1, p2

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    move v4, p2

    add-int/lit8 v6, p2, 0x1

    :goto_3
    if-ge v6, p3, :cond_7

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v8, p1, v6

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-lt v7, v5, :cond_6

    sub-int v7, v6, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v4, v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_5
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    move v4, v6

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    :cond_7
    sub-int v7, v6, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v4, v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_8
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    return-void
.end method
