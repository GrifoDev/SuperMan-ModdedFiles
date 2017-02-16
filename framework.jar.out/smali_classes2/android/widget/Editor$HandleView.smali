.class public abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field static final MAGNIFYING_FACTOR:F = 1.5f

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field private mFirstParentY:I

.field protected mHandleType:I

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private mHideDuration:I

.field private mHighlightRect:[I

.field protected mHorizontalGravity:I

.field private mHorizontalOffset:F

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mIsResetAnimating:Z

.field private mIsShowHideAnimating:Z

.field private mLastParentX:I

.field private mLastParentXOnScreen:I

.field private mLastParentY:I

.field private mLastParentYOnScreen:I

.field private mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

.field private mMinSize:I

.field private mNumberPreviousOffsets:I

.field private mOldDrawable:Landroid/graphics/drawable/Drawable;

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field protected mPrevLine:I

.field private mPreviousHighlightRect:[I

.field protected mPreviousLineTouched:I

.field protected mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mResetAnimator:Landroid/animation/ValueAnimator;

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mShowDuration:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mVerticalOffset:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$HandleView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$HandleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$HandleView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/Editor$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowHideAnimating:Z

    return p1
.end method

.method private constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 9
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3fc00000    # 1.5f

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4486
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4487
    invoke-static {p1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4453
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4455
    iput-boolean v8, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4459
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4463
    iput v3, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4468
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 4470
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    .line 4471
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    .line 4478
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    .line 4479
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    .line 4481
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 4482
    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 4483
    iput v5, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    .line 4484
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    .line 4570
    const/4 v2, 0x5

    new-array v2, v2, [J

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4571
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4572
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4573
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4488
    invoke-virtual {p0, p4}, Landroid/widget/Editor$HandleView;->setId(I)V

    .line 4489
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {p1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4490
    .local v0, "contentHolder":Landroid/widget/LinearLayout;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4491
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 4492
    const v4, 0x10102c8

    .line 4491
    invoke-direct {v2, v3, v6, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4493
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4494
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4495
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4496
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4497
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4499
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4500
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4502
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    .line 4503
    invoke-static {p1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4504
    const v3, 0x10500a6

    .line 4503
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4506
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4508
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4509
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4511
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    .line 4512
    .local v1, "handleHeight":I
    int-to-float v2, v1

    const v3, -0x41666666    # -0.3f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4513
    int-to-float v2, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4486
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;
    .param p4, "id"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4581
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4582
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4583
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4584
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4580
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 4588
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4589
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4590
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4591
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4592
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4593
    add-int/lit8 v0, v0, 0x1

    .line 4594
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 4597
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    .line 4598
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 4599
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3, v10}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4587
    :cond_1
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 4629
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 4625
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4671
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4672
    const/4 v0, 0x1

    return v0

    .line 4675
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4676
    const/4 v0, 0x0

    return v0

    .line 4679
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->-wrap9(Landroid/widget/Editor;FF)Z

    move-result v0

    return v0
.end method

.method private magnifyHandleView()V
    .locals 11

    .prologue
    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5129
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->requestLayout()V

    .line 5132
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5133
    .local v1, "drawableStartWidth":I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 5134
    .local v0, "drawableStartHeight":I
    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 5135
    .local v3, "drawableTargetWidth":I
    int-to-float v5, v0

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 5137
    .local v2, "drawableTargetHeight":I
    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    .line 5138
    .local v4, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "width"

    new-array v6, v9, [I

    aput v1, v6, v7

    aput v3, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    .line 5139
    const-string/jumbo v5, "height"

    new-array v6, v9, [I

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    .line 5141
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    .line 5142
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5143
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5144
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$3;

    invoke-direct {v6, p0}, Landroid/widget/Editor$HandleView$3;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5155
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$4;

    invoke-direct {v6, p0, v3, v2}, Landroid/widget/Editor$HandleView$4;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5161
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 5127
    return-void
.end method

.method private resetHandleView()V
    .locals 24

    .prologue
    .line 5018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 5019
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->pause()V

    .line 5023
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 5024
    .local v13, "r":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 5025
    .local v5, "drawableStartWidth":I
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 5027
    .local v4, "drawableStartHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 5028
    .local v7, "drawableTargetWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 5030
    .local v6, "drawableTargetHeight":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 5031
    .local v14, "startPositionX":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 5034
    .local v15, "startPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    .line 5035
    .local v9, "layout":Landroid/text/Layout;
    if-nez v9, :cond_1

    .line 5036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 5037
    return-void

    .line 5039
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v9

    .line 5040
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    .line 5041
    .local v12, "offset":I
    invoke-virtual {v9, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 5043
    .local v10, "line":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v19

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v19

    add-int v16, v18, v19

    .line 5044
    .local v16, "targetPositionX":I
    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    .line 5046
    .local v17, "targetPositionY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v18

    add-int v16, v16, v18

    .line 5047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v18

    add-int v17, v17, v18

    .line 5049
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v8, v0, [Landroid/animation/PropertyValuesHolder;

    .line 5050
    .local v8, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "positionX"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v14, v19, v20

    const/16 v20, 0x1

    aput v16, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v8, v19

    .line 5051
    const-string/jumbo v18, "positionY"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    const/16 v20, 0x1

    aput v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v8, v19

    .line 5052
    const-string/jumbo v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v8, v19

    .line 5053
    const-string/jumbo v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v4, v19, v20

    const/16 v20, 0x1

    aput v6, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    const/16 v19, 0x3

    aput-object v18, v8, v19

    .line 5055
    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    .line 5056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0xfa

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/view/animation/PathInterpolator;

    const/high16 v20, 0x3e800000    # 0.25f

    const v21, 0x3eeb851f    # 0.46f

    const v22, 0x3ee66666    # 0.45f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/Editor$HandleView$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/Editor$HandleView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5121
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v11

    .line 5122
    .local v11, "msg":Landroid/os/Message;
    const/16 v18, 0x6

    move/from16 v0, v18

    iput v0, v11, Landroid/os/Message;->what:I

    .line 5123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5017
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4576
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4577
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4575
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4652
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4653
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    .line 4654
    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowHideAnimating:Z

    .line 4655
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4656
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4651
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method getCursorHorizontalPosition(Landroid/text/Layout;I)I
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4768
    invoke-virtual {p0, p1, p2}, Landroid/widget/Editor$HandleView;->getHorizontal(Landroid/text/Layout;I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4890
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawableHeight()I
    .locals 1

    .prologue
    .line 4898
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getDrawableWidth()I
    .locals 1

    .prologue
    .line 4894
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getHandleType()I
    .locals 1

    .prologue
    .line 5008
    iget v0, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    return v0
.end method

.method public getHideAnimator()Landroid/animation/ValueAnimator;
    .locals 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5233
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 5234
    .local v5, "r":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    .line 5235
    .local v1, "drawableStartWidth":I
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 5236
    .local v0, "drawableStartHeight":I
    const/4 v3, 0x0

    .line 5237
    .local v3, "drawableTargetWidth":I
    const/4 v2, 0x0

    .line 5238
    .local v2, "drawableTargetHeight":I
    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    .line 5239
    .local v4, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v6, "width"

    new-array v7, v10, [I

    aput v1, v7, v8

    aput v8, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v8

    .line 5240
    const-string/jumbo v6, "height"

    new-array v7, v10, [I

    aput v0, v7, v8

    aput v8, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v9

    .line 5241
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 5243
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/widget/Editor$HandleView$7;

    invoke-direct {v7, p0}, Landroid/widget/Editor$HandleView$7;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5254
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/widget/Editor$HandleView$8;

    invoke-direct {v7, p0}, Landroid/widget/Editor$HandleView$8;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5274
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    iget v7, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5275
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x3eeb851f    # 0.46f

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5277
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHideAnimator:Landroid/animation/ValueAnimator;

    return-object v6
.end method

.method public getHorizontal(Landroid/text/Layout;I)F
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4694
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4871
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4872
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4874
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    sparse-switch v3, :sswitch_data_0

    .line 4880
    :sswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4886
    .local v1, "left":I
    :goto_0
    return v1

    .line 4876
    .end local v1    # "left":I
    :sswitch_1
    const/4 v1, 0x0

    .line 4877
    .restart local v1    # "left":I
    goto :goto_0

    .line 4883
    .end local v1    # "left":I
    :sswitch_2
    sub-int v1, v2, v0

    .line 4884
    .restart local v1    # "left":I
    goto :goto_0

    .line 4874
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public getIdealVerticalOffset()F
    .locals 1

    .prologue
    .line 4517
    iget v0, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    return v0
.end method

.method protected getOffsetAtCoordinate(Landroid/text/Layout;IF)I
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "x"    # F

    .prologue
    .line 4698
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v0

    return v0
.end method

.method public getShowAnimator()Landroid/animation/ValueAnimator;
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5177
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_0

    .line 5178
    const/4 v1, 0x0

    .line 5179
    .local v1, "drawableStartWidth":I
    const/4 v0, 0x0

    .line 5180
    .local v0, "drawableStartHeight":I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 5181
    .local v3, "drawableTargetWidth":I
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 5183
    .local v2, "drawableTargetHeight":I
    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    .line 5184
    .local v4, "holders":[Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v5, "width"

    new-array v6, v9, [I

    aput v7, v6, v7

    aput v3, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    .line 5185
    const-string/jumbo v5, "height"

    new-array v6, v9, [I

    aput v7, v6, v7

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    .line 5187
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 5189
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$5;

    invoke-direct {v6, p0}, Landroid/widget/Editor$HandleView$5;-><init>(Landroid/widget/Editor$HandleView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5200
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/Editor$HandleView$6;

    invoke-direct {v6, p0, v3, v2}, Landroid/widget/Editor$HandleView$6;-><init>(Landroid/widget/Editor$HandleView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5226
    .end local v0    # "drawableStartHeight":I
    .end local v1    # "drawableStartWidth":I
    .end local v2    # "drawableTargetHeight":I
    .end local v3    # "drawableTargetWidth":I
    .end local v4    # "holders":[Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    iget v6, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5227
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5229
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mShowAnimator:Landroid/animation/ValueAnimator;

    return-object v5
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4660
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4661
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    .line 4662
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4659
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 4618
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 4619
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowHideAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4620
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4617
    :cond_0
    return-void
.end method

.method protected isAtRtlRun(Landroid/text/Layout;I)Z
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "offset"    # I

    .prologue
    .line 4689
    invoke-virtual {p1, p2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 5000
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method protected abstract isHandleViewScreenOut()Z
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4666
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4604
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 5015
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4861
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4862
    .local v0, "drawWidth":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4864
    .local v1, "left":I
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v2, :cond_1

    .line 4867
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4860
    return-void

    .line 4864
    :cond_1
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsShowHideAnimating:Z

    if-nez v2, :cond_0

    .line 4865
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method onHandleMoved()V
    .locals 1

    .prologue
    .line 5012
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->removeMessage()V

    .line 5011
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 4609
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v0, :cond_1

    .line 4610
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4608
    :goto_0
    return-void

    .line 4612
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 4903
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11, p1}, Landroid/widget/Editor;->-wrap26(Landroid/widget/Editor;Landroid/view/MotionEvent;)V

    .line 4905
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 4970
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->invalidate()V

    .line 4971
    return v13

    .line 4907
    :pswitch_0
    iput-boolean v13, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4908
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->magnifyHandleView()V

    .line 4909
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v11

    invoke-direct {p0, v11}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4914
    iget-object v11, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v6

    .line 4915
    .local v6, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v6}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4916
    invoke-virtual {v6}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v11

    iput v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4917
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iput v11, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    .line 4918
    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/Editor$HandleView;->mPreviousLineTouched:I

    .line 4920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    .line 4921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iput v11, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    goto :goto_0

    .line 4927
    .end local v6    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 4928
    .local v8, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 4929
    .local v9, "rawY":F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    iget v12, p0, Landroid/widget/Editor$HandleView;->mFirstParentY:I

    sub-int/2addr v11, v12

    int-to-float v10, v11

    .line 4932
    .local v10, "scrolledY":F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v7, v11, v12

    .line 4933
    .local v7, "previousVerticalOffset":F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v11, v11

    sub-float v11, v9, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    sub-float v0, v11, v12

    .line 4935
    .local v0, "currentVerticalOffset":F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v11, v7, v11

    if-gez v11, :cond_0

    .line 4936
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4937
    .local v5, "newVerticalOffset":F
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 4942
    :goto_1
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v11, v11

    add-float/2addr v11, v5

    iput v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4945
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v11, v8, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v12

    int-to-float v12, v12

    add-float v3, v11, v12

    .line 4946
    .local v3, "newPosX":F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v11, v9, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v4, v11, v12

    .line 4948
    .local v4, "newPosY":F
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentXOnScreen:I

    int-to-float v11, v11

    sub-float v11, v8, v11

    iget v12, p0, Landroid/widget/Editor$HandleView;->mHorizontalOffset:F

    sub-float/2addr v11, v12

    float-to-int v1, v11

    .line 4949
    .local v1, "handlePositionX":I
    iget v11, p0, Landroid/widget/Editor$HandleView;->mLastParentYOnScreen:I

    int-to-float v11, v11

    sub-float v11, v9, v11

    sub-float/2addr v11, v10

    iget v12, p0, Landroid/widget/Editor$HandleView;->mVerticalOffset:F

    sub-float/2addr v11, v12

    float-to-int v2, v11

    .line 4951
    .local v2, "handlePositionY":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePositionImmediately(II)V

    .line 4952
    invoke-virtual {p0, v3, v4}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4939
    .end local v1    # "handlePositionX":I
    .end local v2    # "handlePositionY":I
    .end local v3    # "newPosX":F
    .end local v4    # "newPosY":F
    .end local v5    # "newVerticalOffset":F
    :cond_0
    iget v11, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 4940
    .restart local v5    # "newVerticalOffset":F
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_1

    .line 4957
    .end local v0    # "currentVerticalOffset":F
    .end local v5    # "newVerticalOffset":F
    .end local v7    # "previousVerticalOffset":F
    .end local v8    # "rawX":F
    .end local v9    # "rawY":F
    .end local v10    # "scrolledY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4958
    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4959
    iput-boolean v13, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    .line 4960
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    goto/16 :goto_0

    .line 4964
    :pswitch_3
    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4965
    iput-boolean v13, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    .line 4966
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->resetHandleView()V

    .line 4967
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    goto/16 :goto_0

    .line 4905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "forceUpdatePosition"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4708
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4709
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 4711
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v3}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4712
    return-void

    .line 4714
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/text/Layout;

    move-result-object v0

    .line 4716
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4717
    .local v1, "line":I
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_7

    move v2, v3

    .line 4719
    .local v2, "offsetChanged":Z
    :goto_0
    if-nez v2, :cond_2

    .line 4720
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    .line 4721
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    aput v6, v5, v3

    .line 4723
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v4

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    aget v6, v6, v3

    if-eq v5, v6, :cond_8

    .line 4724
    :cond_1
    :goto_1
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v4

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4725
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4728
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4729
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4731
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v6, v6, v4

    aput v6, v5, v4

    .line 4732
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mPreviousHighlightRect:[I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mHighlightRect:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 4734
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4738
    :cond_2
    if-nez v2, :cond_3

    if-eqz p2, :cond_6

    .line 4739
    :cond_3
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    .line 4740
    if-eqz v2, :cond_4

    .line 4741
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4742
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4744
    :cond_4
    iput v1, p0, Landroid/widget/Editor$HandleView;->mPrevLine:I

    .line 4746
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v4, :cond_9

    .line 4755
    :cond_5
    :goto_2
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4756
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4706
    :cond_6
    return-void

    .end local v2    # "offsetChanged":Z
    :cond_7
    move v2, v4

    .line 4717
    goto/16 :goto_0

    .line 4723
    .restart local v2    # "offsetChanged":Z
    :cond_8
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mOldDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 4747
    :cond_9
    invoke-virtual {p0, v0, p1}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4748
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    .line 4747
    sub-int/2addr v4, v5

    .line 4748
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    .line 4747
    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4749
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4752
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4753
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    goto :goto_2
.end method

.method public setFinishSizeAnimating()V
    .locals 1

    .prologue
    .line 5004
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsShowHideAnimating:Z

    .line 5003
    return-void
.end method

.method public setHideDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 5169
    iput p1, p0, Landroid/widget/Editor$HandleView;->mHideDuration:I

    .line 5168
    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 5173
    iput-boolean p1, p0, Landroid/widget/Editor$HandleView;->mIsShowHideAnimating:Z

    .line 5172
    return-void
.end method

.method public setShowDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 5165
    iput p1, p0, Landroid/widget/Editor$HandleView;->mShowDuration:I

    .line 5164
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 4633
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/widget/Editor;->-wrap5(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4638
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4640
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 4641
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4643
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 4644
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4647
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4648
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4632
    return-void

    .line 4635
    :cond_3
    return-void
.end method

.method public showImmediately()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4815
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4817
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4818
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v1, v0, v4

    .line 4820
    .local v0, "pts":[I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 4821
    aget v1, v0, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 4823
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4826
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4814
    .end local v0    # "pts":[I
    :cond_0
    :goto_0
    return-void

    .line 4830
    .restart local v0    # "pts":[I
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4833
    .end local v0    # "pts":[I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4834
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4521
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v4, :cond_0

    .line 4523
    return-void

    .line 4525
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4526
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    .line 4527
    return-void

    .line 4529
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    .line 4530
    .local v2, "offset":I
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->isAtRtlRun(Landroid/text/Layout;I)Z

    move-result v0

    .line 4531
    .local v0, "isRtlCharAtOffset":Z
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4533
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 4534
    if-eqz v0, :cond_5

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4535
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4536
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4537
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4538
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    .line 4537
    sub-int/2addr v4, v5

    .line 4538
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    .line 4537
    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4539
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4542
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4543
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 4545
    .end local v0    # "isRtlCharAtOffset":Z
    :cond_3
    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4546
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4547
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4548
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4550
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4553
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->getCursorHorizontalPosition(Landroid/text/Layout;I)I

    move-result v4

    iget v5, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    sub-int/2addr v4, v5

    .line 4554
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v5

    .line 4553
    sub-int/2addr v4, v5

    .line 4554
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v5

    .line 4553
    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4555
    iget v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4556
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4557
    iget v4, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    iget v5, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    invoke-virtual {p0, v4, v5, v6, v6}, Landroid/widget/Editor$HandleView;->updatePosition(IIZZ)V

    .line 4558
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->postInvalidate()V

    .line 4520
    :cond_4
    return-void

    .line 4534
    .restart local v0    # "isRtlCharAtOffset":Z
    :cond_5
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 4543
    :cond_6
    const/4 v0, 0x1

    .local v0, "isRtlCharAtOffset":Z
    goto :goto_1

    .line 4545
    .end local v0    # "isRtlCharAtOffset":Z
    :cond_7
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public updateDrawableBounds(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 4840
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    .line 4841
    .local v2, "left":I
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4842
    .local v1, "layout":Landroid/text/Layout;
    iget-object v6, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v4, v7, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0, v6, v4}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v0

    .line 4843
    .local v0, "hotspot":I
    const/4 v3, 0x0

    .line 4845
    .local v3, "offset":I
    iget v4, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v4, :pswitch_data_0

    .line 4856
    :goto_1
    :pswitch_0
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v6, v3, v0

    sub-int v6, v2, v6

    sub-int v7, v3, v0

    sub-int v7, v2, v7

    add-int/2addr v7, p1

    invoke-virtual {v4, v6, v5, v7, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4839
    return-void

    .end local v0    # "hotspot":I
    .end local v3    # "offset":I
    :cond_0
    move v4, v5

    .line 4842
    goto :goto_0

    .line 4847
    .restart local v0    # "hotspot":I
    .restart local v3    # "offset":I
    :pswitch_1
    div-int/lit8 v3, p1, 0x4

    goto :goto_1

    .line 4850
    :pswitch_2
    div-int/lit8 v3, p1, 0x2

    goto :goto_1

    .line 4853
    :pswitch_3
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v3, v4, 0x4

    goto :goto_1

    .line 4845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4774
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-virtual {p0, v1, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4775
    if-nez p3, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v1, :cond_4

    .line 4776
    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v1, :cond_2

    .line 4778
    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v1, :cond_2

    .line 4779
    :cond_1
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4780
    iget v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4781
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4782
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4787
    :cond_2
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsResetAnimating:Z

    if-eqz v1, :cond_5

    .line 4810
    :cond_3
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4773
    :cond_4
    return-void

    .line 4788
    :cond_5
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4790
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 4791
    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, v5

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v1, v0, v4

    .line 4793
    .local v0, "pts":[I
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 4794
    aget v1, v0, v5

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, v5

    .line 4796
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4798
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 4801
    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4804
    .end local v0    # "pts":[I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4805
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method public updatePositionImmediately(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4975
    new-array v1, v4, [I

    .line 4976
    .local v1, "textViewCoords":[I
    invoke-virtual {p0, v1}, Landroid/widget/Editor$HandleView;->getLocationInWindow([I)V

    .line 4977
    aget v2, v1, v6

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 4978
    aget v2, v1, v5

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 4980
    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    neg-int v2, v2

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    sub-int/2addr v2, v3

    aget v3, v1, v6

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4981
    aget v2, v1, v5

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4983
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4985
    new-array v0, v4, [I

    .line 4986
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v6

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    aput v2, v0, v5

    .line 4988
    .local v0, "pts":[I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->transformFromViewToWindowSpace([I)V

    .line 4989
    aget v2, v0, v6

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v6

    .line 4991
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4992
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    aget v3, v0, v6

    aget v4, v0, v5

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4974
    .end local v0    # "pts":[I
    :cond_0
    :goto_0
    return-void

    .line 4994
    .restart local v0    # "pts":[I
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    aget v4, v0, v6

    aget v5, v0, v5

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
