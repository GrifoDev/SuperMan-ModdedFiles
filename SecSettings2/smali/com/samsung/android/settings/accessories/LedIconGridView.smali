.class public Lcom/samsung/android/settings/accessories/LedIconGridView;
.super Landroid/widget/GridView;
.source "LedIconGridView.java"


# instance fields
.field private expand:Z

.field private mListItemHeight:I

.field private mParentScrollView:Landroid/widget/ScrollView;

.field private mParentScrollViewTopPosition:I

.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    iput v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    iput v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    iput v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->expand:Z

    return-void
.end method


# virtual methods
.method public isExpand()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->expand:Z

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x2

    new-array v2, v5, [I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x1

    aget v3, v2, v5

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    sub-int v4, v3, v5

    if-gez v4, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v6, v4}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x2

    new-array v2, v5, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    sub-int v4, v3, v5

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    iget v6, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    return v5

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v6

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    mul-int/lit8 v5, v5, 0x2

    add-int v4, v3, v5

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    if-le v4, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    iget v6, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->isExpand()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->expand:Z

    return-void
.end method

.method public setParents(Landroid/app/Activity;Landroid/widget/ScrollView;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mScreenHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3, p0}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mListItemHeight:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a044f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedIconGridView;->mParentScrollViewTopPosition:I

    return-void
.end method
