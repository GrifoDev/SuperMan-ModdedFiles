.class Landroid/support/v17/leanback/widget/ControlBar;
.super Landroid/widget/LinearLayout;
.source "ControlBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;
    }
.end annotation


# instance fields
.field private mChildMarginFromCenter:I

.field mDefaultFocusToMiddle:Z

.field mLastFocusIndex:I

.field private mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    const/16 v0, 0x21

    if-eq p2, v0, :cond_0

    const/16 v0, 0x82

    if-ne p2, v0, :cond_3

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getDefaultFocusIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method getDefaultFocusIndex()I
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v8, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    if-gtz v8, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v5, v8, v9

    iget v8, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    div-int/lit8 v9, v5, 0x2

    sub-int v4, v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v8

    sub-int v0, v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v7, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v17/leanback/widget/ControlBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getDefaultFocusIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;->onChildFocusedListener(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setChildMarginFromCenter(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    return-void
.end method

.method setDefaultFocusToMiddle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    return-void
.end method

.method public setOnChildFocusedListener(Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    return-void
.end method
