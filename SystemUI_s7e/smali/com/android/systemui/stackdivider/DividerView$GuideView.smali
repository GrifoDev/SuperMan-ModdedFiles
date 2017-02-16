.class Lcom/android/systemui/stackdivider/DividerView$GuideView;
.super Ljava/lang/Object;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GuideView"
.end annotation


# instance fields
.field private mBackground:Landroid/view/View;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mDefaultBackground:I

.field private mDim:Landroid/widget/ImageView;

.field private mDisplayOrientation:I

.field private mDraggingBackground:I

.field private mDuration:I

.field private mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

.field private mFocusedRect:Landroid/graphics/Rect;

.field private mFocusedStackId:I

.field private mGradient:Landroid/graphics/drawable/GradientDrawable;

.field private mGuide:Landroid/widget/ImageView;

.field private mGuideViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

.field private mRect:Landroid/widget/ImageView;

.field private mShowing:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerView$GuideView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDefaultBackground:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerView$GuideView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDraggingBackground:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/FocusedFrameView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/DividerHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerView$GuideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f13011d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f13011c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f13011b

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDefaultBackground:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDraggingBackground:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDuration:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->generateLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuideViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuideViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    return-void
.end method

.method private generateLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string/jumbo v1, "MultiWindow GuideView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x901

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method private setGradient()V
    .locals 3

    const/4 v2, 0x3

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGradient:Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDefaultBackground:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    return-void
.end method

.method public dismiss(Landroid/graphics/Point;)V
    .locals 12

    const-wide/16 v10, 0x64

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    if-ne v5, v8, :cond_1

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    if-ne v5, v8, :cond_3

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_2

    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v3, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$3;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_2
    iget v5, p1, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_4

    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_4
    iget v5, p1, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    return v0
.end method

.method public setDimlayer(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setDividerView(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mHandle:Lcom/android/systemui/stackdivider/DividerHandleView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mBackground:Landroid/view/View;

    return-void
.end method

.method public setFocusedZone(Lcom/android/systemui/stackdivider/FocusedFrameView;ILandroid/graphics/Rect;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedFrameView:Lcom/android/systemui/stackdivider/FocusedFrameView;

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDisplayOrientation:I

    if-ne v5, v8, :cond_2

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    if-nez v5, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDuration:I

    int-to-long v6, v5

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$1;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/systemui/stackdivider/DividerView$GuideView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView$2;-><init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->setGradient()V

    iput-boolean v8, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mShowing:Z

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mGuide:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mRect:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mDim:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_2
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedStackId:I

    if-ne v5, v9, :cond_3

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    :cond_3
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView;->mFocusedRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method
