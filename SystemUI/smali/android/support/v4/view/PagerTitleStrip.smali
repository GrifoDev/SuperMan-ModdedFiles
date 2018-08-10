.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$PageListener;,
        Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final TEXT_ATTRS:[I


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v0, 0x1010034

    const v1, 0x1010095

    const v2, 0x1010098

    const v3, 0x10100af

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101038c

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v7, -0x1

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    new-instance v7, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-direct {v7, p0}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v7, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    if-eqz v6, :cond_1

    int-to-float v7, v6

    invoke-virtual {p0, v9, v7}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    :cond_1
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 v7, 0x3

    const/16 v8, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x0

    if-eqz v4, :cond_3

    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41800000    # 16.0f

    mul-float/2addr v7, v2

    float-to-int v7, v7

    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return-void

    :cond_4
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 2

    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTextSpacing()I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v4, v2, Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, v2

    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    iput-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 15

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v10, v13, :cond_0

    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "Must measure with an exact width"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v13

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v14

    add-int v6, v13, v14

    const/4 v13, -0x2

    move/from16 v0, p2

    invoke-static {v0, v6, v13}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    int-to-float v13, v12

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    float-to-int v11, v13

    const/4 v13, -0x2

    move/from16 v0, p1

    invoke-static {v0, v11, v13}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v5, v13, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :goto_0
    iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    shl-int/lit8 v13, v2, 0x10

    move/from16 v0, p2

    invoke-static {v4, v0, v13}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v12, v7}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v8

    add-int v13, v9, v6

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 4
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 12

    const/4 v9, 0x1

    const/high16 v11, -0x80000000

    const/4 v10, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    const/4 v6, 0x0

    if-lt p1, v9, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p2, v9}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_0
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    if-ge p1, v3, :cond_1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v8

    :cond_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    add-int/lit8 v8, p1, 0x1

    if-ge v8, v3, :cond_2

    if-eqz p2, :cond_2

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p2, v8}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_2
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    int-to-float v8, v7

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->measure(II)V

    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    iget-boolean v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v8, :cond_3

    iget v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v8, v10}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_3
    iput-boolean v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method updateTextPositions(IFZ)V
    .locals 45

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v42, v0

    move/from16 v0, p1

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v42

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    :cond_0
    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v19, v18, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v37

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v28

    add-int v39, v29, v19

    add-int v40, v30, v19

    sub-int v42, v38, v39

    sub-int v10, v42, v40

    const/high16 v42, 0x3f000000    # 0.5f

    add-float v14, p2, v42

    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v42, v14, v42

    if-lez v42, :cond_1

    const/high16 v42, 0x3f800000    # 1.0f

    sub-float v14, v14, v42

    :cond_1
    sub-int v42, v38, v40

    int-to-float v0, v10

    move/from16 v43, v0

    mul-float v43, v43, v14

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v12, v42, v43

    div-int/lit8 v42, v18, 0x2

    sub-int v13, v12, v42

    add-int v15, v13, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    move-result v22

    move/from16 v0, v32

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    sub-int v35, v20, v32

    sub-int v17, v20, v11

    sub-int v25, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v7, v35, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v5, v17, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v6, v25, v42

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v42, v0

    and-int/lit8 v41, v42, 0x70

    sparse-switch v41, :sswitch_data_0

    :sswitch_0
    add-int v34, v31, v35

    add-int v16, v31, v17

    add-int v24, v31, v25

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v43

    add-int v43, v43, v16

    move-object/from16 v0, v42

    move/from16 v1, v16

    move/from16 v2, v43

    invoke-virtual {v0, v13, v1, v15, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v42, v0

    sub-int v42, v13, v42

    sub-int v42, v42, v36

    move/from16 v0, v29

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    add-int v43, v33, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v44

    add-int v44, v44, v34

    move-object/from16 v0, v42

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    sub-int v42, v38, v30

    sub-int v42, v42, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    add-int v43, v43, v15

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    add-int v43, v23, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v44

    add-int v44, v44, v24

    move-object/from16 v0, v42

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v43

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    return-void

    :cond_2
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v42, v0

    cmpl-float v42, p2, v42

    if-nez v42, :cond_0

    return-void

    :sswitch_1
    sub-int v42, v37, v31

    sub-int v27, v42, v28

    sub-int v42, v27, v21

    div-int/lit8 v9, v42, 0x2

    add-int v34, v9, v35

    add-int v16, v9, v17

    add-int v24, v9, v25

    goto/16 :goto_0

    :sswitch_2
    sub-int v42, v37, v28

    sub-int v8, v42, v21

    add-int v34, v8, v35

    add-int v16, v8, v17

    add-int v24, v8, v25

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method
