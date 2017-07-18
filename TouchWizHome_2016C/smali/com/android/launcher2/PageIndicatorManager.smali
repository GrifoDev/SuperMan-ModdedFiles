.class public Lcom/android/launcher2/PageIndicatorManager;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;,
        Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final FAST_SCROLL_LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "PageIndicatorManager"

.field static final WIDGETS_TAB_TAG:Ljava/lang/String; = "WIDGETS"

.field private static mPageIndicatorHeight:I


# instance fields
.field private fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

.field private mAddPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

.field private mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field private mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

.field private mIndicatorTotalWidth:I

.field private mIndicatorWidth:I

.field private mIsLongPressPending:Z

.field private mLastLoadedPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaxVisiblePages:I

.field protected mPageIndicator:Lcom/android/launcher2/PageIndicator;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorTop:I

.field mPagedView:Lcom/android/launcher2/PagedView;

.field private final mScroller:Lcom/android/launcher2/ScalarAnimator;

.field mShowHotSeat:Z

.field private mViewsTotalWidth:I

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PageIndicatorManager;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedView;III)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    new-instance v5, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v6, 0x320

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher2/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    new-instance v5, Lcom/android/launcher2/PageIndicatorManager$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/PageIndicatorManager$1;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    iput-boolean v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    iput-object v10, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v5, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020067

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sput v5, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    const v5, 0x7f020069

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_0

    const v5, 0x7f020047

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v5, 0x7f020068

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f02006a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    const v5, 0x7f020048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    iput p2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    iput p3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    iput p4, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    const v5, 0x7f0a0292

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getPageIndicatorDefault()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getPageIndicatorHome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getPageIndicatorHeadlines()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    :cond_1
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    :cond_2
    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator(Landroid/content/res/Resources;Lcom/android/launcher2/PagedView;)Lcom/android/launcher2/PageIndicator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    instance-of v5, p1, Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_4

    check-cast p1, Lcom/android/launcher2/Workspace;

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    :cond_4
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-direct {v5, p0, v10}, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;-><init>(Lcom/android/launcher2/PageIndicatorManager;Lcom/android/launcher2/PageIndicatorManager$1;)V

    iput-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/ScalarAnimator;->setEndListener(Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicatorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PageIndicatorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    return v0
.end method

.method static getPageIndicatorHeight()I
    .locals 1

    sget v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return v0
.end method

.method private isFestivalpageVisible()Z
    .locals 2

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPluspageVisible()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v2, v2, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v2, v2, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v2, v2, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_3

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method private isZeropageDisabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private loadPageIfNeeded()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-boolean v1, v1, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->isPageFastMoving()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iput v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method private snapToScreen(I)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/PageIndicator;->setSnapToScreenIndex(I)V

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v8}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne p1, v6, :cond_0

    sput-boolean v7, Lcom/android/launcher2/Launcher;->mStartZeorpageByIndicator:Z

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isPluspageVisible()Z

    move-result v5

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFestivalpageVisible()Z

    move-result v3

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v6, v6, Lcom/android/launcher2/Workspace;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    if-le v6, v9, :cond_4

    if-eqz p1, :cond_2

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq p1, v6, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, v6, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v6}, Landroid/view/animation/AlphaAnimation;->start()V

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, v6, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, v9, Lcom/android/launcher2/PageIndicator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6, v10, v11, v9}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    :cond_4
    :goto_0
    if-eq p1, v1, :cond_a

    move v0, v7

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_5

    if-ge p1, v1, :cond_b

    const/4 v2, 0x2

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v4, v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->clearFocus()V

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6, p1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->invalidate()V

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v9

    if-eqz v5, :cond_9

    move v6, v7

    :goto_3
    sub-int v6, v9, v6

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    if-le v6, v9, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v6, v6, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v6, v9, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq p1, v6, :cond_4

    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, v6, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v6}, Landroid/view/animation/AlphaAnimation;->start()V

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, v6, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, v9, Lcom/android/launcher2/PageIndicator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6, v10, v11, v9}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    goto :goto_0

    :cond_9
    move v6, v8

    goto :goto_3

    :cond_a
    move v0, v8

    goto :goto_1

    :cond_b
    if-le p1, v1, :cond_5

    const/4 v2, 0x3

    goto :goto_2
.end method


# virtual methods
.method public cancelEnterFastScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    :cond_0
    return-void
.end method

.method protected cancelFastScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->exitFastScroll()V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->invalidate()V

    :cond_1
    return-void
.end method

.method public changePageIndicatorColor(I)V
    .locals 2

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method protected checkPageIndicatorLongPress(FF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->enterFastScoll(FF)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected checkPageIndicatorTouch(FF)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    float-to-int v4, p1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    float-to-int v5, p2

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFlick()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v3, v3, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    check-cast v1, Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->openHeadlines(Z)V

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    new-instance v3, Lcom/android/launcher2/PageIndicatorManager$3;

    invoke-direct {v3, p0}, Lcom/android/launcher2/PageIndicatorManager$3;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PagedView;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    move v1, v2

    goto :goto_0
.end method

.method drawPageIndicator(Landroid/graphics/Canvas;J)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v12, v12, Lcom/android/launcher2/Workspace;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    iget-object v12, v12, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v3

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12, v3, v13, v14}, Lcom/android/launcher2/PageIndicator;->setCurrentPage(IZLcom/android/launcher2/PagedView;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v12}, Lcom/android/launcher2/PageIndicator;->isStartGrouping()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PageIndicatorManager;->isPluspageVisible()Z

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PageIndicatorManager;->isFestivalpageVisible()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mShowHotSeat:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v7

    sget-boolean v12, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v12, :cond_3

    sget-boolean v12, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v13, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v12, v12, Lcom/android/launcher2/Workspace;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v12

    sub-int/2addr v7, v12

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PageIndicatorManager;->isZeropageDisabled()Z

    move-result v12

    if-eqz v12, :cond_5

    const v12, 0x7f0a0114

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v13, v14

    mul-int/2addr v13, v12

    if-lez v7, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_2
    sub-int v12, v13, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v13

    if-le v12, v13, :cond_b

    const v12, 0x7f0a0242

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    :cond_4
    add-int/lit8 v13, v7, -0x1

    if-eqz v6, :cond_9

    if-eqz v8, :cond_9

    const/4 v12, 0x1

    :goto_3
    add-int/2addr v13, v12

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v12

    :goto_4
    add-int v11, v13, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    mul-int/2addr v13, v11

    sub-int/2addr v12, v13

    add-int/lit8 v13, v11, -0x1

    div-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v14}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v14

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mShowHotSeat:Z

    if-nez v12, :cond_f

    const/4 v12, 0x1

    :goto_6
    invoke-virtual {v13, v14, v15, v12}, Lcom/android/launcher2/PageIndicator;->setOffset(IIZ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v12, v0, v13, v1, v2}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v12, v4}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v4

    float-to-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    const/4 v9, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v12

    or-int/2addr v9, v12

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-boolean v12, v12, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto/16 :goto_0

    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v12, -0x1

    if-eqz v6, :cond_c

    if-eqz v8, :cond_c

    const/4 v12, 0x1

    :goto_7
    add-int/2addr v13, v12

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v12

    :goto_8
    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v13, v14

    mul-int/2addr v13, v12

    if-lez v7, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_9
    sub-int v12, v13, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v12}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    goto/16 :goto_5

    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    :cond_d
    const/4 v12, 0x0

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_6
.end method

.method protected enterFastScoll(FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->enterFastScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;I)V
    .locals 6

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    mul-int v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mGap:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mTop:I

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v3, v3, Lcom/android/launcher2/PageIndicator;->mLeft:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v4, v4, Lcom/android/launcher2/PageIndicator;->mTop:I

    sget v5, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getIndicatorAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    sget-object v1, Lcom/android/launcher2/PagedView;->INDICATOR_TOP:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getPageIndicator()Lcom/android/launcher2/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicator(Landroid/content/res/Resources;Lcom/android/launcher2/PagedView;)Lcom/android/launcher2/PageIndicator;
    .locals 2

    new-instance v0, Lcom/android/launcher2/PageIndicator;

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;Lcom/android/launcher2/PagedView;I)V

    return-object v0
.end method

.method public getPageIndicatorArea(FF)I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    float-to-int v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorArea(II)I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getPageIndicatorLeft()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    return v0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isMoving()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorTouch(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method handleMove(FFZ)Z
    .locals 8

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-boolean v2, v2, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v7, v2

    :goto_1
    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-boolean v2, v2, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBriefingScreenCount()I

    move-result v5

    sub-int/2addr v2, v5

    if-ne v2, v4, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_1
    :goto_2
    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    :goto_3
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v2, v5, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    goto :goto_3
.end method

.method public handleOrientationChange()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicator;->handleOrientationChange(Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicatorManager;->hidePageIndicator(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    goto :goto_0
.end method

.method public hidePageIndicator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->hide(Z)V

    :cond_0
    return-void
.end method

.method isFastScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInPageIndicator(FF)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    float-to-int v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutPageIndicator()V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v11, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8, v3}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/PageIndicator;->setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/PageIndicator;->setHeadlinesPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/PageIndicator;->setAddPageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/PageIndicator;->setFestivalPageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v8, 0x7f0a0114

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicator;->isStartGrouping()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isZeropageDisabled()Z

    move-result v7

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isPluspageVisible()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFestivalpageVisible()Z

    move-result v0

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eqz v7, :cond_5

    move v8, v9

    :goto_1
    sub-int v8, v11, v8

    iget v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v11, v1

    mul-int/2addr v11, v8

    if-lez v3, :cond_6

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_2
    sub-int v8, v11, v8

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v11

    if-le v8, v11, :cond_9

    const v8, 0x7f0a0242

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v8

    iget v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v8, v11

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    :cond_2
    if-eqz v7, :cond_7

    move v8, v9

    :goto_3
    sub-int v11, v3, v8

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    move v8, v9

    :goto_4
    add-int/2addr v8, v11

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v10

    :cond_3
    add-int v6, v8, v10

    if-eq v6, v9, :cond_4

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    mul-int v9, v1, v6

    sub-int/2addr v8, v9

    add-int/lit8 v9, v6, -0x1

    div-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_4
    :goto_5
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PageIndicator;->setFolderPageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    goto/16 :goto_0

    :cond_5
    move v8, v10

    goto :goto_1

    :cond_6
    move v8, v10

    goto :goto_2

    :cond_7
    move v8, v10

    goto :goto_3

    :cond_8
    move v8, v10

    goto :goto_4

    :cond_9
    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eqz v7, :cond_b

    move v8, v9

    :goto_6
    sub-int v8, v11, v8

    if-eqz v2, :cond_c

    if-eqz v4, :cond_c

    :goto_7
    add-int/2addr v9, v8

    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v8

    :goto_8
    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v9, v1

    mul-int/2addr v8, v9

    if-lez v3, :cond_a

    iget v10, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_a
    sub-int/2addr v8, v10

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    goto :goto_5

    :cond_b
    move v8, v10

    goto :goto_6

    :cond_c
    move v9, v10

    goto :goto_7

    :cond_d
    move v8, v10

    goto :goto_8
.end method

.method public onDragEnter(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDragExit(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDrop(I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setAnimationPrevented(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->setAnimationPrevented(Z)V

    return-void
.end method

.method public setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorWidth:I

    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne p1, v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v8, v8, Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v8

    sub-int/2addr v3, v8

    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8, v3}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8, p1}, Lcom/android/launcher2/PageIndicator;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0114

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicator;->isStartGrouping()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isZeropageDisabled()Z

    move-result v7

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isPluspageVisible()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFestivalpageVisible()Z

    move-result v0

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eqz v7, :cond_5

    move v8, v9

    :goto_0
    sub-int v8, v11, v8

    iget v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v11, v1

    mul-int/2addr v11, v8

    if-lez v3, :cond_6

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_1
    sub-int v8, v11, v8

    iget-object v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v11

    if-le v8, v11, :cond_9

    const v8, 0x7f0a0242

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v8

    iget v11, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v8, v11

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    :cond_2
    if-eqz v7, :cond_7

    move v8, v9

    :goto_2
    sub-int v11, v3, v8

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    move v8, v9

    :goto_3
    add-int/2addr v8, v11

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v10

    :cond_3
    add-int v6, v8, v10

    if-eq v6, v9, :cond_4

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    mul-int v9, v1, v6

    sub-int/2addr v8, v9

    add-int/lit8 v9, v6, -0x1

    div-int/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_4
    :goto_4
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void

    :cond_5
    move v8, v10

    goto :goto_0

    :cond_6
    move v8, v10

    goto :goto_1

    :cond_7
    move v8, v10

    goto :goto_2

    :cond_8
    move v8, v10

    goto :goto_3

    :cond_9
    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eqz v7, :cond_b

    move v8, v9

    :goto_5
    sub-int v8, v11, v8

    if-eqz v2, :cond_c

    if-eqz v4, :cond_c

    :goto_6
    add-int/2addr v9, v8

    if-eqz v2, :cond_d

    if-eqz v0, :cond_d

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v8

    :goto_7
    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v9, v1

    mul-int/2addr v8, v9

    if-lez v3, :cond_a

    iget v10, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_a
    sub-int/2addr v8, v10

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    goto :goto_4

    :cond_b
    move v8, v10

    goto :goto_5

    :cond_c
    move v9, v10

    goto :goto_6

    :cond_d
    move v8, v10

    goto :goto_7
.end method

.method public setGap(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    return-void
.end method

.method public setTop(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    :cond_0
    return-void
.end method

.method snapPageTouchArea(FF)I
    .locals 5

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    float-to-int v3, p1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    float-to-int v4, p2

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public updateIndicatorAnimated(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    sget-object v1, Lcom/android/launcher2/PagedView;->INDICATOR_TOP:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PageIndicatorManager$2;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
