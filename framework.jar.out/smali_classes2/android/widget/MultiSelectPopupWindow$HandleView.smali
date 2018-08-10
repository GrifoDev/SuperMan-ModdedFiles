.class abstract Landroid/widget/MultiSelectPopupWindow$HandleView;
.super Landroid/view/View;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field static final HEIGHT:Ljava/lang/String; = "height"

.field static final MAGNIFYING_FACTOR:F = 1.5f

.field static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field protected mBaselineY:I

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEndRange:I

.field public mHandleType:I

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mIsResetAnimating:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

.field private mMinSize:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mResetAnimator:Landroid/animation/ValueAnimator;

.field protected mStartRange:I

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method static synthetic -get0(Landroid/widget/MultiSelectPopupWindow$HandleView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    return v0
.end method

.method static synthetic -set0(Landroid/widget/MultiSelectPopupWindow$HandleView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    return p1
.end method

.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    iput-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    iput-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    iput-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbFlipCursor:Z

    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mCurCursorPosTop:Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10102c8

    invoke-direct {v1, v2, v5, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateDrawable()V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->recalHandleView()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isPositionVisible(II)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get0()[F

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get0()[F

    move-result-object v2

    int-to-float v4, p1

    const/4 v6, 0x0

    aput v4, v2, v6

    int-to-float v4, p2

    const/4 v6, 0x1

    aput v4, v2, v6

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_5

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    :cond_1
    monitor-exit v5

    return v8

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_3
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    monitor-exit v5

    return v9

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private isVisible()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    invoke-direct {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method private magnifyHandleView()V
    .locals 11

    const/high16 v6, 0x3fc00000    # 1.5f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->requestLayout()V

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v3, v5

    int-to-float v5, v0

    mul-float/2addr v5, v6

    float-to-int v2, v5

    new-array v4, v9, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v5, "width"

    new-array v6, v9, [I

    aput v1, v6, v7

    aput v3, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, "height"

    new-array v6, v9, [I

    aput v0, v6, v7

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x3ee66666    # 0.45f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/MultiSelectPopupWindow$HandleView$1;

    invoke-direct {v6, p0}, Landroid/widget/MultiSelectPopupWindow$HandleView$1;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/MultiSelectPopupWindow$HandleView$2;

    invoke-direct {v6, p0, v3, v2}, Landroid/widget/MultiSelectPopupWindow$HandleView$2;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private resetHandleView()V
    .locals 12

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mMagnifySizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    sub-int v1, v6, v7

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v6, "width"

    new-array v7, v10, [I

    aput v1, v7, v8

    aput v3, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v8

    const-string/jumbo v6, "height"

    new-array v7, v10, [I

    aput v0, v7, v8

    aput v2, v7, v9

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x3eeb851f    # 0.46f

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/widget/MultiSelectPopupWindow$HandleView$3;

    invoke-direct {v7, p0}, Landroid/widget/MultiSelectPopupWindow$HandleView$3;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Landroid/widget/MultiSelectPopupWindow$HandleView$4;

    invoke-direct {v7, p0}, Landroid/widget/MultiSelectPopupWindow$HandleView$4;-><init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mResetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    iput-boolean v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mbSwitchCursor:Z

    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method public getDrawableBounds(II)Landroid/graphics/Rect;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v1

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v5, v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v0

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-instance v3, Landroid/graphics/Rect;

    sub-int v5, v2, v0

    sub-int v5, v1, v5

    sub-int v6, v2, v0

    sub-int v6, v1, v6

    add-int/2addr v6, p1

    invoke-direct {v3, v5, v4, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_0
    move v3, v4

    goto :goto_0

    :pswitch_1
    div-int/lit8 v2, p1, 0x4

    goto :goto_1

    :pswitch_2
    div-int/lit8 v2, p1, 0x2

    goto :goto_1

    :pswitch_3
    mul-int/lit8 v3, p1, 0x3

    div-int/lit8 v2, v3, 0x4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected getHorizontalGravity(Z)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHandleType:I

    if-ne v1, v0, :cond_0

    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method

.method protected getHorizontalOffset()I
    .locals 4

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHorizontalGravity:I

    sparse-switch v3, :sswitch_data_0

    :sswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    :goto_0
    return v1

    :sswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    sub-int v1, v2, v0

    goto :goto_0

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

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-wrap0(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    return-void
.end method

.method public initPreviousOffset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    return-void
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v1

    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int v3, v1, v0

    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method onHandleMoved()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v13

    if-nez v13, :cond_0

    const-string/jumbo v14, "MultiSelectPopupWindow"

    const-string/jumbo v15, "getTextFormultiSelection() text is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    return v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Landroid/widget/MultiSelectPopupWindow;->-wrap5(Landroid/widget/MultiSelectPopupWindow;Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :cond_1
    :goto_0
    const/4 v14, 0x1

    return v14

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mInitPositionY:I

    const/4 v14, 0x2

    new-array v8, v14, [I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v14, 0x0

    aget v14, v8, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStartRange:I

    const/4 v14, 0x1

    aget v14, v8, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mEndRange:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v14}, Landroid/widget/MultiSelectPopupWindow;->-wrap0(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    invoke-virtual {v6}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionY()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->magnifyHandleView()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v14

    const/4 v15, 0x1

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mStartRange:I

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mEndRange:I

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v15, v15

    sub-float v7, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    int-to-float v14, v14

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v15, v15

    sub-float v1, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    cmpg-float v14, v7, v14

    if-gez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    int-to-float v14, v14

    add-float/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    sub-float v14, v9, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v15

    int-to-float v15, v15

    add-float v3, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    sub-float v14, v10, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    add-float v4, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    :cond_3
    cmpg-float v14, v1, v7

    if-gez v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_2

    :pswitch_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->resetHandleView()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v14

    const/4 v15, 0x0

    iput-boolean v15, v14, Landroid/widget/TextView;->mIsTouchDown:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->refreshForSwitchingCursor()Z

    invoke-static {v13}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v13}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v11

    if-le v12, v11, :cond_1

    check-cast v13, Landroid/text/Spannable;

    invoke-static {v13, v11, v12}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    :pswitch_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsResetAnimating:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->resetHandleView()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 6

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->updateSelection(I)V

    :cond_2
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    add-float/2addr v4, v0

    iget v5, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalOffset()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mBaselineY:I

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_1
.end method

.method public recalHandleView()V
    .locals 3

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v1, v0

    const v2, -0x41666666    # -0.3f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchOffsetY:F

    int-to-float v1, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIdealVerticalOffset:F

    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 12

    const/4 v8, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->-wrap0(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V

    iput v11, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPreviousOffset:I

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, v9, v9}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    new-array v6, v8, [I

    new-array v5, v8, [I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    aget v8, v6, v9

    add-int v3, v7, v8

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    aget v8, v6, v10

    add-int v4, v7, v8

    aget v7, v5, v9

    aget v8, v6, v9

    sub-int v1, v7, v8

    aget v7, v5, v10

    aget v8, v6, v10

    sub-int v2, v7, v8

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_1

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    :cond_1
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v11, v11}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v10}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :try_start_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    const-string/jumbo v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHotspotX:I

    invoke-virtual {p0, v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mHorizontalGravity:I

    return-void

    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getCurrentCursorOffset()I

    move-result v7

    invoke-virtual {p0, v7, p3, p4}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    if-nez p3, :cond_0

    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    if-eqz v7, :cond_6

    :cond_0
    iget-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mIsDragging:Z

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    if-ne p1, v7, :cond_1

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    if-eq p2, v7, :cond_2

    :cond_1
    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetX:F

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iget v8, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    sub-int v8, p2, v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mTouchToWindowOffsetY:F

    iput p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentX:I

    iput p2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mLastParentY:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onHandleMoved()V

    :cond_3
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_9

    xor-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    new-array v6, v7, [I

    const/4 v7, 0x2

    new-array v5, v7, [I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->getLocationInWindow([I)V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x0

    aget v8, v6, v8

    sub-int v1, v7, v8

    const/4 v7, 0x1

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    sub-int v2, v7, v8

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionX:I

    add-int v3, p1, v7

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionY:I

    add-int v4, p2, v7

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_4

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    :cond_4
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v3, v4, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_5
    :goto_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mPositionHasChanged:Z

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    add-int/2addr v3, v1

    add-int/2addr v4, v2

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_0

    :cond_8
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :try_start_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    const-string/jumbo v7, "MultiSelectPopupWindow"

    const-string/jumbo v8, "showAtLocation occur BadTokenException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
