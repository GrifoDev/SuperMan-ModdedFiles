.class public Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;
.super Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;
.source "SeslPagerTabStrip.java"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    const/16 v1, 0xff

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabAlpha:I

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderlineSet:Z

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTextColor:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorHeight:I

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinPaddingBottom:I

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinTextSpacing:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mFullUnderlineHeight:I

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinStripHeight:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTouchSlop:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getTextSpacing()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->setTextSpacing(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$1;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip$2;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    goto :goto_0
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    return v0
.end method

.method getMinHeight()I
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinStripHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const v11, 0xffffff

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getHeight()I

    move-result v7

    move v6, v7

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    sub-int v8, v0, v1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    add-int v9, v0, v1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorHeight:I

    sub-int v10, v6, v0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    and-int/2addr v2, v11

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v8

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    and-int/2addr v1, v11

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mFullUnderlineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIgnoreTap:Z

    if-eqz v5, :cond_0

    return v3

    :pswitch_0
    iput v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mInitialMotionX:F

    iput v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mInitialMotionY:F

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIgnoreTap:Z

    goto :goto_0

    :pswitch_1
    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mInitialMotionX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v3, v4

    :cond_3
    if-nez v3, :cond_4

    iget v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mInitialMotionY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_4
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIgnoreTap:Z

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I

    move-result v3

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setBackgroundColor(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderlineSet:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderlineSet:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setBackgroundResource(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderlineSet:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setDrawFullUnderline(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderline:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mDrawFullUnderlineSet:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinPaddingBottom:I

    if-lt p4, v0, :cond_0

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setPadding(IIII)V

    return-void

    :cond_0
    iget p4, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinPaddingBottom:I

    goto :goto_0
.end method

.method public setTabIndicatorColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->invalidate()V

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->setTabIndicatorColor(I)V

    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinTextSpacing:I

    if-lt p1, v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->setTextSpacing(I)V

    return-void

    :cond_0
    iget p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mMinTextSpacing:I

    goto :goto_0
.end method

.method updateTextPositions(IFZ)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->getHeight()I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    sub-int v1, v5, v6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    add-int v3, v5, v6

    iget v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mIndicatorHeight:I

    sub-int v4, v0, v5

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;->updateTextPositions(IFZ)V

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabAlpha:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    sub-int v1, v5, v6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->mTabPadding:I

    add-int v3, v5, v6

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslPagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
