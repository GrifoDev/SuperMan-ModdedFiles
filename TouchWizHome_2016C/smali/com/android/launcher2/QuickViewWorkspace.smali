.class public Lcom/android/launcher2/QuickViewWorkspace;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;,
        Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;,
        Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;

.field private static final ANIMATED_SCROLL_DURATION:I = 0x190

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field private static final PAGE_ADD_ANIMATION_TIME:I = 0x1f4

.field private static final QV_PAGE_SNAP_ANIMATION_DURATION:I = 0x190

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static final TAG:Ljava/lang/String; = "QuickViewWorkspace"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I

.field public static mShowGridState:Z

.field private static sHitRect:Landroid/graphics/Rect;


# instance fields
.field public final PAGE_SNAP_ANIMATION_DURATION:I

.field private additionalCount:I

.field private isPageAddAnimating:Z

.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragState:I

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private final mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

.field private mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconAutoAlignLayout:Landroid/view/View;

.field private mMaxDeltaX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnOffSwitchHideAnimator:Landroid/animation/Animator;

.field private mOnOffSwitchShowAnimator:Landroid/animation/Animator;

.field private mOrientation:I

.field private mPageIndicatorIndex:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mScrollCheck:Z

.field private mScrollDelay:I

.field private mScrollHalfWidth:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

.field private mScrollState:I

.field private mScrollWidth:I

.field mScroller:Landroid/widget/Scroller;

.field private final mSetHomeListener:Landroid/view/View$OnClickListener;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTitleBarHideAnimator:Landroid/animation/Animator;

.field private mTitleBarShowAnimator:Landroid/animation/Animator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

.field private mZeroPageOnOffSwitch:Landroid/widget/Switch;

.field private mZeropageDownloadDialog:Landroid/app/AlertDialog;

.field private vDeleteDropLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x680000

    const/high16 v2, -0xe00000

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const-wide/16 v8, 0x14d

    const v6, 0x7f0b0019

    const-wide/16 v4, 0xfa

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->PAGE_SNAP_ANIMATION_DURATION:I

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    new-instance v1, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    iput-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    iput-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->isPageAddAnimating:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageIndicatorIndex:I

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->additionalCount:I

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/launcher2/QuickViewWorkspace$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/QuickViewWorkspace$5;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaximumVelocity:I

    const v1, 0x7f05002d

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$1;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v1, 0x7f05002b

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$2;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v1, 0x7f05003b

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchShowAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const v1, 0x7f05003a

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchHideAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const v1, 0x7f050025

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$3;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v1, 0x7f050026

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$4;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageBgImage()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/QuickViewWorkspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/launcher2/QuickViewWorkspace;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewWorkspace;Lcom/android/launcher2/ZeroPageListItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->showZeroPageDownloadDialog(Lcom/android/launcher2/ZeroPageListItem;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/QuickViewWorkspace;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->updateHomeZeroPageDualCheck(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/launcher2/QuickViewWorkspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->isPageAddAnimating:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/QuickViewWorkspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    return v0
.end method

.method private addScreen()V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    if-gez v7, :cond_0

    const/4 v7, 0x0

    :cond_0
    invoke-direct {p0, v7, v9}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v8

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewDragBar;->isBulgeAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/launcher2/QuickViewDragBar;->setIsNeedShow(Z)V

    :goto_0
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->isPageAddAnimating:Z

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$10;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$10;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    invoke-virtual {p0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    invoke-direct {p0, v1, v9, v6}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    :cond_1
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f080075

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOME"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->addPage()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1
.end method

.method private addScreen(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->isPageAddAnimating:Z

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/QuickViewWorkspace$12;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickViewWorkspace$12;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v1, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenGridChangeHelper()Lcom/android/launcher2/HomeScreenGridChangeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->addPage(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    return-void
.end method

.method private enableWorkspaceScreensCache()V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private endDrag(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->onDrop()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewDragBar;->setIsBulgeAnimating(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    return-void
.end method

.method private isCanLongClick()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-lez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeleteDropTarget(II)Z
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isTitleBarVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/QuickViewDragBar;->checkOver(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isHome(Landroid/view/View;)Z
    .locals 4

    const/4 v2, 0x0

    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    instance-of v3, v0, Landroid/widget/CheckBox;

    if-nez v3, :cond_0

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isTitleBarVisible()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private makeScreen(IZ)Landroid/view/View;
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_4

    const/4 v6, 0x1

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x31

    invoke-direct {v7, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;

    invoke-direct {v0, v3}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setPadding(IIII)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v10

    if-ne p1, v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080036

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v4, 0x0

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v10, :cond_6

    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d002e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080036

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0800c0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez p2, :cond_8

    if-nez v6, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_4
    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const v10, 0x7f0900f6

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v2, v11, v12}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v10, 0x7f030058

    const/4 v11, 0x0

    invoke-virtual {v5, v10, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v11, 0x7f100115

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstCheckImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v11, 0x7f10011a

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondCheckImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v11, 0x7f100116

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v11, 0x7f10011b

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v11, 0x7f100114

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v11, 0x7f100119

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setupHomeZeroPageDualCheckBox()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setupHomeZeroPageDual()V

    :goto_5
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_6
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, p1, v10}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v6, :cond_3

    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setHapticFeedbackEnabled(Z)V

    :cond_3
    return-object v9

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_6
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    goto/16 :goto_2

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080036

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    new-instance v11, Lcom/android/launcher2/QuickViewWorkspace$6;

    invoke-direct {v11, p0, v9}, Lcom/android/launcher2/QuickViewWorkspace$6;-><init>(Lcom/android/launcher2/QuickViewWorkspace;Landroid/widget/FrameLayout;)V

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    new-instance v11, Lcom/android/launcher2/QuickViewWorkspace$7;

    invoke-direct {v11, p0}, Lcom/android/launcher2/QuickViewWorkspace$7;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_9
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v10, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParamsBgImage()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageBgImage()V

    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_a
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto/16 :goto_7
.end method

.method private onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 3

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->access$800(Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    :cond_1
    return-void
.end method

.method private requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "requestAccessibilityFocus"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAccessibilityFocusOnAndroidView IllegalAccessException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAccessibilityFocusOnAndroidView NoSuchMethodException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    const-string v2, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAccessibilityFocusOnAndroidView IllegalArgumentException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "QuickViewWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAccessibilityFocusOnAndroidView InvocationTargetException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private scroll(IIZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v1

    if-gez p1, :cond_3

    if-lez v1, :cond_2

    add-int v2, v1, p1

    if-gez v2, :cond_1

    neg-int v2, v1

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0

    :cond_3
    if-lez p1, :cond_0

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    sub-int v0, v2, v1

    if-lez v0, :cond_5

    if-le v0, p1, :cond_4

    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method private setLayoutParamsBgImage()V
    .locals 7

    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x7f0902a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0902a1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v3, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_0
    const v3, 0x7f090102

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    sget-object v3, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0
.end method

.method private setupHomeZeroPageDualCheckBox()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v3, 0x7f100112

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    const v3, 0x7f100117

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$8;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$8;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$9;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$9;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showAndHideTitleBar()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isCanLongClick()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->isBulgeAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewDragBar;->setIsNeedHide(Z)V

    :cond_4
    :goto_1
    sget-boolean v0, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->isBulgeAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewDragBar;->setIsNeedShow(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v0, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isCanLongClick()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->isBulgeAnimating()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewDragBar;->setIsNeedHide(Z)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    goto/16 :goto_0

    :cond_c
    sget-boolean v0, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->isBulgeAnimating()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewDragBar;->setIsNeedShow(Z)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    goto/16 :goto_0
.end method

.method private showZeroPageDownloadDialog(Lcom/android/launcher2/ZeroPageListItem;Z)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ea

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/QuickViewWorkspace$14;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher2/QuickViewWorkspace$14;-><init>(Lcom/android/launcher2/QuickViewWorkspace;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/QuickViewWorkspace$15;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher2/QuickViewWorkspace$15;-><init>(Lcom/android/launcher2/QuickViewWorkspace;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/launcher2/QuickViewWorkspace$16;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/QuickViewWorkspace$16;-><init>(Lcom/android/launcher2/QuickViewWorkspace;Z)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/launcher2/QuickViewWorkspace$17;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace$17;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "com.mobilesrepublic.sohu.launcher"

    goto :goto_0
.end method

.method private updateHomeZeroPageDualCheck(I)V
    .locals 5

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v2, 0x3eb33333    # 0.35f

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstCheckImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondCheckImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstCheckImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondCheckImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPosition(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstCheckImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondCheckImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method public cancelDrag()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    return-void
.end method

.method public changeColor(Landroid/content/Context;I)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020038

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02003a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    check-cast v7, Landroid/animation/ObjectAnimator;

    new-array v8, v11, [F

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0006

    invoke-virtual {v9, v10, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    aput v9, v8, v12

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_0
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v12}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lt v7, v11, :cond_1

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v7, v2, Landroid/widget/CompoundButton;

    if-eqz v7, :cond_1

    instance-of v7, v2, Landroid/widget/CheckBox;

    if-nez v7, :cond_1

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02003b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    check-cast v7, Landroid/animation/ObjectAnimator;

    new-array v8, v11, [F

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0007

    invoke-virtual {v9, v10, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    aput v9, v8, v12

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public clearAccessibilityFocusForHomeButton()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v2, v5, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public close(Z)V
    .locals 7

    const v2, 0x7f080037

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->getDeleteBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->getDeleteBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-nez v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->setExtraClear()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorTop()I

    move-result v1

    const v3, 0x7f090113

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;IIIZ)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;IIIZ)V

    goto :goto_0
.end method

.method public closeGrid(Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->closeGrid(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public closeZeroPageDownloadDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollY()I

    move-result v3

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollY(I)V

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v7

    sub-int v1, v7, v2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method disableWorkspaceScreensCache()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getHeight()I

    move-result v18

    if-eqz v24, :cond_0

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v12, :cond_6

    :cond_2
    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v12, :cond_8

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v11

    const/4 v6, 0x1

    if-lt v11, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v12, :cond_5

    :cond_4
    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_d

    const/16 v21, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setOpenStartRect(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v0, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v19

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v22

    if-eqz v22, :cond_a

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/HomeScreenOptionMenu;->startVisibleAnimation(ZI)V

    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v26, v0

    sub-long v14, v8, v26

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_20

    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v0, v12, :cond_18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eq v4, v6, :cond_c

    add-int/lit8 v6, v13, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_b

    add-int/lit8 v6, v13, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_c

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    const/4 v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v22

    if-eqz v22, :cond_e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/HomeScreenOptionMenu;->startVisibleAnimation(ZI)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v6, v8, v9, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setCloseEndRect(I)V

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v0, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v19

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xb

    if-ne v6, v8, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    const/16 v6, 0xc

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setOpenStartRect(I)V

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v0, v12, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v19

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xe

    if-ne v6, v8, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    const/16 v6, 0xf

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setOpenStartRect(I)V

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v12, :cond_17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v19

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v19

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v6, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_19
    :goto_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDropState:I

    const/16 v8, 0x11

    if-ne v6, v8, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDeleteStartTime:J

    const/16 v6, 0x12

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDropState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDeleteStartTime:J

    move-wide/from16 v26, v0

    sub-long v16, v8, v26

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDropState:I

    const/16 v8, 0x12

    if-ne v6, v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeleteView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_1b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDropState:I

    const/16 v8, 0x10

    if-eq v6, v8, :cond_1c

    const-wide/16 v8, 0x12c

    cmp-long v6, v16, v8

    if-ltz v6, :cond_1c

    const/16 v6, 0x10

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDropState:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeleteView:Landroid/view/View;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeletpage:Lcom/android/launcher2/CellLayout;

    :cond_1c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    :cond_1d
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_1e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    int-to-long v8, v6

    cmp-long v6, v14, v8

    if-ltz v6, :cond_1f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_35

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    :cond_1f
    :goto_9
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/PageIndicator;->getSnapToScreenIndex()I

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher2/PageIndicator;->drawPageNumberBox(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;JI)V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/QuickViewWorkspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_21

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x4

    if-eq v6, v8, :cond_21

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xc

    if-eq v6, v8, :cond_21

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xf

    if-ne v6, v8, :cond_2f

    :cond_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_22

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v8

    if-eq v6, v8, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    :cond_22
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    int-to-long v8, v6

    cmp-long v6, v14, v8

    if-ltz v6, :cond_28

    const/high16 v21, 0x3f800000    # 1.0f

    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v12, :cond_24

    :cond_23
    if-lez v12, :cond_24

    new-array v6, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    :cond_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v6, v8, v9, v0, v1}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v6, :cond_29

    const-string v6, "QuickViewWorkspace"

    const-string v8, "Failed to get current rectangles from animation engine"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_26

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_27

    const/high16 v21, 0x3f800000    # 1.0f

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto/16 :goto_8

    :cond_28
    long-to-float v6, v14

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    int-to-float v8, v8

    div-float v21, v6, v8

    goto :goto_a

    :cond_29
    const/16 v19, 0x0

    :goto_b
    move/from16 v0, v19

    if-ge v0, v12, :cond_25

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v6, v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_2c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v19

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v19

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v19

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v19

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v4, v6, v8, v9, v0}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2c

    move/from16 v0, v21

    float-to-double v8, v0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v8, v26

    if-gez v6, :cond_2a

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2b

    :cond_2a
    move/from16 v0, v21

    float-to-double v8, v0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v8, v26

    if-lez v6, :cond_2d

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2d

    :cond_2b
    move/from16 v0, v19

    if-ne v0, v13, :cond_2c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    :cond_2c
    :goto_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    :cond_2d
    add-int/lit8 v6, v13, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_2e

    move/from16 v0, v19

    if-eq v0, v13, :cond_2e

    add-int/lit8 v6, v13, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_2c

    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto :goto_c

    :cond_2f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    if-eqz v6, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollHalfWidth:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    div-int v13, v6, v8

    :cond_30
    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v6, :cond_31

    sub-int v6, v12, v13

    add-int/lit8 v13, v6, -0x1

    :cond_31
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_32

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto/16 :goto_8

    :cond_32
    const/16 v19, 0x0

    :goto_d
    move/from16 v0, v19

    if-ge v0, v12, :cond_19

    add-int/lit8 v6, v13, -0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_33

    move/from16 v0, v19

    if-eq v0, v13, :cond_33

    add-int/lit8 v6, v13, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_34

    :cond_33
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->isPageAddAnimating:Z

    if-eqz v6, :cond_34

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_34
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    :cond_35
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xc

    if-ne v6, v8, :cond_36

    const/16 v6, 0xd

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    goto/16 :goto_9

    :cond_36
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xf

    if-ne v6, v8, :cond_37

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    goto/16 :goto_9

    :cond_37
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1f

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    goto/16 :goto_9
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 48

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v40

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v39

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    div-float v12, v44, v45

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    div-float v11, v44, v45

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    add-float v41, v44, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    add-float v42, v44, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/QuickViewWorkspace;->isHome(Landroid/view/View;)Z

    move-result v44

    if-eqz v44, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v44

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v44, v0

    if-eqz v44, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getVisibility()I

    move-result v44

    if-nez v44, :cond_8

    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v44, 0x80

    const/16 v45, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_1
    sget v44, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const v45, 0x3ca3d70a    # 0.02f

    add-float v44, v44, v45

    const v45, 0x3f933333    # 1.15f

    cmpg-float v44, v44, v45

    if-gez v44, :cond_9

    sget v44, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const v45, 0x3ca3d70a    # 0.02f

    add-float v34, v44, v45

    :goto_2
    sput v34, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    :goto_3
    add-float v44, v41, v9

    add-float v45, v42, v10

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v12

    move/from16 v44, v0

    neg-float v0, v11

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v8, v0

    int-to-float v0, v8

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v29, v44, v45

    int-to-float v0, v8

    move/from16 v44, v0

    const/high16 v45, 0x437a0000    # 250.0f

    div-float v30, v44, v45

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_d

    move/from16 v4, v29

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_e

    const/high16 v44, 0x3f800000    # 1.0f

    sub-float v17, v44, v30

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_f

    const/high16 v44, 0x3f800000    # 1.0f

    sub-float v7, v44, v29

    :goto_6
    const/16 v44, 0x0

    const/high16 v45, 0x3f800000    # 1.0f

    move/from16 v0, v45

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v45

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/16 v44, 0x0

    const/high16 v45, 0x3f800000    # 1.0f

    move/from16 v0, v45

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v45

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(FF)F

    move-result v17

    const/16 v44, 0x0

    const/high16 v45, 0x3f800000    # 1.0f

    move/from16 v0, v45

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v45

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->max(FF)F

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x4

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xf

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_1
    const/high16 v44, 0x437f0000    # 255.0f

    mul-float v44, v44, v4

    move/from16 v0, v44

    float-to-int v5, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v38

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v44

    if-eqz v44, :cond_10

    move-object/from16 v0, v38

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v44, v0

    if-eqz v44, :cond_10

    move-object/from16 v44, v38

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    if-nez v44, :cond_10

    sget-boolean v44, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-nez v44, :cond_10

    const/16 v19, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v44

    if-nez v44, :cond_3

    if-nez v19, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v44

    if-nez v44, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v44

    const/high16 v45, 0x3f800000    # 1.0f

    cmpg-float v44, v44, v45

    if-gez v44, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v44

    const/high16 v45, 0x437f0000    # 255.0f

    mul-float v44, v44, v45

    move/from16 v0, v44

    float-to-int v5, v0

    :cond_2
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v44, 0x0

    const/16 v45, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v40

    move/from16 v3, v39

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    move-object/from16 v44, p2

    check-cast v44, Landroid/view/ViewGroup;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xf

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_5

    :cond_4
    move-object/from16 v44, p2

    check-cast v44, Landroid/view/ViewGroup;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getHeight()I

    move-result v44

    if-nez v44, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f090238

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v44, 0x7f02004f

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    mul-int/lit8 v44, v25, 0x2

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v45

    add-int v44, v44, v45

    add-int v16, v16, v44

    :cond_5
    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_22

    move-object/from16 v0, v38

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v44, v0

    if-eqz v44, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeleteView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeletpage:Lcom/android/launcher2/CellLayout;

    move-object/from16 v26, v0

    :goto_8
    if-nez v26, :cond_12

    :cond_6
    :goto_9
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_8
    const/16 v44, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    :cond_9
    const v34, 0x3f933333    # 1.15f

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeleteView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_c

    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDeleteStartTime:J

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move-wide/from16 v0, v44

    long-to-int v8, v0

    int-to-float v0, v8

    move/from16 v44, v0

    const/high16 v45, 0x43960000    # 300.0f

    div-float v29, v44, v45

    sget v44, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v45, v29

    mul-float v44, v44, v45

    const/16 v45, 0x0

    cmpl-float v44, v44, v45

    if-lez v44, :cond_b

    const/high16 v44, 0x3f800000    # 1.0f

    sget v45, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const/high16 v46, 0x3f800000    # 1.0f

    sub-float v46, v46, v29

    mul-float v45, v45, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->min(FF)F

    move-result v34

    :goto_a
    sput v34, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    new-instance v31, Landroid/graphics/Rect;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewDragBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f09023b

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    div-int/lit8 v45, v20, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getWidth()I

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v47, v0

    add-int v46, v46, v47

    mul-int v44, v44, v46

    add-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    add-float v22, v44, v12

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->centerY()I

    move-result v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v44, v22, v41

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v45, v34

    mul-float v9, v44, v45

    sub-float v44, v23, v42

    const/high16 v45, 0x3f800000    # 1.0f

    sub-float v45, v45, v34

    mul-float v10, v44, v45

    goto/16 :goto_3

    :cond_b
    const/16 v34, 0x0

    goto :goto_a

    :cond_c
    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v44, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    :cond_d
    const/high16 v44, 0x3f800000    # 1.0f

    sub-float v4, v44, v29

    goto/16 :goto_4

    :cond_e
    move/from16 v17, v30

    goto/16 :goto_5

    :cond_f
    move/from16 v7, v29

    goto/16 :goto_6

    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v44, v0

    check-cast v38, Ljava/lang/Integer;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v45

    invoke-interface/range {v44 .. v45}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v26

    goto/16 :goto_8

    :cond_12
    const/16 v44, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v24, v44, v4

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v28

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    sub-int v44, v40, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v35, v44, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v44, v0

    sub-int v44, v39, v44

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v45, v45, v24

    sub-float v44, v44, v45

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v45, v0

    div-float v36, v44, v45

    cmpl-float v44, v36, v35

    if-lez v44, :cond_1c

    move/from16 v33, v35

    :goto_b
    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xf

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1d

    :cond_13
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v24, v44, v7

    :cond_14
    :goto_c
    if-nez v19, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeleteView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    div-float v44, v44, v45

    add-float v44, v44, v41

    add-float v44, v44, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v45, v45, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v45, v45, v46

    const/high16 v46, 0x40000000    # 2.0f

    div-float v45, v45, v46

    mul-float v45, v45, v34

    add-float v45, v45, v42

    add-float v45, v45, v10

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_d
    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    div-float v44, v44, v45

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    div-float v45, v45, v46

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x4

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0x8

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xd

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1f

    const/16 v37, 0x1

    :goto_e
    if-nez v37, :cond_16

    if-eqz v19, :cond_6

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    add-float v44, v41, v9

    add-float v45, v42, v10

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v12

    move/from16 v44, v0

    neg-float v0, v11

    move/from16 v45, v0

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v19, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xf

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_19

    :cond_17
    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v44

    if-eqz v44, :cond_20

    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    if-eqz v44, :cond_18

    const/high16 v44, 0x437f0000    # 255.0f

    mul-float v44, v44, v17

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v18, v0

    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_18
    const/high16 v44, 0x437f0000    # 255.0f

    mul-float v44, v44, v17

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_19
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xc

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xf

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1b

    :cond_1a
    move-object/from16 v44, p2

    check-cast v44, Landroid/view/ViewGroup;

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-lt v0, v1, :cond_1b

    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1b
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9

    :cond_1c
    move/from16 v33, v36

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xd

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_14

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v44, v0

    const/16 v45, 0x0

    mul-float v24, v44, v45

    goto/16 :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v45, v0

    sub-int v44, v44, v45

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    div-float v44, v44, v45

    add-float v44, v44, v41

    add-float v44, v44, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    add-float v45, v45, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    sub-float v45, v45, v46

    const/high16 v46, 0x40000000    # 2.0f

    div-float v45, v45, v46

    add-float v45, v45, v42

    add-float v45, v45, v10

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_d

    :cond_1f
    const/16 v37, 0x0

    goto/16 :goto_e

    :cond_20
    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    if-eqz v44, :cond_21

    const/high16 v44, 0x42840000    # 66.0f

    mul-float v44, v44, v17

    move/from16 v0, v44

    float-to-int v0, v0

    move/from16 v18, v0

    sget-object v44, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    move-object/from16 v0, v44

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    const/high16 v45, 0x437f0000    # 255.0f

    mul-float v45, v45, v17

    move/from16 v0, v45

    float-to-int v0, v0

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_f

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v44, v0

    const/16 v45, 0xd

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v44, v0

    const/high16 v45, 0x40000000    # 2.0f

    div-float v44, v44, v45

    sub-float v44, v12, v44

    int-to-float v0, v13

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    div-float v45, v45, v46

    sub-float v45, v11, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_9
.end method

.method public drawCloseAnimation()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x800

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    :cond_0
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v1, v4, :cond_1

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_3

    const-string v1, "QuickViewWorkspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawCloseAnimation() festival on mCurrentPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->clearAccessibilityFocusForHomeButton()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/QuickViewDragBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewDragBar;->clearAccessibilityFocus()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    const v4, 0x7f090115

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x14d

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/PageIndicatorManager;->updateIndicatorAnimated(II)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    invoke-virtual {p0, v3, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->wallpaperHack()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    move v1, v2

    :goto_1
    return v1

    :cond_3
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method public drawOpenAnimation(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;I)V
    .locals 4

    const v3, 0x7f090117

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getZeroPageOnOffSwitch()Landroid/widget/Switch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getIconAutoAlignLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f090115

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f090113

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x2

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->drawOpenAnimation(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/launcher2/PageIndicatorManager;->updateIndicatorAnimated(II)V

    goto :goto_0
.end method

.method protected drop(II)V
    .locals 8

    const v4, 0x7f080098

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeleteView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingDeletpage:Lcom/android/launcher2/CellLayout;

    const/16 v1, 0x11

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDropState:I

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOME"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-long v4, v4

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {p0, v7, v7}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->isValidTag(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v0, v2}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto :goto_0

    :cond_2
    const-string v1, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mDraggingIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto :goto_0
.end method

.method protected endDrag()V
    .locals 10

    const-wide/16 v8, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewDragBar(ZZ)V

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showAndHideTitleBar()V

    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    return-void

    :cond_1
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-lt v2, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method getAdditionPageCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->additionalCount:I

    return v0
.end method

.method public getCheckedIndex()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    instance-of v4, v0, Landroid/widget/CheckBox;

    if-nez v4, :cond_0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    return v0
.end method

.method public getDeletePageIndex()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method public getTargetPage()Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const-string v6, "QuickViewWorkspace"

    const-string v7, "getTargetPage()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v6, 0x2

    new-array v5, v6, [I

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v6, v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    aget v6, v5, v8

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    if-gez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v6

    if-le v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v6

    aget v7, v5, v8

    sub-int v4, v6, v7

    :cond_2
    :goto_2
    if-le v4, v0, :cond_0

    move v0, v4

    move v1, v3

    goto :goto_1

    :cond_3
    aget v6, v5, v8

    if-ltz v6, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-le v1, v6, :cond_6

    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    return-object v6

    :cond_6
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ge v1, v6, :cond_5

    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_3
.end method

.method public hideTitleBar()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isTitleBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    return-void
.end method

.method public hideTitleBarImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    :cond_0
    move-object/from16 v13, p1

    check-cast v13, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    iget-object v13, v13, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getZeroPageOnOffSwitch()Landroid/widget/Switch;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageAppName()Ljava/lang/String;

    move-result-object v12

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x200f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v13, v12}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v9

    sget-boolean v13, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v13, :cond_3

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v13

    sub-int/2addr v9, v13

    const-string v13, "QuickViewWorkspace"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initScreen() festival screenCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_6

    const v13, 0x7f020073

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v13, Landroid/widget/Scroller;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v3, v14, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v4, 0x0

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v13, :cond_7

    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d002e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020039

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02003b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_a

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageAppName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const v13, 0x7f020072

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_7
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020038

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02003a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080037

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    add-int/lit8 v16, v9, -0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f080037

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v5, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v13

    if-nez v13, :cond_b

    const v13, 0x7f090366

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :goto_4
    const v13, 0x7f090121

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14, v10, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/HomeScreenOptionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const v13, 0x7f09011e

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v13}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateWidgetButtonState()V

    return-void

    :cond_b
    const v13, 0x7f090122

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_4
.end method

.method insertAdditionalPageAndMoveItems(IILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    const-string v8, "QuickViewWorkspace"

    const-string v9, "insertAdditionalPageAndMoveItems()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->insertPage(II)V

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v8, p1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v8, p2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/launcher2/CellLayout;->mTempPage:Z

    move-object v6, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    iput p2, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v10

    if-le v9, v10, :cond_0

    const/4 v2, 0x0

    add-int/2addr v3, v7

    :cond_0
    iput v2, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v9

    add-int/2addr v2, v9

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getSpanY()I

    move-result v7

    goto :goto_0

    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->additionalCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->additionalCount:I

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v1, v8}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    return-void
.end method

.method insertPage(II)V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-direct {p0, p2}, Lcom/android/launcher2/QuickViewWorkspace;->addScreen(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityHomeButton(ZI)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-le v1, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    return-void
.end method

.method insertPageAndMoveItems(II)V
    .locals 12

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->insertPage(II)V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, p1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, p2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/android/launcher2/CellLayout;->mTempPage:Z

    iget-object v7, v1, Lcom/android/launcher2/CellLayout;->mOutSideItems:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x1

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    move-object v6, v5

    check-cast v6, Lcom/android/launcher2/HomeItem;

    iput p2, v6, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v11

    if-le v10, v11, :cond_0

    const/4 v3, 0x0

    add-int/2addr v4, v8

    :cond_0
    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getSpanY()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v11

    if-le v10, v11, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput v3, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v4, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v10

    add-int/2addr v3, v10

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getSpanY()I

    move-result v8

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {p0, v9, v10, v0}, Lcom/android/launcher2/QuickViewWorkspace;->insertAdditionalPageAndMoveItems(IILjava/util/List;)V

    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    return-void
.end method

.method public isLastPage()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 14

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getZeroPageOnOffSwitch()Landroid/widget/Switch;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v9}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v9, 0x7f09021b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v9, 0x7f090100

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-virtual {v4, v13, v7, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v4}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    const v10, 0x7f0902a9

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v13, v10}, Landroid/widget/Switch;->setTextSize(IF)V

    :cond_1
    const-string v9, "QuickViewWorkspace"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OnOffSwitch width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v11}, Landroid/widget/Switch;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", margin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroPageDualView:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setupHomeZeroPageDual()V

    :cond_3
    sget-object v9, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    if-eqz v9, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParamsBgImage()V

    :cond_4
    return-void
.end method

.method protected measureChildViews()V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public moveCurrentPage(Z)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x0

    new-array v0, v4, [I

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz v0, :cond_0

    aget v2, v0, v1

    if-gez v2, :cond_0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    :cond_0
    aget v2, v0, v1

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "QuickViewWorkspace"

    const-string v4, "onClick()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->showZeroPageDownloadDialog(Lcom/android/launcher2/ZeroPageListItem;Z)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTargetPage()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->addScreen()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v3, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    goto/16 :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    :goto_1
    cmpl-float v4, v2, v7

    if-nez v4, :cond_1

    cmpl-float v4, v3, v7

    if-eqz v4, :cond_0

    :cond_1
    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v4, v5, :cond_6

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_5

    cmpl-float v4, v2, v7

    if-gtz v4, :cond_3

    cmpl-float v4, v3, v7

    if-lez v4, :cond_6

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    move v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v3, v4

    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_1

    :cond_5
    cmpg-float v4, v2, v7

    if-ltz v4, :cond_3

    cmpg-float v4, v3, v7

    if-ltz v4, :cond_3

    :cond_6
    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ne v4, v6, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_9

    cmpg-float v4, v2, v7

    if-ltz v4, :cond_3

    cmpg-float v4, v3, v7

    if-ltz v4, :cond_3

    :cond_7
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_a

    const/4 v1, -0x1

    :goto_3
    cmpl-float v4, v2, v7

    if-gtz v4, :cond_8

    cmpl-float v4, v3, v7

    if-lez v4, :cond_b

    :cond_8
    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_2

    :cond_9
    cmpl-float v4, v2, v7

    if-gtz v4, :cond_3

    cmpl-float v4, v3, v7

    if-lez v4, :cond_7

    goto :goto_2

    :cond_a
    move v1, v5

    goto :goto_3

    :cond_b
    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isCloseAnimating()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    const/16 v17, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    move/from16 v17, v0

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    goto :goto_0

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v15, v17

    move/from16 v0, v17

    float-to-int v6, v0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v10, v17

    move/from16 v0, v17

    float-to-int v5, v0

    mul-int v17, v6, v6

    mul-int v18, v5, v5

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchPointDistance:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    const/16 v17, 0x32

    move/from16 v0, v17

    if-le v7, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v12, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchSlop:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v9, :cond_6

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    if-eqz v14, :cond_5

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v12, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    const-string v17, "QuickViewWorkspace"

    const-string v18, "Dvfs lock acquired- Touch action down"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->getFinalX()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->getCurrX()I

    move-result v18

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchSlop:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v13, v0, :cond_9

    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    :cond_9
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    :sswitch_3
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v17

    if-nez v17, :cond_3

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v11, v0

    float-to-int v0, v10

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v17

    float-to-int v0, v11

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    sub-float v17, v15, v16

    move/from16 v0, v17

    float-to-int v6, v0

    sub-float v17, v10, v11

    move/from16 v0, v17

    float-to-int v5, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    mul-int v17, v6, v6

    mul-int v18, v5, v5

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTouchPointDistance:I

    float-to-int v0, v10

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    goto/16 :goto_1

    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    const-string v19, "QuickViewWorkspace"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onLayout()"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isChangingOrientation()Z

    move-result v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mEnabledChildAnimation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v16, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->measureChildViews()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v9

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v9, :cond_4

    :cond_3
    new-array v0, v9, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v9, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    new-array v0, v9, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v20, v19, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    iget v8, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, v8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mScrollHalfWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v20

    sub-int v19, v19, v20

    sub-int v19, v19, v8

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v19

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090212

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_4
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_d

    add-int/lit8 v17, v9, -0x1

    :goto_5
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_e

    const/4 v12, -0x1

    :goto_6
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_f

    const/4 v11, -0x1

    :goto_7
    move/from16 v13, v17

    :goto_8
    if-eq v13, v12, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    aput-object v20, v19, v13

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    add-int v20, v6, v8

    add-int v21, v7, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_10

    if-eqz v16, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, v8

    add-int v6, v6, v19

    :cond_b
    add-int/2addr v13, v11

    goto :goto_8

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0900fa

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto/16 :goto_4

    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_5

    :cond_e
    move v12, v9

    goto/16 :goto_6

    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    :cond_11
    sub-int v18, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v19, v0

    sub-int v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move/from16 v20, v0

    add-int v14, v19, v20

    move/from16 v0, v18

    if-le v14, v0, :cond_15

    sub-int v19, v14, v18

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    :goto_a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_12

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v19, :cond_12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v19

    move/from16 v0, v19

    if-lt v10, v0, :cond_12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v10

    :cond_12
    if-ltz v10, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    :cond_13
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isChangingOrientation()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickViewWorkspace;->updateParamsIfNeeded(Z)V

    goto/16 :goto_1

    :cond_15
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v19, v0

    const/16 v20, 0xe

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v19, v0

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    const/16 v19, 0x7

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    goto/16 :goto_b
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isCanLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const-string v0, "QuickViewWorkspace"

    const-string v1, "onMeasure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->onMeasure(II)V

    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    iput p2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    return-void
.end method

.method public onPinchOut()Z
    .locals 3

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isCloseAnimating()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_4
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPageIndicatorIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStatusBarHeight:I

    int-to-float v14, v14

    sub-float v14, v12, v14

    invoke-virtual {v13, v10, v14}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStatusBarHeight:I

    int-to-float v14, v14

    sub-float v14, v12, v14

    invoke-virtual {v13, v10, v14}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(FF)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPageIndicatorIndex:I

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v13, v10

    float-to-int v3, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v13, v12

    float-to-int v4, v13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraftSlop:I

    if-le v13, v14, :cond_6

    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-nez v13, :cond_5

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v16, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v17, v17, v4

    invoke-virtual/range {v13 .. v17}, Landroid/view/View;->layout(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_8
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    instance-of v13, v13, Lcom/android/launcher2/QuickViewDragBar;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v13, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewDragBar;->getDeleteBackground()Landroid/widget/ImageView;

    move-result-object v13

    const/4 v15, 0x1

    invoke-virtual {v14, v13, v15}, Lcom/android/launcher2/Workspace;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    sget-object v13, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v14, 0x7f080059

    invoke-virtual {v13, v14}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    :cond_a
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    instance-of v13, v13, Lcom/android/launcher2/QuickViewDragBar;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v13, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewDragBar;->getDeleteBackground()Landroid/widget/ImageView;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v14, v13, v15}, Lcom/android/launcher2/Workspace;->editBarBackGroundVI(Landroid/widget/ImageView;Z)V

    :cond_c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    :cond_d
    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v5

    const/4 v13, -0x1

    if-eq v5, v13, :cond_f

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v5, v13, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v13, v14, :cond_f

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-eqz v13, :cond_f

    :cond_e
    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-ge v13, v5, :cond_11

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToLeft()V

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x0

    goto :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToRight()V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-le v13, v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    goto/16 :goto_1

    :cond_12
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToRight()V

    goto/16 :goto_1

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToLeft()V

    goto/16 :goto_1

    :cond_14
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    goto/16 :goto_1

    :pswitch_2
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPageIndicatorIndex:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_15

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPageIndicatorIndex:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStatusBarHeight:I

    int-to-float v15, v15

    sub-float v15, v12, v15

    invoke-virtual {v14, v10, v15}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(FF)I

    move-result v14

    if-ne v13, v14, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStatusBarHeight:I

    int-to-float v14, v14

    sub-float v14, v12, v14

    invoke-virtual {v13, v10, v14}, Lcom/android/launcher2/PageIndicatorManager;->snapPageTouchArea(FF)I

    move-result v7

    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_26

    const/4 v13, -0x1

    if-ne v7, v13, :cond_26

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v9, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    float-to-int v6, v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    const/4 v13, -0x1

    if-ne v7, v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTargetPage()Landroid/view/View;

    :cond_16
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMinimumVelocity:I

    if-le v13, v14, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v1, v13, :cond_18

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v13

    if-nez v13, :cond_17

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v13

    if-eqz v13, :cond_20

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v13

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1f

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_1e

    if-gez v6, :cond_1f

    :cond_18
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    :cond_19
    :goto_5
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v13, v14, :cond_1a

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickViewWorkspace;->drop(II)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    if-eqz v13, :cond_1c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_1c
    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCheckedIndex()I

    move-result v13

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v14

    if-eq v13, v14, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateHomeScreenOnDrag()V

    :cond_1d
    const-string v13, "QuickViewWorkspace"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onTouchEvent ACTION_UP mTouchState:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v13}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const-string v13, "QuickViewWorkspace"

    const-string v14, "Dvfs lock released - Touch action cancel/up"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1e
    if-gtz v6, :cond_18

    :cond_1f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    if-ne v13, v14, :cond_20

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_22

    if-gtz v6, :cond_18

    :cond_20
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-nez v13, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    if-ne v13, v14, :cond_21

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_23

    if-gtz v6, :cond_18

    :cond_21
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_24

    const/4 v2, -0x1

    :goto_6
    if-lez v6, :cond_25

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    sub-int/2addr v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto/16 :goto_4

    :cond_22
    if-gez v6, :cond_20

    goto/16 :goto_4

    :cond_23
    if-gez v6, :cond_21

    goto/16 :goto_4

    :cond_24
    const/4 v2, 0x1

    goto :goto_6

    :cond_25
    if-gez v6, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/2addr v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto/16 :goto_4

    :cond_26
    const/4 v13, -0x1

    if-le v7, v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v13

    if-eqz v13, :cond_27

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_28

    if-eqz v7, :cond_19

    :cond_27
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    goto/16 :goto_5

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v7, v13, :cond_19

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 10

    const v9, 0x7f080037

    const v8, 0x7f080020

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    :cond_0
    :goto_0
    invoke-virtual {p0, v6, v5}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v1, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    goto/16 :goto_0
.end method

.method public openGrid(Z)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->openGrid(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    sput-boolean v2, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    :cond_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenGridChangeHelper()Lcom/android/launcher2/HomeScreenGridChangeHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->backupOriginalData()V

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method removeScreen(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-lt v1, p1, :cond_2

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    :cond_2
    if-le v0, p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    goto :goto_0
.end method

.method public removeScreen(ZZ)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_3

    add-int/lit8 v19, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    if-nez p1, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    const-string v19, "com.sec.android.app.launcher.prefs"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v19, "quickviewDeletePage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    if-nez v11, :cond_6

    add-int/lit8 v11, v11, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v14

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    instance-of v0, v15, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v15

    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    if-lez v19, :cond_7

    check-cast v15, Landroid/view/ViewGroup;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v0, v8, Landroid/widget/CompoundButton;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    instance-of v0, v8, Landroid/widget/CheckBox;

    move/from16 v19, v0

    if-nez v19, :cond_7

    check-cast v8, Landroid/widget/CompoundButton;

    if-ne v10, v11, :cond_8

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-ne v10, v11, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f080036

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800c0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_8
    const/16 v19, 0x0

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v19

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    :goto_4
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    if-nez p2, :cond_1

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v19, Lcom/android/launcher2/QuickViewWorkspace$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$11;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v20, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    goto :goto_3

    :cond_b
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_c

    if-nez p1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v19

    goto :goto_5
.end method

.method resetAdditionalPageCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->additionalCount:I

    return-void
.end method

.method public scrollLeft()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "QuickViewWorkspace"

    const-string v1, "ignore scroll left to add btn page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    :goto_1
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v0, v2, :cond_0

    :cond_3
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    goto :goto_1
.end method

.method public scrollRight()V
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    :goto_1
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    const-string v0, "QuickViewWorkspace"

    const-string v1, "ignore scroll right to add btn page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    goto :goto_1
.end method

.method public scrollStart(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    add-int v0, v1, p1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    goto :goto_0
.end method

.method public scrollToLeft()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    return-void
.end method

.method public scrollToRight()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    return-void
.end method

.method public setDeletePageIndex(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    return-void
.end method

.method public setEnableQuickViewDragBar(ZZ)V
    .locals 7

    const v6, 0x3ee66666    # 0.45f

    const/4 v2, 0x0

    const-wide/16 v4, 0x14d

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/QuickViewDragBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->getDeleteBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showTitleBar()V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_0

    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/QuickViewDragBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->getDeleteBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-eqz v0, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isLastPage()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->hideTitleBar()V

    goto/16 :goto_0
.end method

.method public setEnableQuickViewZeroPageOnOff(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchShowAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$13;

    invoke-direct {v0, p0}, Lcom/android/launcher2/QuickViewWorkspace$13;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchHideAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public setQvPage(I)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v3, p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2, p1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setPage(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->requestAccessibilityFocusOnAndroidView(Landroid/view/View;)V

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto :goto_1
.end method

.method public setVisibilityHomeButton(ZI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v3, v5, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/widget/CheckBox;

    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityZeroPageOption(ZZ)V
    .locals 5

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_8

    sget-boolean v2, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOnOffSwitchShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewZeroPageOnOff(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewZeroPageOnOff(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    if-eqz p2, :cond_6

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewZeroPageOnOff(Z)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewDragBar;->isBulgeAnimating()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-interface {v3, v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->checkIconAutoAlign()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_9

    if-eqz p2, :cond_a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewZeroPageOnOff(Z)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mIconAutoAlignLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_3
.end method

.method public setZeroItem(Lcom/android/launcher2/ZeroPageListItem;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickViewWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldtitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newtitle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPage(Lcom/android/launcher2/ZeroPageListItem;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setZeroPage(Lcom/android/launcher2/ZeroPageListItem;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPageAppName()V

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->setDefaultZeroPageImage()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v0, v3

    check-cast v0, Landroid/app/ActivityManager;

    move-object v1, v0

    invoke-virtual {v1, p2}, Landroid/app/ActivityManager;->semForceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->unBindVirtualScreen()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v5}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->bindVirtualScreen()V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setZeroPageFirst()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageFirst:Z

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParamsBgImage()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageBgImage()V

    sget-object v4, Lcom/android/launcher2/QuickViewWorkspace;->bgImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {v5}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeZeroOffBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setupHomeZeroPageDual()V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0902e0

    const v6, 0x7f0902df

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ZeroPageListItem;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstBgImageView:Landroid/widget/ImageView;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualFirstTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ZeroPageListItem;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondBgImageView:Landroid/widget/ImageView;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDualSecondTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->updateHomeZeroPageDualCheck(I)V

    :cond_4
    return-void
.end method

.method public showTitleBar()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isTitleBarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isCanLongClick()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTitleBarShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollY()I

    move-result v2

    const/16 v5, 0x190

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput-boolean v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_4

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_7

    if-ltz p1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v0

    if-ne v0, v6, :cond_5

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_8

    if-gtz p1, :cond_0

    :cond_5
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_6

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_9

    if-ltz p1, :cond_0

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->scrollBy(II)V

    goto :goto_0

    :cond_7
    if-lez p1, :cond_4

    goto :goto_0

    :cond_8
    if-gez p1, :cond_5

    goto/16 :goto_0

    :cond_9
    if-lez p1, :cond_6

    goto/16 :goto_0
.end method

.method public snapToQvPage()V
    .locals 7

    const/4 v2, 0x2

    const/4 v4, 0x0

    new-array v6, v2, [I

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz v6, :cond_0

    aget v0, v6, v4

    if-gez v0, :cond_0

    aget v0, v6, v4

    add-int/lit8 v0, v0, -0x1

    aput v0, v6, v4

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollY()I

    move-result v2

    aget v3, v6, v4

    iget v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v3, v5

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showAndHideTitleBar()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_1
    return-void
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->startDrag(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    invoke-virtual {p0, v3, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setEnableQuickViewDragBar(ZZ)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method protected swapScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    return-void
.end method

.method public updateAddScreen()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    return-void
.end method

.method public updateHomeScreenOnDrag()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v6, v0, Landroid/widget/CompoundButton;

    if-eqz v6, :cond_0

    instance-of v6, v0, Landroid/widget/CheckBox;

    if-nez v6, :cond_0

    check-cast v0, Landroid/widget/CompoundButton;

    if-ne v2, v3, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected updateTags()V
    .locals 11

    const v10, 0x7f080037

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v6, v1, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateTitleBar()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->showAndHideTitleBar()V

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    return-void
.end method

.method public updateWidgetButtonState()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->getWidgetButton()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public updateZeroPageSwitch()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mZeroPageOnOffSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
