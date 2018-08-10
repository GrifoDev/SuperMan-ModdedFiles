.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v2

    if-eq v2, p2, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p2, :cond_2

    if-eq v1, v2, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v7
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->populate()V

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v12, :cond_3

    const/4 v10, 0x1

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v2, v11}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v2

    if-eqz v10, :cond_1

    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    :cond_0
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_5
    invoke-static {v9, p1, v2}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v11

    shl-int/lit8 v12, v2, 0x10

    invoke-static {v8, p2, v12}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v12

    invoke-virtual {p0, v11, v12}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v11, 0x1

    if-le v4, v11, :cond_8

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_3
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_4
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    invoke-static {p1, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    invoke-static {p2, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_4

    :cond_8
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
