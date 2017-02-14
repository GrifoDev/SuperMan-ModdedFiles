.class public Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "KeyguardServiceBoxViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v5, v2, :cond_1

    move v5, v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    move v3, v5

    :cond_3
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    :cond_4
    return-void
.end method
