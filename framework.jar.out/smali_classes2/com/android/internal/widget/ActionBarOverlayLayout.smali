.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/android/internal/widget/DecorContentParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$1;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$2;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$3;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$4;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$5;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/internal/widget/ActionBarOverlayLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarHeight:I

.field private mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field private mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private final mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mContent:Landroid/view/View;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

.field private mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field private mFlingEstimator:Landroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field private final mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/ActionBarOverlayLayout;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/ActionBarOverlayLayout;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$5;

    const-string/jumbo v1, "actionBarHideOffset"

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$5;-><init>(Ljava/lang/String;)V

    .line 146
    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_HIDE_OFFSET:Landroid/util/Property;

    .line 161
    const v0, 0x10102eb

    .line 162
    const v1, 0x1010059

    .line 160
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 84
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 91
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 106
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    .line 105
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 120
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    .line 84
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I

    .line 91
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$1;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 106
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$2;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    .line 105
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBottomAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 120
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$3;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout$4;-><init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 651
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 649
    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "changed":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 291
    .local v1, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 293
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 295
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 296
    const/4 v0, 0x1

    .line 297
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 299
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 300
    const/4 v0, 0x1

    .line 301
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 303
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 304
    const/4 v0, 0x1

    .line 305
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 307
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 581
    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 582
    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 583
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 584
    check-cast p1, Landroid/widget/Toolbar;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 586
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private haltActionBarHideOffsetAnimations()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 625
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 626
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarBottomAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 623
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v4, Lcom/android/internal/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 178
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 183
    const/16 v4, 0x13

    .line 182
    if-ge v1, v4, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 185
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    .line 175
    return-void

    :cond_0
    move v1, v3

    .line 179
    goto :goto_0

    :cond_1
    move v2, v3

    .line 182
    goto :goto_1
.end method

.method private postAddActionBarHideOffset()V
    .locals 4

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 641
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 639
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 4

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 634
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 646
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 644
    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 10
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    float-to-int v4, p2

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 656
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v9

    .line 657
    .local v9, "finalY":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    if-le v9, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 755
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 359
    instance-of v0, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 809
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->dismissPopupMenus()V

    .line 807
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 500
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 501
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-eqz v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getBottom()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 504
    .local v0, "top":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v2

    .line 505
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v0

    .line 504
    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 506
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 503
    .end local v0    # "top":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "top":I
    goto :goto_1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 344
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 354
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 349
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 675
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 725
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 731
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 681
    sparse-switch p1, :sswitch_data_0

    .line 679
    :goto_0
    return-void

    .line 683
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initProgress()V

    goto :goto_0

    .line 686
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    .line 689
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 681
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 767
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 761
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 10
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v9

    .line 315
    .local v9, "vis":I
    and-int/lit16 v0, v9, 0x100

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .line 316
    .local v8, "stable":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 319
    .local v2, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v7

    .line 320
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    const/4 v7, 0x1

    .line 328
    .local v7, "changed":Z
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 331
    .end local v7    # "changed":Z
    :cond_1
    if-eqz v7, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 339
    :cond_2
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object v0

    .line 315
    .end local v2    # "systemInsets":Landroid/graphics/Rect;
    .end local v8    # "stable":Z
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "stable":Z
    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 249
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 191
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 189
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v3

    .line 471
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v8

    .line 472
    .local v8, "parentLeft":I
    sub-int v12, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v13

    sub-int v9, v12, v13

    .line 474
    .local v9, "parentRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v10

    .line 475
    .local v10, "parentTop":I
    sub-int v12, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v13

    sub-int v7, v12, v13

    .line 477
    .local v7, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 478
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 479
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 482
    .local v6, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 483
    .local v11, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 485
    .local v4, "height":I
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int v1, v8, v12

    .line 487
    .local v1, "childLeft":I
    iget-object v12, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-ne v0, v12, :cond_1

    .line 488
    sub-int v12, v7, v4

    iget v13, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v12, v13

    .line 493
    .local v2, "childTop":I
    :goto_1
    add-int v12, v1, v11

    add-int v13, v2, v4

    invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 477
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 490
    .restart local v1    # "childLeft":I
    .restart local v4    # "height":I
    .restart local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .restart local v11    # "width":I
    :cond_1
    iget v12, v6, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int v2, v10, v12

    .restart local v2    # "childTop":I
    goto :goto_1

    .line 468
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v4    # "height":I
    .end local v6    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v11    # "width":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 366
    const/4 v11, 0x0

    .line 367
    .local v11, "maxHeight":I
    const/4 v12, 0x0

    .line 368
    .local v12, "maxWidth":I
    const/4 v9, 0x0

    .line 370
    .local v9, "childState":I
    const/4 v15, 0x0

    .line 371
    .local v15, "topInset":I
    const/4 v8, 0x0

    .line 373
    .local v8, "bottomInset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 376
    .local v10, "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 375
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 377
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 386
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 385
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 387
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 392
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v16

    .line 393
    .local v16, "vis":I
    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    const/4 v13, 0x1

    .line 395
    .local v13, "stable":Z
    :goto_0
    if-eqz v13, :cond_6

    .line 398
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 399
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v14

    .line 401
    .local v14, "tabs":Landroid/view/View;
    if-eqz v14, :cond_1

    .line 403
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v15, v1

    .line 412
    .end local v14    # "tabs":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_2

    .line 415
    if-eqz v13, :cond_7

    .line 416
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 427
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 429
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v1, :cond_3

    if-eqz v13, :cond_8

    .line 433
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 436
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    new-instance v2, Landroid/view/WindowInsets;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 446
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    check-cast v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 449
    .restart local v10    # "lp":Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 448
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    .line 450
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v9, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 462
    move/from16 v0, p1

    invoke-static {v12, v0, v9}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 464
    shl-int/lit8 v2, v9, 0x10

    .line 463
    move/from16 v0, p2

    invoke-static {v11, v0, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 363
    return-void

    .line 393
    .end local v13    # "stable":Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 406
    .restart local v13    # "stable":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_1

    .line 418
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v8

    goto/16 :goto_2

    .line 430
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v15

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v8

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 557
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 560
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    .line 565
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 566
    return v1

    .line 558
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 563
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 536
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 537
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 535
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 525
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 527
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 524
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    const/4 v1, 0x0

    .line 517
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    return v1

    .line 520
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 542
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 543
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-eqz v0, :cond_2

    .line 550
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 541
    :cond_1
    return-void

    .line 544
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 545
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_0

    .line 547
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5
    .param p1, "visible"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 259
    iget v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int v1, v4, p1

    .line 260
    .local v1, "diff":I
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 261
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 262
    .local v0, "barVisible":Z
    :goto_0
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 263
    .local v2, "stable":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v4, :cond_0

    .line 267
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_4

    :goto_2
    invoke-interface {v4, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 268
    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    .line 269
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    .line 271
    :cond_0
    :goto_3
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_1

    .line 272
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 256
    :cond_1
    return-void

    .line 261
    .end local v0    # "barVisible":Z
    .end local v2    # "stable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "barVisible":Z
    goto :goto_0

    .line 262
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "stable":Z
    goto :goto_1

    .line 267
    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    .line 268
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    goto :goto_3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 281
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 279
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 571
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mContent:Landroid/view/View;

    .line 573
    const v0, 0x1020477

    .line 572
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    .line 574
    const v0, 0x1020478

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    .line 576
    const v0, 0x102047a

    .line 575
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    .line 569
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 803
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 801
    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 795
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 5
    .param p1, "offset"    # I

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 612
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    .line 613
    .local v2, "topHeight":I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 614
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarTop:Lcom/android/internal/widget/ActionBarContainer;

    neg-int v4, p1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 615
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 617
    int-to-float v3, p1

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 618
    .local v1, "fOffset":F
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 619
    .local v0, "bOffset":I
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 610
    .end local v0    # "bOffset":I
    .end local v1    # "fOffset":F
    :cond_0
    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 200
    iget v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v1, :cond_0

    .line 201
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 202
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    .line 194
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 224
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 593
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 594
    if-nez p1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->stopNestedScroll()V

    .line 596
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 591
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    .line 735
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 743
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 741
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 749
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    .line 747
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 791
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 789
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 785
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->setMenuPrepared()V

    .line 783
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 3
    .param p1, "overlayMode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 217
    const/16 v2, 0x13

    .line 216
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 215
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 208
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    .line 240
    const/16 v1, 0x500

    .line 238
    if-ne v0, v1, :cond_0

    .line 241
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setDisabledSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setUiOptions(I)V
    .locals 5
    .param p1, "uiOptions"    # I

    .prologue
    const/4 v2, 0x0

    .line 696
    const/4 v1, 0x0

    .line 698
    .local v1, "splitActionBar":Z
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 699
    .local v2, "splitWhenNarrow":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 701
    const v4, 0x1120004

    .line 700
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 703
    .end local v1    # "splitActionBar":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 704
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 705
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3}, Lcom/android/internal/widget/DecorToolbar;->canSplit()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 706
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setSplitView(Landroid/view/ViewGroup;)V

    .line 707
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setSplitToolbar(Z)V

    .line 708
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v2}, Lcom/android/internal/widget/DecorToolbar;->setSplitWhenNarrow(Z)V

    .line 711
    const v3, 0x1020479

    .line 710
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .line 712
    .local v0, "cab":Lcom/android/internal/widget/ActionBarContextView;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mActionBarBottom:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Landroid/view/ViewGroup;)V

    .line 713
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setSplitToolbar(Z)V

    .line 714
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 695
    .end local v0    # "cab":Lcom/android/internal/widget/ActionBarContextView;
    :cond_2
    :goto_0
    return-void

    .line 715
    :cond_3
    if-eqz v1, :cond_2

    .line 716
    const-string/jumbo v3, "ActionBarOverlayLayout"

    const-string/jumbo v4, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 663
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 661
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 669
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 667
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 773
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
