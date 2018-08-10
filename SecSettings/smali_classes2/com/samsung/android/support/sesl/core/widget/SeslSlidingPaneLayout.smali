.class public Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SeslSlidingPaneLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$AccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;,
        Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;
    }
.end annotation


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field final mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

.field private mFirstLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mPreservedOpenState:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, -0x33333334

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mOverhangSize:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setWillNotDraw(Z)V

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$AccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setImportantForAccessibility(I)V

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DragHelperCallback;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;)V

    invoke-static {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper$Callback;)Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setMinVelocity(F)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-nez v5, :cond_4

    :goto_0
    return-void

    :cond_1
    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    ushr-int/lit8 v0, v5, 0x18

    int-to-float v5, v0

    mul-float/2addr v5, p2

    float-to-int v3, v5

    shl-int/lit8 v5, v3, 0x18

    const v6, 0xffffff

    and-int/2addr v6, p3

    or-int v1, v5, v6

    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_2

    :goto_1
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v1, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v5

    if-ne v5, v8, :cond_3

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez v5, :cond_5

    :goto_3
    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;Landroid/view/View;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    return v2

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method private parallaxOtherViews(F)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-boolean v9, v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_3

    return-void

    :cond_1
    if-nez v4, :cond_2

    iget v9, v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_2
    if-gtz v9, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget v9, v7, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v8, v9, :cond_4

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v6, v9

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, p1

    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    sub-int v2, v6, v5

    if-nez v4, :cond_5

    :goto_3
    invoke-virtual {v8, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-nez v1, :cond_6

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    neg-int v2, v2

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float v9, v11, v9

    :goto_5
    iget v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCoveredFadeColor:I

    invoke-direct {p0, v8, v9, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_4

    :cond_7
    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v9, v11

    goto :goto_5
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->abort()V

    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    if-nez v0, :cond_0

    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->sendAccessibilityEvent(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v8

    if-gt v8, v9, :cond_2

    :goto_1
    if-nez v5, :cond_3

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v2, v3, v6

    :goto_2
    invoke-virtual {v4, v2, v7, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    add-int v3, v2, v6

    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v1

    :cond_1
    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCoveredFadeColor:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    return v0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    return v1

    :cond_2
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method isLayoutRtlSupport()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getLayoutDirection()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isOpen()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-lt v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_2

    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v9, :cond_4

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v9, v5, v10, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    if-nez v9, :cond_6

    :goto_2
    const/4 v9, 0x3

    if-ne v0, v9, :cond_7

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    const/4 v9, 0x0

    return v9

    :cond_6
    if-nez v0, :cond_1

    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    if-eq v0, v9, :cond_5

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_8
    :goto_3
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const/4 v9, 0x1

    :goto_4
    return v9

    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    iput v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v11, v7

    float-to-int v12, v8

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getTouchSlop()I

    move-result v6

    int-to-float v9, v6

    cmpl-float v9, v1, v9

    if-lez v9, :cond_8

    cmpl-float v9, v2, v1

    if-lez v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->cancel()V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mIsUnableToDrag:Z

    const/4 v9, 0x0

    return v9

    :cond_a
    if-nez v4, :cond_9

    const/4 v9, 0x0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_0
    sub-int v23, p4, p2

    if-nez v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v19

    :goto_1
    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v18

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v6

    move/from16 v24, v19

    move/from16 v16, v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    :goto_3
    const/4 v11, 0x0

    :goto_4
    if-lt v11, v6, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    move/from16 v25, v0

    if-nez v25, :cond_e

    :goto_5
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v19

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v18

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-nez v25, :cond_5

    :cond_4
    const/16 v25, 0x0

    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    const/16 v17, 0x0

    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v25, v0

    if-nez v25, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-nez v25, :cond_c

    :cond_7
    move/from16 v24, v16

    :goto_7
    if-nez v12, :cond_d

    sub-int v7, v24, v17

    add-int v8, v7, v10

    :goto_8
    move/from16 v9, v20

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v5, v20, v25

    move/from16 v0, v20

    invoke-virtual {v4, v7, v0, v8, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v25

    add-int v16, v16, v25

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_9
    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    iget v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v15, v25, v26

    sub-int v25, v23, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mOverhangSize:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v16

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    sub-int v25, v25, v24

    sub-int v22, v25, v15

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    if-nez v12, :cond_a

    iget v14, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_9
    add-int v25, v24, v14

    add-int v25, v25, v22

    div-int/lit8 v26, v10, 0x2

    add-int v25, v25, v26

    sub-int v26, v23, v18

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_b

    const/16 v25, 0x0

    :goto_a
    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v25, v21, v14

    add-int v24, v24, v25

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    goto/16 :goto_7

    :cond_a
    iget v14, v13, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_9

    :cond_b
    const/16 v25, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v25, v26, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v24, v16

    goto/16 :goto_7

    :cond_d
    sub-int v25, v23, v24

    add-int v8, v25, v17

    sub-int v7, v8, v10

    goto/16 :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move/from16 v25, v0

    if-nez v25, :cond_10

    const/4 v11, 0x0

    :goto_b
    if-lt v11, v6, :cond_12

    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    move/from16 v25, v0

    if-nez v25, :cond_11

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->parallaxOtherViews(F)V

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    move/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .locals 31

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v27

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    if-eqz v12, :cond_6

    :cond_0
    :goto_0
    const/16 v16, 0x0

    const/16 v18, -0x1

    sparse-switch v12, :sswitch_data_0

    :goto_1
    const/16 v23, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v27, v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v24, v29, v30

    move/from16 v26, v24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v6

    const/16 v29, 0x2

    move/from16 v0, v29

    if-gt v6, v0, :cond_8

    :goto_2
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v15, 0x0

    :goto_3
    if-lt v15, v6, :cond_9

    if-eqz v4, :cond_15

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mOverhangSize:I

    move/from16 v29, v0

    sub-int v11, v24, v29

    const/4 v15, 0x0

    :goto_5
    if-lt v15, v6, :cond_16

    :cond_1
    move/from16 v20, v27

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    add-int v19, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getViewDragState()I

    move-result v29

    if-nez v29, :cond_25

    :cond_2
    :goto_6
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-nez v29, :cond_4

    new-instance v29, Ljava/lang/IllegalStateException;

    const-string/jumbo v30, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_4
    const/high16 v29, -0x80000000

    move/from16 v0, v25

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    if-nez v25, :cond_0

    const/high16 v25, 0x40000000    # 2.0f

    const/16 v27, 0x12c

    goto :goto_0

    :cond_5
    const/high16 v25, 0x40000000    # 2.0f

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isInEditMode()Z

    move-result v29

    if-nez v29, :cond_7

    new-instance v29, Ljava/lang/IllegalStateException;

    const-string/jumbo v30, "Height must not be UNSPECIFIED"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_7
    if-nez v12, :cond_0

    const/high16 v12, -0x80000000

    const/16 v13, 0x12c

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    move/from16 v16, v18

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v13, v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v18, v29, v30

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v29, "SeslSlidingPaneLayout"

    const-string/jumbo v30, "onMeasure: More than two child views are not supported."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_d

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_a

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    add-float v23, v23, v29

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_c

    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_7
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_8
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v29, -0x80000000

    move/from16 v0, v29

    if-eq v12, v0, :cond_12

    :cond_b
    :goto_9
    sub-int v26, v26, v9

    if-ltz v26, :cond_13

    const/16 v29, 0x0

    :goto_a
    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v4, v4, v29

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v29, v0

    if-nez v29, :cond_14

    :cond_c
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    goto :goto_b

    :cond_e
    sub-int v29, v24, v14

    const/high16 v30, -0x80000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_7

    :cond_f
    sub-int v29, v24, v14

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_7

    :cond_10
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_8

    :cond_11
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_8

    :cond_12
    move/from16 v0, v16

    if-le v7, v0, :cond_b

    move/from16 v0, v18

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    goto :goto_9

    :cond_13
    const/16 v29, 0x1

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto :goto_b

    :cond_15
    const/16 v29, 0x0

    cmpl-float v29, v23, v29

    if-lez v29, :cond_1

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_19

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    :cond_17
    const/16 v22, 0x0

    :goto_c
    if-nez v22, :cond_1b

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    :goto_d
    if-nez v4, :cond_1c

    :cond_18
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_19

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-eqz v29, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_e
    if-nez v4, :cond_24

    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    div-float v29, v29, v23

    move/from16 v0, v29

    float-to-int v3, v0

    add-int v29, v20, v3

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    :cond_19
    :goto_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_17

    const/16 v22, 0x1

    goto :goto_c

    :cond_1b
    const/16 v20, 0x0

    goto :goto_d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v5, v0, :cond_18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    if-gez v29, :cond_19

    move/from16 v0, v20

    if-le v0, v11, :cond_1d

    :goto_10
    if-nez v22, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_11
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v29

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto :goto_f

    :cond_1d
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_19

    goto :goto_10

    :cond_1e
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_20

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_11

    :cond_1f
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_11

    :cond_20
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_11

    :cond_21
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_22

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_23

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_e

    :cond_22
    const/high16 v29, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_e

    :cond_23
    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto/16 :goto_e

    :cond_24
    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v14, v29, v30

    sub-int v21, v24, v14

    const/high16 v29, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_f

    :cond_25
    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->abort()V

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method onPanelDragged(I)V
    .locals 10

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v1, :cond_1

    move v4, p1

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    :goto_1
    if-nez v1, :cond_3

    iget v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    :goto_2
    add-int v6, v5, v3

    sub-int v7, v4, v6

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    if-nez v7, :cond_4

    :goto_3
    iget-boolean v7, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-nez v7, :cond_5

    :goto_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v7

    sub-int/2addr v7, p1

    sub-int v4, v7, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v5

    goto :goto_1

    :cond_3
    iget v3, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_4
    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->parallaxOtherViews(F)V

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideOffset:F

    iget v9, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane()Z

    :goto_0
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->openPane()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$SavedState;->isOpen:Z

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isOpen()Z

    move-result v2

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mFirstLayout:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v4, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    iput v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionX:F

    sub-float v0, v4, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mInitialMotionY:F

    sub-float v1, v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->getTouchSlop()I

    move-result v2

    mul-float v6, v0, v0

    mul-float v7, v1, v1

    add-float/2addr v6, v7

    mul-int v7, v2, v2

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0, v6, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->closePane(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq p1, v1, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method setAllChildrenVisible()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public setPanelSlideListener(Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mPanelSlideListener:Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mParallaxBy:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 9

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mCanSlide:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    iget v6, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v3, v5, v6

    int-to-float v5, v3

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    float-to-int v4, v5

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mDragHelper:Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_2

    return v8

    :cond_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v5

    iget v6, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v3, v5, v6

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v3

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->mSlideRange:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->setAllChildrenVisible()V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->postInvalidateOnAnimation()V

    const/4 v5, 0x1

    return v5
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v15

    :goto_0
    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v10, v19, v20

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingBottom()I

    move-result v20

    sub-int v3, v19, v20

    if-nez p1, :cond_4

    :cond_0
    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    :goto_2
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildCount()I

    move-result v5

    :goto_3
    if-lt v11, v5, :cond_5

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingRight()I

    move-result v20

    sub-int v15, v19, v20

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/core/widget/SeslSlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    if-nez v12, :cond_8

    move/from16 v19, v15

    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-nez v12, :cond_9

    move/from16 v19, v10

    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v7, v13, :cond_a

    :cond_6
    const/16 v18, 0x0

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_8
    move/from16 v19, v10

    goto :goto_4

    :cond_9
    move/from16 v19, v15

    goto :goto_5

    :cond_a
    move/from16 v0, v16

    if-lt v9, v0, :cond_6

    if-gt v8, v14, :cond_6

    if-gt v6, v2, :cond_6

    const/16 v18, 0x4

    goto :goto_6
.end method
