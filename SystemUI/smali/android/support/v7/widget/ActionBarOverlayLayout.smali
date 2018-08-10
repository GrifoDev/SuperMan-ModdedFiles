.class public Landroid/support/v7/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Landroid/support/v7/widget/DecorContentParent;
.implements Landroid/support/v4/view/NestedScrollingParent;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionBarOverlayLayout$1;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$2;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$3;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Landroid/support/v7/widget/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastBaseInnerInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x1010059

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    const/16 v0, 0x258

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$1;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$2;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$3;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    if-eqz p3, :cond_0

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
    .locals 3

    instance-of v0, p1, Landroid/support/v7/widget/DecorToolbar;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/DecorToolbar;

    return-object p1

    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->dismissPopupMenus()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v10

    and-int/lit16 v0, v10, 0x100

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :goto_0
    move-object v9, p1

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->requestLayout()V

    :cond_2
    return v3

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public hideOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public isInOverlayMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    sub-int v12, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    sub-int v12, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v12, v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    iget v12, v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    :goto_0
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v15, v1

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_4

    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    return-void

    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return v1

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v3, p1

    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    and-int/lit8 v3, p1, 0x4

    if-nez v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    and-int/lit16 v3, p1, 0x100

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    xor-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    if-nez v0, :cond_1

    xor-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_6

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    :cond_2
    :goto_2
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_2
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    :cond_0
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    return-void
.end method

.method public setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    iget v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->setMenuPrepared()V

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
