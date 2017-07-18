.class public Lcom/android/launcher2/MenuWidgets;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateObj;,
        Lcom/android/launcher2/MenuWidgets$WidgetState;,
        Lcom/android/launcher2/MenuWidgets$Filter;,
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;,
        Lcom/android/launcher2/MenuWidgets$ItemViewPool;,
        Lcom/android/launcher2/MenuWidgets$DisplayType;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final MW_DEBUG:Z = false

.field private static final PAGE_BG_ALPHA_VALUE:I = 0x0

.field private static final PAGE_CACHE_SIZE:I = 0x3

.field public static final PAGE_MINIMIZE:I = 0x0

.field public static final PAGE_NORMALIZE:I = 0x1

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field public static final SEARCH_EDIT_SHRINK:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuWidgets"

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.98f

.field private static final TRANSITION_MIN_SCALE:F = 0.99f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static final UPDATE_PACKAGES_STR:Ljava/lang/String; = "packagesChanged"

.field private static mSineIO70Interpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActionUpOnScroll:Z

.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDataVersion:J

.field private mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

.field private mDisplayedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field public mDragOnSearchState:Z

.field private mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

.field private mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mGridSizeXY:[I

.field private mHasUninstallableWidgets:Z

.field private mIsChangeStatus:Z

.field private mIsFirstEnter:Z

.field private final mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

.field private final mLastPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListenerAttached:Z

.field mLoadingListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

.field private mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

.field private mNumWidgetPages:I

.field private mPackagesChangedRunnable:Ljava/lang/Runnable;

.field private mPageCacheSize:I

.field private mPageSize:I

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRequestedOrientation:I

.field private mScaleFactor:F

.field private mSearchBarBgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public mSearchString:Ljava/lang/String;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBar:Landroid/view/ViewGroup;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mWasEmpty:Z

.field private mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuWidgets;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const v7, 0x3ea8f5c3    # 0.33f

    const/4 v6, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v7, v6, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSineInOut90:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v1, v7, v6, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput v3, p0, Lcom/android/launcher2/MenuWidgets;->mScaleFactor:F

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mActionUpOnScroll:Z

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    iput-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    sget-object v1, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iput-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mRefreshHandler:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mWasEmpty:Z

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mIsChangeStatus:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPageSize:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchBarBgMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$2;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mPackagesChangedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$3;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLoadingListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    iput-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;

    invoke-direct {v1, p0, v5}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    invoke-direct {v1, p0, v5}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$5;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$7;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->initCurrentPage(I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v2}, Lcom/android/launcher2/MenuWidgets$ItemViewPool;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    const v1, 0x7f0a014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    const v1, 0x7f0c0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDragSlopeThreshold(F)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRefreshHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setSaveEnabled(Z)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgets;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/MenuWidgets;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgets;Ljava/util/List;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuWidgets;->addWidgetList(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuWidgets;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->applyInvertColor()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/launcher2/MenuWidgets;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBar:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/launcher2/MenuWidgets;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/MenuWidgets;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mSineInOut90:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    return p1
.end method

.method private addCategoryFolder(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v4, p1

    const-string v3, "@"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v13, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v5}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v9, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v15

    invoke-interface {v5}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    iget-object v0, v9, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/launcher2/MenuWidgets;->getApplicationLabel(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/android/launcher2/AvailableWidget;->setFolderTitle(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/AvailableWidget;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v7

    check-cast v19, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v7, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v7, v10}, Lcom/android/launcher2/AvailableWidget;->setFolderTitle(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1
    instance-of v0, v7, Ljava/util/ArrayList;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object v6, v7

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "@"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "@"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/MenuWidgets;->sortByValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v14

    new-instance v16, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private addWidgetList(Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;J)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addWidgetList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsLoader;->useThread()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/MenuWidgets;->mWasEmpty:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsLoader;->useThread()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    const-string v2, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runFilter update version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsLoader;->getDataVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide p2, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    goto :goto_0
.end method

.method private applyInvertColor()V
    .locals 15

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v13, :cond_7

    const v3, 0x7f0e002f

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_5

    const v13, 0x7f0200a7

    :goto_0
    invoke-virtual {p0, v13}, Lcom/android/launcher2/MenuWidgets;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_6

    const v13, 0x7f0200a5

    :goto_1
    invoke-virtual {p0, v13}, Lcom/android/launcher2/MenuWidgets;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v13, 0x7f0200a9

    invoke-virtual {p0, v13}, Lcom/android/launcher2/MenuWidgets;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBarDivider()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-instance v5, Landroid/graphics/LightingColorFilter;

    const/4 v13, 0x0

    invoke-direct {v5, v2, v13}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v9

    check-cast v9, Landroid/widget/SearchView;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v8}, Landroid/widget/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    invoke-virtual {v9}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuWidgets;->getWidgetCancelButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuWidgets;->getVoiceSearchButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetMoreButton()Landroid/view/ViewGroup;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v13, 0x7f1100c9

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget-object v13, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    invoke-virtual {v13, v14}, Lcom/android/launcher2/MenuWidgetsFragment;->applyInvertColor(Z)V

    :cond_4
    return-void

    :cond_5
    const v13, 0x7f0200a5

    goto/16 :goto_0

    :cond_6
    const v13, 0x7f0200a7

    goto :goto_1

    :cond_7
    const v3, 0x7f0e0012

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_8

    const v13, 0x7f0200a6

    :goto_3
    invoke-virtual {p0, v13}, Lcom/android/launcher2/MenuWidgets;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_9

    const v13, 0x7f0200a4

    :goto_4
    invoke-virtual {p0, v13}, Lcom/android/launcher2/MenuWidgets;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v13, 0x7f0200a8

    invoke-virtual {p0, v13}, Lcom/android/launcher2/MenuWidgets;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto/16 :goto_2

    :cond_8
    const v13, 0x7f0200a4

    goto :goto_3

    :cond_9
    const v13, 0x7f0200a6

    goto :goto_4
.end method

.method private beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    iget v7, p1, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    iput v7, v0, Lcom/android/launcher2/HomePendingItem;->spanX:I

    iget v7, p1, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    iput v7, v0, Lcom/android/launcher2/HomePendingItem;->spanY:I

    const v7, 0x7f11001e

    invoke-virtual {p1, v7}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v7, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Launcher.MenuWidgets"

    const-string v8, "skip longpress event for dragging because workspace is loading"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v7, Lcom/android/launcher2/ShadowBuilder;

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v2, v8}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v7}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v5, v9, v9}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->closeKeyboard(ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->setExtraClear()V

    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v7, v8, :cond_3

    iput-boolean v10, p0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    :cond_3
    invoke-virtual {v4, v10, v10}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v7, :cond_0

    new-instance v3, Lcom/android/launcher2/WidgetHostViewLoader;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    const/4 v8, 0x0

    check-cast v0, Lcom/android/launcher2/HomePendingWidget;

    invoke-direct {v3, v7, v8, v0}, Lcom/android/launcher2/WidgetHostViewLoader;-><init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/HomePendingWidget;)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->checkSingleWidget(Lcom/android/launcher2/PagedViewWidget;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetHostViewLoader;->preloadWidget()Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    goto :goto_0
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->handleScrollOnOrientationChange()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPageSpacingHint:I

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    const v1, 0x7f0a0143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingTop:I

    const v1, 0x7f0a014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingBottom:I

    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingLeft:I

    const v1, 0x7f0a014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingRight:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->relayoutOnConfigChange()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->syncPages()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageLayout()I

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    goto/16 :goto_0

    :cond_3
    const v1, 0x7f0a01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a0170

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    goto :goto_1
.end method

.method private checkSingleWidget(Lcom/android/launcher2/PagedViewWidget;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    instance-of v3, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->checkSingleInstanceAppWidgetWithoutPopup(Lcom/android/launcher2/HomePendingWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private clickNotAllowed(Landroid/view/View;)V
    .locals 8

    const v5, 0x7f0900d0

    const v4, 0x7f090006

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_1

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    const v3, 0x7f11001e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private getApplicationLabel(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string v4, "Launcher.MenuWidgets"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , Load from packageinfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->getLabelFromPackageInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDesiredChildPageHeight()I
    .locals 3

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredChildPageWidth()I
    .locals 3

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v3, p1

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private isGridSizeChanged()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    aget v3, v3, v1

    aget v4, v0, v1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    aget v3, v3, v2

    aget v4, v0, v2

    if-eq v3, v4, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    move v1, v2

    :cond_1
    return v1
.end method

.method private isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 15

    if-eqz p2, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$400(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Lcom/android/launcher2/PagedViewGridLayout;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$500(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I

    move-result v14

    invoke-direct {p0, v13, v14}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$500(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I

    move-result v7

    iget v13, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v14, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int/2addr v13, v14

    mul-int v4, v7, v13

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$400(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Lcom/android/launcher2/PagedViewGridLayout;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$600(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$600(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_3

    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/WidgetFolderView;

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$700(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderImage(Ljava/util/ArrayList;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PagedViewWidget;

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$700(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$800(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I

    move-result v14

    if-ge v13, v14, :cond_4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$900(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I

    move-result v14

    if-lt v13, v14, :cond_5

    :cond_4
    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v13

    if-ne v7, v13, :cond_6

    iget-object v13, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v14, v2, v4

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eq v13, v8, :cond_6

    const/4 v0, 0x1

    :goto_4
    iget-object v13, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v14, v2, v4

    invoke-virtual {v13, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v13, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v13, v8}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11, v13, v2, v10, v0}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    iget v13, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v14, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v5, v13, v14

    move v3, v2

    :goto_5
    if-ge v3, v5, :cond_8

    iget-object v13, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v14, v3, v4

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->onWidgetLoadPreviewComplete()V

    goto/16 :goto_0
.end method

.method private onWidgetLoadPreviewComplete()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->refreshWidgetStateView()V

    return-void
.end method

.method private openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 3

    new-instance v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/WidgetFolderView;->openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBar:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-nez v1, :cond_0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/WidgetFolderView;->openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    goto :goto_0
.end method

.method private relayoutOnConfigChange()V
    .locals 10

    const v9, 0x7f0a01c2

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x7f0a0170

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v2, v4, :cond_3

    :cond_0
    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->setPageZoom(F)V

    const v4, 0x7f0a03c1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v4, 0x7f0a03cf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v2, v4, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->setPageZoom(F)V

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v4, 0x7f0a03bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->setPageZoom(F)V

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    goto :goto_0
.end method

.method private setDisplayedWidgets(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->canUninstall()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    if-eq v2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->menuWidgetsUpdated(Z)V

    :cond_2
    return-void
.end method

.method private setMenuWidgetsAccessibilityEnabled(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuView;->setAccessibilityEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getComingPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static sortByValues(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    new-instance v4, Lcom/android/launcher2/MenuWidgets$1;

    invoke-direct {v4, v2}, Lcom/android/launcher2/MenuWidgets$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    move/from16 v26, v0

    mul-int v18, v25, v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const/16 v20, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    mul-int v20, p1, v18

    add-int v25, v20, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v7

    const-string v25, "Launcher.MenuWidgets"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "syncWidgetPageItems Page: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " immediate "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " subListOffsets "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v20

    if-le v0, v7, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViews()V

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_11

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/util/ArrayList;

    move/from16 v25, v0

    if-eqz v25, :cond_8

    const-string v25, "Launcher.MenuWidgets"

    const-string v26, " Creating Widget Folder View"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v19

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->get(ZLandroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/WidgetFolderView;

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/AvailableWidget;

    invoke-interface/range {v25 .. v25}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/launcher2/WidgetFolderView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x0

    if-eqz v22, :cond_1

    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v8, v0}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/WidgetFolderView;->getWidgetFolderTitle()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/launcher2/WidgetFolderView;->applyLabel(Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/launcher2/WidgetFolderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v25, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/launcher2/WidgetFolderView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v25, v0

    rem-int v13, v10, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v25, v0

    div-int v14, v10, v25

    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    sget-object v25, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v25

    sget-object v26, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v25, 0x33

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v25

    if-eqz v25, :cond_4

    if-lez v13, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    move/from16 v25, v0

    :goto_4
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_5
    if-lez v14, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    move/from16 v25, v0

    :goto_6
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v17

    invoke-virtual {v15, v9, v0}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/launcher2/WidgetFolderView;->enterUninstallMode(Z)V

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v9, v15, v0, v1, v2}, Lcom/android/launcher2/WidgetFolderView;->requestPreview(Lcom/android/launcher2/PagedViewGridLayout;Ljava/lang/Object;II)V

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v25, "Launcher.MenuWidgets"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "can not find "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , Load from packageinfo"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->getLabelFromPackageInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v8, v0}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v9}, Lcom/android/launcher2/WidgetFolderView;->getWidgetFolderTitle()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/WidgetFolderView;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_4

    :cond_4
    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    move/from16 v25, v0

    :goto_9
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    :cond_5
    const/16 v25, 0x0

    goto :goto_9

    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_7
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/launcher2/WidgetFolderView;->exitUninstallMode(Z)V

    goto/16 :goto_7

    :cond_8
    const-string v25, "Launcher.MenuWidgets"

    const-string v26, " Creating Widget View"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->get(ZLandroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v24

    check-cast v24, Lcom/android/launcher2/PagedViewWidget;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    :goto_a
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v5, v0, [I

    invoke-interface {v4, v5}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    aget v26, v5, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    aput v26, v5, v25

    const/16 v25, 0x1

    const/16 v26, 0x1

    aget v26, v5, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    aput v26, v5, v25

    const/16 v25, 0x0

    aget v25, v5, v25

    const/16 v26, 0x1

    aget v26, v5, v26

    invoke-virtual/range {v24 .. v26}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v25, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v25, v0

    rem-int v13, v10, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v25, v0

    div-int v14, v10, v25

    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    sget-object v25, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v25

    sget-object v26, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v0, v26

    invoke-static {v13, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v25, 0x33

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v25

    if-eqz v25, :cond_c

    if-lez v13, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    move/from16 v25, v0

    :goto_b
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_c
    if-lez v14, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    move/from16 v25, v0

    :goto_d
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    sget-boolean v25, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v25, :cond_9

    const-string v25, "Launcher.MenuWidgets"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; row: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", col: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", lm: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", tm: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_f

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/PagedViewWidget;->enterUninstallMode(Z)V

    :goto_e
    const v25, 0x7f11001d

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout;

    sget-boolean v25, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v25, :cond_10

    const v25, 0x7f020074

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v15, v4, v1, v2}, Lcom/android/launcher2/PagedViewWidget;->requestPreview(Lcom/android/launcher2/PagedViewGridLayout;Ljava/lang/Object;II)V

    goto/16 :goto_8

    :cond_a
    invoke-interface {v4}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_b

    :cond_c
    if-lez v13, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    move/from16 v25, v0

    :goto_10
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_c

    :cond_d
    const/16 v25, 0x0

    goto :goto_10

    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_d

    :cond_f
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/launcher2/PagedViewWidget;->exitUninstallMode(Z)V

    goto :goto_e

    :cond_10
    const v25, 0x7f020073

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_f

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    goto/16 :goto_0
.end method

.method private syncWidgetRotation(I)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v6, 0x7f0a0150

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    const v6, 0x7f0a014e

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v26, v6, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    mul-int v28, p1, v26

    add-int v6, v28, v26

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    const-string v6, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncWidgetPageItems Page: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " subListOffsets "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v28

    if-le v0, v14, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move/from16 v0, v28

    invoke-interface {v6, v0, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/PagedViewGridLayout;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v17

    if-ge v0, v6, :cond_e

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    const-string v6, "Launcher.MenuWidgets"

    const-string v8, " Creating Widget Folder View"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v27

    check-cast v24, Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04004c

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v6, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    check-cast v36, Lcom/android/launcher2/WidgetFolderView;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v19

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    const/4 v10, 0x0

    if-eqz v30, :cond_1

    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_2
    if-eqz v10, :cond_1

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;I)V

    :cond_1
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v6, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lcom/android/launcher2/WidgetFolderView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    rem-int v20, v17, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    div-int v21, v17, v6

    new-instance v25, Landroid/widget/GridLayout$LayoutParams;

    sget-object v6, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v21

    invoke-static {v0, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    sget-object v8, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v20

    invoke-static {v0, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-direct {v0, v6, v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const/16 v6, 0x33

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    if-lez v20, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_3
    move-object/from16 v0, v25

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_4
    if-lez v21, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_5
    move-object/from16 v0, v25

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move/from16 v2, v17

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    move-object/from16 v0, v35

    invoke-interface {v0, v8, v9}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_0
    move-exception v13

    const-string v6, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncWidgetRotation getApplicationInfo error e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    if-lez v20, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_7
    move-object/from16 v0, v25

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_7

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_7
    const-string v6, "Launcher.MenuWidgets"

    const-string v8, " Creating Widget View"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, v27

    check-cast v11, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Lcom/android/launcher2/PagedViewWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    :goto_9
    const/4 v6, 0x2

    new-array v12, v6, [I

    invoke-interface {v11, v12}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    aget v8, v12, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    const/16 v39, 0x0

    aget v9, v9, v39

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v12, v6

    const/4 v6, 0x1

    const/4 v8, 0x1

    aget v8, v12, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    const/16 v39, 0x1

    aget v9, v9, v39

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v12, v6

    const/4 v6, 0x0

    aget v6, v12, v6

    const/4 v8, 0x1

    aget v8, v12, v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v6, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v6, 0x7f11001e

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    invoke-virtual/range {v31 .. v31}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v33

    move/from16 v0, v38

    move-object/from16 v1, v33

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v37

    move-object/from16 v1, v33

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    rem-int v20, v17, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    div-int v21, v17, v6

    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher2/PagedViewWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/GridLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_a

    if-lez v20, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_a
    move-object/from16 v0, v25

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_b
    if-lez v21, :cond_c

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_c
    move-object/from16 v0, v25

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    const/high16 v6, -0x80000000

    invoke-static {v6}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v25

    iput-object v6, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/high16 v6, -0x80000000

    invoke-static {v6}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v25

    iput-object v6, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    const/16 v6, 0x33

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f11001d

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/FrameLayout;

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v6, :cond_d

    const v6, 0x7f020074

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    invoke-interface {v11, v6, v8}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_8
    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    :cond_a
    if-lez v20, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_e
    move-object/from16 v0, v25

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    goto :goto_e

    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    :cond_d
    const v6, 0x7f020073

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_d

    :cond_e
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    new-instance v4, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;II)V

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->access$702(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string v6, "rotation"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v6, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private testDataReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCellSpan()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v7, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateCellSpan : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_1
    if-ltz v3, :cond_1

    invoke-virtual {v5, v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    new-array v0, v7, [I

    move-object v7, v4

    check-cast v7, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v7, :cond_0

    move-object v7, v4

    check-cast v7, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomePendingWidget;

    move-object v6, v7

    check-cast v6, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {v6}, Lcom/android/launcher2/HomePendingWidget;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v7, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v7, v2, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    aget v8, v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v0, v10

    aget v7, v0, v11

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    aget v8, v8, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v0, v11

    check-cast v4, Lcom/android/launcher2/PagedViewWidget;

    aget v7, v0, v10

    aget v8, v0, v11

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateDirtyPage()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePageCounts()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    return-void
.end method

.method private updatePageLayout()I
    .locals 6

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mIsDataReady:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mContentIsRefreshable:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mNextPage:I

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateWidgetGridChildCount()I

    move-result v3

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateDirtyPage()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    :cond_2
    return v3
.end method

.method private updateWidgetGridChildCount()I
    .locals 20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    move/from16 v18, v0

    mul-int v12, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    rem-int v9, v16, v12

    div-int v18, v16, v12

    if-nez v9, :cond_0

    const/16 v17, 0x0

    :goto_0
    add-int v13, v18, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    const/4 v14, 0x0

    sub-int v6, v13, v4

    move v14, v6

    :goto_1
    if-eqz v6, :cond_2

    if-lez v6, :cond_1

    new-instance v10, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedViewGridLayout;->setViewRecycler(Lcom/android/launcher2/ViewRecycler;)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v11}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->removeViewAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v18, v4, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    sub-int v6, v12, v8

    :goto_3
    if-eqz v6, :cond_7

    if-lez v6, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040007

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v3, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    if-nez v9, :cond_5

    sub-int v6, v12, v8

    :goto_4
    if-eqz v6, :cond_7

    if-lez v6, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040007

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    invoke-virtual {v3, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_5
    sub-int v6, v9, v8

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    return v14
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/WidgetFolder;->addFocusables(Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public adjPageMemory(IZ)V
    .locals 6

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->isGridSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateCellSpan()V

    :cond_0
    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    if-nez p1, :cond_4

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mPageSize:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/MenuWidgets;->mPageSize:I

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    if-eq v3, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mPageSize:I

    if-eq v3, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->loadAssociatedPages(I)V

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$ItemViewPool;->clear()V

    :cond_2
    const-string v3, "Launcher.MenuWidgets"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adj optimizePage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v4, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget size : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :cond_5
    const-string v3, "None"

    goto :goto_1
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher.MenuWidgets"

    const-string v1, "This widget state is Uninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeToWidgetStateNormal()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    return-void
.end method

.method public changeToWidgetStateSearch()V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "WGSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    return-void
.end method

.method cleanupCache(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Launcher.MenuWidgets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupCache who: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public clearAccessibilityFocus()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v4, "Launcher.MenuWidgets"

    const-string v5, "Try to clear accessibility focus in widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public closeFolder(Z)Z
    .locals 5

    const/4 v2, 0x0

    const-string v1, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close Widget Folder  -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/WidgetFolder;->animateClose(Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->closeFolder()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    const v0, 0x7f09003a

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getComingPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGridSize()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mGridSizeXY:[I

    return-object v0
.end method

.method public getLabelFromPackageInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_1
    return-object v4

    :cond_0
    const/16 v2, 0x2000

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Launcher.MenuWidgets"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLabelFromPackageInfo getPackageInfo error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "Launcher.MenuWidgets"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLabelFromPackageInfo getPackageInfo error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getPageCacheSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPageCacheSize:I

    return v0
.end method

.method public getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchBarBgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchBarBgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getVoiceSearchButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 4

    :try_start_0
    const-class v2, Landroid/widget/SearchView;

    const-string v3, "mVoiceButton"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "SearchView"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SearchView"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getWidgetCancelButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 4

    :try_start_0
    const-class v2, Landroid/widget/SearchView;

    const-string v3, "mCloseButton"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "SearchView"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SearchView"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getWidgetFolder()Lcom/android/launcher2/WidgetFolder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v0
.end method

.method public getWidgetMoreButton()Landroid/view/ViewGroup;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    const-string v3, "titleBar is not exist : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f1100aa

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getWidgetSearchBar()Landroid/view/ViewGroup;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    const-string v3, "titleBar is not exist : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f1100aa

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getWidgetSearchBarDivider()Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    const-string v3, "titleBar is not exist : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f1100aa

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    return-object v0
.end method

.method getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleKeyEvent(I)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsSearch;->requestFocusSearchEdit()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 9

    const v8, 0x7f0a0170

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v5, "Launcher.MenuWidgets"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State change from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v4

    invoke-virtual {v4, p2, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq p1, v4, :cond_4

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne p1, v4, :cond_9

    :cond_4
    const v4, 0x7f0a03c1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v4, 0x7f0a03cf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    :cond_5
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void

    :cond_7
    const-string v4, "UNKNOWN"

    goto/16 :goto_0

    :cond_8
    const-string v4, "UNKNOWN"

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne p1, v4, :cond_5

    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const v4, 0x7f0a03bf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v4, 0x7f0a01c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    goto :goto_2
.end method

.method public hasSearchString()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasUninstallableWidgets()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    return v0
.end method

.method public isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected normalTransform(Landroid/view/View;F)V
    .locals 14

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v9, v10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v3

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v10, :cond_4

    sub-int v10, v4, v3

    add-int/lit8 v2, v10, -0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v10, 0x3f000000    # 0.5f

    int-to-float v11, v6

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    int-to-float v12, v6

    mul-float/2addr v11, v12

    int-to-float v12, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-static {v10, v11, v12}, Lcom/android/launcher2/MenuWidgets;->mix(FFF)F

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotX(F)V

    int-to-float v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {p1, v10}, Landroid/view/View;->setPivotY(F)V

    if-nez v2, :cond_5

    const/4 v10, 0x0

    cmpg-float v10, p2, v10

    if-gez v10, :cond_5

    neg-float v10, v9

    mul-float v10, v10, p2

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v10

    int-to-float v8, v10

    const/4 v1, 0x1

    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/launcher2/MenuWidgets;->mPageZoom:F

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    if-nez v1, :cond_2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v7

    mul-float v10, v10, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40200000    # 2.5f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    sub-float/2addr v11, v12

    const v12, 0x3e4ccccd    # 0.2f

    add-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {p1, v10}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_6

    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-lez v10, :cond_6

    neg-float v10, v9

    mul-float v10, v10, p2

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v10

    iget v11, p0, Lcom/android/launcher2/MenuWidgets;->mMaxScrollX:I

    sub-int/2addr v10, v11

    int-to-float v8, v10

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v2, p1, Lcom/android/launcher2/PagedViewWidget;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDataReady(II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->closeKeyboard(ZZ)V

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mScaleFactor:F

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mActionUpOnScroll:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isDataReady()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->setDataIsReady()V

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->setMeasuredDimension(II)V

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->onDataReady(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v6

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageHeight()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumHeight(I)V

    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingTop:I

    iget v9, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingBottom:I

    invoke-virtual {v0, v10, v8, v10, v9}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x33

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingTop:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingLeft:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingRight:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageBeginMoving()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/WidgetFolder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mActionUpOnScroll:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 5

    const-string v2, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MenuWidgets::onTouchModeChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->onTouchModeChanged(Z)V

    :cond_0
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewGridLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->acceleratedOverScroll(F)V

    return-void
.end method

.method public packagesChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mPackagesChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mPackagesChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshModel()V

    :cond_0
    return-void
.end method

.method public refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshView()V

    :cond_0
    return-void
.end method

.method public removeFocusChangeListener()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method protected repositionOpenFolder()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->repositionOpenFolder()V

    :cond_0
    return-void
.end method

.method public runFilter()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    if-nez v4, :cond_3

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mIsChangeStatus:Z

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->updateMoreButtonState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v4, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->setVisibilityOfSearchNoti(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    new-instance v2, Lcom/android/launcher2/MenuWidgets$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuWidgets$4;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mIsChangeStatus:Z

    if-nez v4, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v4, v5}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData()V

    goto :goto_1
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V

    return-void
.end method

.method public setDirtyCurrentPage()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    return-void
.end method

.method public setHasUninstallableWidgets(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    return-void
.end method

.method public setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->saveSoftInputParam()V

    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$6;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->syncWidgetPageItems(IZ)V

    return-void
.end method

.method public syncPages()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->removeAllViews()V

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    if-ge v1, v4, :cond_1

    new-instance v2, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mItemViewPool:Lcom/android/launcher2/MenuWidgets$ItemViewPool;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setViewRecycler(Lcom/android/launcher2/ViewRecycler;)V

    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateMoreButtonState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    const v5, 0x7f11009e

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    const v4, 0x7f1100aa

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f110114

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f1100c9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->hasSearchString()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method public updatePackages(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v7, -0x1

    iget-boolean v8, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " updatePackages"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    :goto_1
    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mWasEmpty:Z

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuWidgetsFragment;->isAdded()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v7, "Launcher.MenuWidgets"

    const-string v8, "Launcher model is reloading becuase of configuration change ( ex. mcc/mnc update )"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->useThread()Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v12}, Lcom/android/launcher2/MenuWidgetsLoader;->getAvailableWidgetList(Ljava/util/List;Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;)V

    const-wide/16 v8, -0x1

    invoke-direct {p0, v3, v8, v9}, Lcom/android/launcher2/MenuWidgets;->addWidgetList(Ljava/util/List;J)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->useThread()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "onCreateView"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mLoadingListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/MenuWidgetsLoader;->setLoadingListener(Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;)V

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->loadMenuWidgets()V

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->getWidgetList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->getDataVersion()J

    move-result-wide v8

    invoke-direct {p0, v1, v8, v9}, Lcom/android/launcher2/MenuWidgets;->addWidgetList(Ljava/util/List;J)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->useThread()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->getDataVersion()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    const-string v7, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update self : version("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->getDataVersion()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/launcher2/MenuWidgets;->mDataVersion:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " who : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v12}, Lcom/android/launcher2/MenuWidgetsLoader;->getAvailableWidgetList(Ljava/util/List;Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;)V

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->getDataVersion()J

    move-result-wide v8

    invoke-direct {p0, v3, v8, v9}, Lcom/android/launcher2/MenuWidgets;->addWidgetList(Ljava/util/List;J)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsLoader;->getWidgetList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    if-eqz v8, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    const-string v7, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widgetInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v6, v7

    goto :goto_2

    :cond_8
    move v5, v7

    goto :goto_3
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->zoomoutTransform(Landroid/view/View;F)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->normalTransform(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->zoomoutTransform(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected updatePageTransformZoomEffect(Landroid/view/View;F)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v4, p2, v7

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    const v4, 0x3dcccccd    # 0.1f

    sget-object v5, Lcom/android/launcher2/MenuWidgets;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x41500000    # 13.0f

    div-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->maxOverScroll()F

    move-result v5

    div-float/2addr v4, v5

    sub-float v2, v7, v4

    const v4, 0x3f7ae148    # 0.98f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    div-float v4, p2, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v4, v2, v7

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isFastScrolling()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    sub-float v4, v7, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_2
.end method

.method protected zoomoutTransform(Landroid/view/View;F)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v4

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_2

    sub-int v13, v8, v4

    add-int/lit8 v3, v13, -0x1

    :goto_1
    if-nez v3, :cond_3

    const/4 v13, 0x0

    cmpg-float v13, p2, v13

    if-gez v13, :cond_3

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v13, v8, -0x1

    if-ne v3, v13, :cond_4

    const/4 v13, 0x0

    cmpl-float v13, p2, v13

    if-lez v13, :cond_4

    const/4 v7, 0x1

    :goto_3
    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v13, p2, v13

    if-gez v13, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, p2, v13

    if-gtz v13, :cond_c

    if-nez v6, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/MenuWidgets;->updatePageTransformZoomEffect(Landroid/view/View;F)V

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v13

    if-ne v13, v4, :cond_a

    const/4 v5, 0x1

    :goto_5
    const v13, 0x3f7d70a4    # 0.99f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x41000000    # 8.0f

    div-float v15, p2, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/MenuWidgets;->mActionUpOnScroll:Z

    if-nez v13, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/MenuWidgets;->mScaleFactor:F

    const v14, 0x3f7d70a4    # 0.99f

    invoke-static {v13, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/MenuWidgets;->mScaleFactor:F

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/MenuWidgets;->mActionUpOnScroll:Z

    if-nez v13, :cond_9

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/MenuWidgets;->mScaleFactor:F

    :cond_9
    int-to-float v13, v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v12, v13, v14

    int-to-float v13, v10

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v2, v13, v14

    const/4 v13, 0x0

    cmpg-float v13, p2, v13

    if-gez v13, :cond_b

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v12, v13

    sub-float v13, v2, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    neg-float v13, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v12, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4
.end method
