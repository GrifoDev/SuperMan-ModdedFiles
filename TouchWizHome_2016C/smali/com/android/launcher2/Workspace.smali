.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;,
        Lcom/android/launcher2/Workspace$CellOrient;,
        Lcom/android/launcher2/Workspace$SwipeListener;,
        Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;,
        Lcom/android/launcher2/Workspace$StateChangeRunnable;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$StateAnimatorProvider;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$BindWidgetsState;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final DEBUG_WP:Z = false

.field private static final DEBUG_WP_TAG:Ljava/lang/String; = "Launcher.WS.DebugWp"

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field private static final MOVE_FROM_HOMEPAGE:I = 0x2

.field private static final MOVE_FROM_ZEROPAGE:I = 0x1

.field private static final MOVE_NONE:I = 0x0

.field private static final MOVE_TO_CONTINUE:I = 0x16

.field private static final MOVE_TO_HOMEPAGE:I = 0x8

.field private static final MOVE_TO_ZEROEPAGE:I = 0x4

.field private static final PAGE_ROTATION:F = 15.0f

.field private static final PAGE_SNAP_MOVING_RATIO:F = 0.28f

.field protected static final PAGE_SNAP_VALUE_ANIMATION_DURATION:I = 0x12c

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static STATE_CHANGE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field private static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.98f

.field private static final TRANSITION_MIN_SCALE:F = 0.99f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field static final kPageZoomScaleLimit:F = 0.7f

.field private static mSineIO70Interpolator:Landroid/view/animation/Interpolator;

.field private static mSineIO80Interpolator:Landroid/view/animation/Interpolator;

.field private static sFolderCloseLock:Ljava/lang/Object;

.field static final sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;


# instance fields
.field private WIDGET_BINDER:Ljava/lang/Runnable;

.field private endPage:Z

.field private isStartDragStarted:Z

.field leftMove:Z

.field private mActionUpOnScroll:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackgroundDarken:F

.field private mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

.field private mCreatedPageForDragViewIndex:I

.field private mCurrentOrientation:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDetector:Landroid/view/GestureDetector;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownX:I

.field private mDragBarSize:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragScrollDrawInward:F

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mEditModePanel_left_Adjust:I

.field private mEditModePanel_top_Adjust:I

.field private mEditModeShrinkFactor:F

.field private mExitResizeDueToNewDrag:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFastScrollDrawInward:F

.field private mFixedWallpaper:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mInScrollArea:Z

.field private mInterceptedTouchEvent:Z

.field private mIsDragOccuring:Z

.field private mIsDroppedOnEditBar:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mLastDownX:I

.field private mLastDownY:I

.field private mMobileKeyboardConfig:I

.field private mMovedToVirtualScreen:Z

.field private mMovingState:I

.field private mMultiTouchUsed:Z

.field private mNormalScrollDrawInward:F

.field private mOldState:Lcom/android/launcher2/Workspace$State;

.field private mPageIndicatorTop:I

.field private mPageIndicatorTopDrag:I

.field public mPendingSnapToPageIndex:I

.field private mPendingWidgetCheckForState:Z

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPreValues:I

.field private mPreviousOrientation:I

.field private mRequestedOrientation:I

.field private mScaleFactor:F

.field private mShrinkTranslateX:F

.field private mShrinkTranslateY:F

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Workspace$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStateAfterFirstLayout:Z

.field private mTempCell:[I

.field private mTouchDowned:Z

.field private mTouchPointDistance:I

.field private mUpdateWallpaperOffsetImmediately:Z

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperTravelWidth:I

.field private mWallpaperWidth:I

.field private mWidgetDropDuration:I

.field private mWidgetSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field protected mZeroPageDialog:Landroid/app/AlertDialog;

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

.field swipeAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Workspace;->DEBUGGABLE:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sFolderCloseLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v4, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    iput-object v11, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsDroppedOnEditBar:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    iput-object v11, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    iput v7, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    const v4, 0x3ee66666    # 0.45f

    iput v4, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    const v4, 0x3e4ccccd    # 0.2f

    iput v4, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    const v4, 0x3f333333    # 0.7f

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDragScrollDrawInward:F

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    iput v7, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopDrag:I

    iput v10, p0, Lcom/android/launcher2/Workspace;->mScaleFactor:F

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mActionUpOnScroll:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMobileKeyboardConfig:I

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v5, v9, v6, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mSineInOut80:Landroid/view/animation/Interpolator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v5, v9, v6, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mSineInOut90:Landroid/view/animation/Interpolator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v4, v5, v9, v6, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput-object v11, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    iput v7, p0, Lcom/android/launcher2/Workspace;->mDownX:I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mLastDownY:I

    iput v7, p0, Lcom/android/launcher2/Workspace;->mPreValues:I

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mTouchDowned:Z

    iput-object v11, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    const/16 v4, 0xfa

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWidgetDropDuration:I

    new-instance v4, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    iput v9, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    new-instance v4, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v4}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    new-instance v4, Lcom/android/launcher2/Workspace$22;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$22;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    iput-boolean v7, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v7}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SmallestWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ScreenSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DensityDpi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getExtraShrinkFactor()F

    move-result v4

    const v5, 0x7f0b001e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    const v4, 0x7f0c0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    const v4, 0x7f090115

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    const v4, 0x7f090116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopDrag:I

    const v4, 0x7f0901c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    const v4, 0x7f0901c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-static {p1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v4, v0, v7

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    aget v4, v0, v8

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    iget v4, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    if-nez v4, :cond_1

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    :cond_1
    iget v4, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    const v4, 0x7f0900f3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mPreviousOrientation:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMobileKeyboardConfig:I

    :cond_2
    const v4, 0x7f0a000a

    invoke-virtual {v3, v4, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    const/high16 v4, 0x7f0a0000

    invoke-virtual {v3, v4, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDragScrollDrawInward:F

    sget-object v4, Lcom/android/launcher2/PagedView$TransitionEffect;->PLAIN:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0b0074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWidgetDropDuration:I

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->initGestures(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSineInOut80:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Workspace;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSineInOut90:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$BindWidgetsState;)Lcom/android/launcher2/Workspace$BindWidgetsState;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/launcher2/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/launcher2/Workspace;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/launcher2/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mPreValues:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/launcher2/Workspace;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/Workspace;->mPreValues:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateBackground(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private adjustScrollPrograss(F)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v2, Lcom/android/launcher2/PagedView$TransitionEffect;->INNERCUBE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v0, v1, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method private backgroundAlphaInterpolator(F)F
    .locals 4

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    .locals 9

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->topMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p2, v3}, Lcom/android/launcher2/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->leftPadding:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->topPadding:I

    iget v7, p3, Lcom/android/launcher2/Workspace$CellOrient;->rightPadding:I

    iget v8, p3, Lcom/android/launcher2/Workspace$CellOrient;->bottomPadding:I

    invoke-virtual {p2, v5, v6, v7, v8}, Lcom/android/launcher2/CellLayout;->setPadding(IIII)V

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_6

    invoke-virtual {p2, v2}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    instance-of v5, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeWidgetItem;->unbind()V

    if-eqz p4, :cond_2

    check-cast v4, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    check-cast v4, Lcom/android/launcher2/HomeItem;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/FolderIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->refresh()V

    goto :goto_1

    :cond_4
    instance-of v5, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget-object v5, v4, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v5, :cond_5

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    :cond_5
    move-object v5, v0

    check-cast v5, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/AppIconView;->updateMovieValues()V

    check-cast v0, Lcom/android/launcher2/AppIconView;

    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->updateWorkspaceMargin(Z)V

    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)Z
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v10

    const-string v12, "Launcher.Workspace"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "changeOrientationIfRequired MobileKeyboardChanged : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   DisplayHeight : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  Density : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   newConfig.orientation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mMobileKeyboardConfig:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v12, v13, :cond_0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/IconConfig;->refreshAll()V

    :cond_0
    move-object/from16 v0, p1

    iget v12, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mMobileKeyboardConfig:I

    :cond_1
    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    if-eq v12, v13, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v12

    if-nez v12, :cond_5

    :cond_2
    const-string v12, "Launcher.Workspace"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ChangeMobileKeyboard:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mCurrentOrientation:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mRequestedOrientation:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " newConfig.orientation:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isShown:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "QuickViewWorkspace isOpened: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v12

    if-eqz v12, :cond_4

    const v12, 0x7f0901d7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f090113

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    :cond_3
    :goto_0
    const/4 v12, 0x0

    :goto_1
    return v12

    :cond_4
    const v12, 0x7f090117

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f090113

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mPreviousOrientation:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v12, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-nez v12, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->loadWidgetSkipList()Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->setWorkspaceLoading()V

    const v12, 0x7f09011d

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mPageSpacingHint:I

    const v12, 0x7f090115

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    new-instance v2, Lcom/android/launcher2/Workspace$CellOrient;

    const/4 v12, 0x0

    invoke-direct {v2, v12}, Lcom/android/launcher2/Workspace$CellOrient;-><init>(Lcom/android/launcher2/Workspace$1;)V

    const v12, 0x7f0e0007

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0007

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v12, v13, :cond_9

    const v12, 0x7f0e0013

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0013

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0014

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0014

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    const v12, 0x7f09022f

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    const v12, 0x7f09022e

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    const v12, 0x7f0900e7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    const v12, 0x7f0900ea

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    :goto_2
    const v12, 0x7f09011a

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->leftPadding:I

    const v12, 0x7f09011c

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->topPadding:I

    const v12, 0x7f09011b

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->rightPadding:I

    const v12, 0x7f090119

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->bottomPadding:I

    const v12, 0x7f090118

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v11

    if-eqz v11, :cond_8

    iget v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    iget v13, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    iget v14, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    iget v15, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/launcher2/WorkspaceSpanCalculator;->setCellSize(IIII)V

    :cond_8
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-ne v6, v4, :cond_b

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1, v2, v12}, Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v12, v13, :cond_a

    const v12, 0x7f0e0013

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0013

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0014

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0014

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    const v12, 0x7f090233

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    const v12, 0x7f090232

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    const v12, 0x7f090231

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    const v12, 0x7f0900ea

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    goto/16 :goto_2

    :cond_a
    const v12, 0x7f0e0005

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0005

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0006

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    const v12, 0x7f0e0006

    invoke-static {v3, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    const v12, 0x7f0900f0

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    const v12, 0x7f0900ed

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    const v12, 0x7f0900e7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    const v12, 0x7f0900ea

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, v2, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    goto/16 :goto_2

    :cond_b
    new-instance v12, Lcom/android/launcher2/Workspace$19;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v8, v1, v2}, Lcom/android/launcher2/Workspace$19;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_c
    new-instance v12, Lcom/android/launcher2/Workspace$20;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/android/launcher2/Workspace$20;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$CellOrient;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    sget-boolean v12, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-nez v12, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v12

    if-eqz v12, :cond_10

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/Hotseat;->reloadLayout()V

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->handleScrollOnOrientationChange()V

    const v12, 0x7f0900f3

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_14

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v12

    if-eqz v12, :cond_13

    const v12, 0x7f0901d7

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f090113

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    :goto_6
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/IconMoveContainer;->onConfigurationChanged()V

    :cond_e
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static {}, Lcom/android/launcher2/QuickOptionsPopup;->isValidState()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->repositionQuickOptionsOnRotation()V

    :cond_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mPreviousOrientation:I

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->reConfigureHotseat()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v12}, Lcom/android/launcher2/HomeEditBar;->reloadLayout(I)V

    :cond_11
    move-object/from16 v0, p1

    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v12}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PageIndicator;->setEnableTouch(Z)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v12}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PageIndicator;->setEnableTouch(Z)V

    goto/16 :goto_5

    :cond_13
    const v12, 0x7f090117

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v13, 0x7f090113

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    const v13, 0x7f090113

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    goto/16 :goto_6
.end method

.method private changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1060012

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09022f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09022e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    move v3, v4

    move v1, v2

    const v9, 0x7f090011

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v11, v5

    sub-int v12, v3, v5

    int-to-float v12, v12

    sub-int v13, v1, v5

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v10, v8

    int-to-float v11, v8

    iget-object v12, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v9, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v9, v0, p1, v6}, Lcom/android/launcher2/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v9, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090233

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090232

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900f0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;ZI)V
    .locals 21

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/4 v9, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p1

    check-cast v17, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v10

    check-cast p1, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mIconDestination:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v10

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    if-eqz v14, :cond_2

    instance-of v0, v14, Lcom/android/launcher2/CellLayoutMoveApps;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/IconMoveContainer;->getIconSize()I

    move-result v10

    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v6, v10, v10, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v9, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v9, v6}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    if-eqz v9, :cond_4

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_5
    if-eqz v14, :cond_1

    instance-of v0, v14, Lcom/android/launcher2/CellLayoutHotseat;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v10

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/BaseItem;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_7

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    :cond_7
    const/4 v12, 0x1

    :goto_3
    if-eqz p3, :cond_9

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mIconTrayEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsDefaultTheme()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020079

    invoke-static/range {v17 .. v18}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    check-cast p1, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v11

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v6, v11, v11, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v9, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v9, v6}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    :cond_9
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v8, v18, v17

    if-eqz v8, :cond_a

    move-object v9, v8

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/appwidget/AppWidgetHostView;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v16, p1

    check-cast v16, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v17

    move-object/from16 v0, v17

    iget v15, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v5

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v17, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual/range {p1 .. p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method private getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private getExtraShrinkFactor()F
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09031a

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getHomeItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    instance-of v4, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/android/launcher2/HomeItem;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getPivotValueX(FI)F
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    int-to-float v0, p2

    goto :goto_0

    :pswitch_2
    int-to-float v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPivotValueY(FI)F
    .locals 2

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getRotationValue(FF)F
    .locals 7

    const v6, 0x7f0b0073

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    if-eqz v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    neg-float v0, v2

    goto :goto_0

    :pswitch_1
    neg-float v0, p2

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v1, v2

    div-float v2, v1, v5

    neg-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v3

    div-float v0, v2, v3

    goto :goto_0

    :pswitch_2
    move v0, p2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    if-eqz v2, :cond_2

    cmpl-float v2, p1, v4

    if-gez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    if-nez v2, :cond_4

    cmpg-float v2, p1, v4

    if-gez v2, :cond_4

    :cond_3
    neg-float v0, p2

    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v1, v2

    div-float v2, v1, v5

    neg-float v2, v2

    mul-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v3

    div-float v0, v2, v3

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getScrollDrawInward()F
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    :pswitch_1
    const v0, 0x3ccccccd    # 0.025f

    goto :goto_0

    :pswitch_2
    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getScrollRange()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getTranslationValueDeltaX(FF)F
    .locals 5

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    sub-float v1, v3, p2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr p2, v1

    :cond_0
    sub-float v1, v3, p2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_3
    sub-float v1, v3, p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_4
    sub-float v1, v3, p2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    mul-float v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private getTranslationValueX(FF)F
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CASCADE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    if-eqz v2, :cond_0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    if-nez v2, :cond_2

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_2

    :cond_1
    move v1, p2

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    move p2, v1

    :cond_4
    :goto_1
    move v1, p2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    sub-int/2addr v1, v2

    int-to-float p2, v1

    goto :goto_1
.end method

.method private getTranslationValueY(FF)F
    .locals 5

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    sub-float v1, v3, p2

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    sub-float v1, v3, p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    sub-float v1, v3, p2

    iget v2, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    mul-float v0, v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method private getZoomValueX(FF)F
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    sget-object v3, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    mul-float/2addr v2, v3

    sub-float v1, p2, v2

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, p2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const v3, 0x3c23d70a    # 0.01f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr p2, v2

    :cond_2
    move v1, p2

    goto :goto_0

    :pswitch_3
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    mul-float/2addr v2, v3

    sub-float v1, p2, v2

    goto :goto_0

    :pswitch_4
    move v1, p2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private getZoomValueY(FF)F
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    sget-object v3, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v5

    mul-float/2addr v2, v6

    sub-float v1, p2, v2

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, p2

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    const v3, 0x3c23d70a    # 0.01f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr p2, v2

    :cond_2
    move v1, p2

    goto :goto_0

    :pswitch_3
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    mul-float/2addr v2, v3

    sub-float v1, p2, v2

    goto :goto_0

    :pswitch_4
    move v1, p2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 8

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    :cond_2
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Launcher.Workspace"

    const-string v5, "Folder info marked as open, but associated folder is not open."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v4

    if-nez v4, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, p2}, Lcom/android/launcher2/Launcher;->setClickedView(Lcom/android/launcher2/FolderIconView;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->setStateBeforeClick(Lcom/android/launcher2/Workspace$State;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    const/16 v4, 0x70

    const-string v5, "request_unlock"

    invoke-virtual {v1, v4, p1, p2, v5}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0
.end method

.method private initGestures(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x3e7

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    const-string v2, "swipe_up"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    const-string v2, "swipe_down"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    const-string v2, "doubletap"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v1, v1, v5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->swipeAction:[I

    aget v1, v1, v6

    if-eq v1, v3, :cond_1

    :cond_0
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/launcher2/Workspace$SwipeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/Workspace$SwipeListener;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$SwipeListener;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDetector:Landroid/view/GestureDetector;

    :cond_1
    return-void
.end method

.method private initWorkspace()V
    .locals 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->initCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    new-instance v1, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mSnapVelocity:I

    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ar/ARHelper;->visibilityChanged(I)V

    :cond_0
    return-void
.end method

.method private isGoogleSearchWidget(I)Z
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v7, :cond_2

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private loadAnimationOnThis(I)Landroid/animation/Animator;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    return-object v0
.end method

.method private loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_2

    :cond_1
    if-ne v7, v11, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadWhenRotationSkipList. Process tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v8, "appwidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadWidgetSkipList()Z
    .locals 9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const-string v7, "widget_skip"

    invoke-static {v4, v7}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object v3, v4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_2

    :cond_1
    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "when_rotation"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/android/launcher2/Workspace;->loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v6, 0x0

    :cond_2
    return v6

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private moveToVirtualScreen(I)V
    .locals 13

    const/4 v6, 0x0

    const/16 v12, -0x44c

    const/16 v11, -0x898

    const v10, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/launcher2/Workspace;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v3, v7

    iget v7, p0, Lcom/android/launcher2/Workspace;->mDownX:I

    sub-int v1, p1, v7

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_8

    if-lez v1, :cond_9

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x44c

    iget v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_c

    if-gt v3, v12, :cond_d

    :cond_2
    iget v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    :cond_3
    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v7, :cond_11

    iget v6, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    :cond_4
    iget v6, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    :cond_5
    iget v5, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v5, v5, 0x16

    const/16 v6, 0x16

    if-ne v5, v6, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    :goto_2
    const/16 v5, 0x12c

    invoke-virtual {p0, v1, v5, v2}, Lcom/android/launcher2/Workspace;->animatePage(IIZ)V

    return-void

    :cond_8
    if-ltz v1, :cond_0

    :cond_9
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_a

    neg-int v7, v4

    if-ge v1, v7, :cond_1

    :goto_3
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_b

    neg-int v1, v4

    :goto_4
    goto :goto_0

    :cond_a
    if-le v1, v4, :cond_1

    goto :goto_3

    :cond_b
    move v1, v4

    goto :goto_4

    :cond_c
    const/16 v7, 0x44c

    if-ge v3, v7, :cond_2

    :cond_d
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_f

    const/16 v7, 0x44c

    if-lt v3, v7, :cond_10

    :cond_e
    iget v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    goto :goto_1

    :cond_f
    if-le v3, v12, :cond_e

    :cond_10
    iget v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    or-int/lit8 v7, v7, 0x16

    iput v7, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    goto :goto_1

    :cond_11
    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_14

    const/16 v7, 0x898

    if-ge v3, v7, :cond_13

    if-le v3, v11, :cond_12

    neg-int v7, v1

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_13

    :cond_12
    move v2, v5

    :goto_5
    goto :goto_2

    :cond_13
    move v2, v6

    goto :goto_5

    :cond_14
    if-le v3, v11, :cond_16

    const/16 v7, 0x898

    if-ge v3, v7, :cond_15

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_16

    :cond_15
    move v2, v5

    :goto_6
    goto :goto_2

    :cond_16
    move v2, v6

    goto :goto_6
.end method

.method private onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method private reConfigureHotseat()V
    .locals 10

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    invoke-virtual {v5, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v0}, Lcom/android/launcher2/HomeView;->setHotseat(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/Workspace;->getHomeItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800005

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v8

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v8, v7}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->restoreStateForOpenVisualize()V

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    goto/16 :goto_0
.end method

.method private repositionQuickOptionsOnRotation()V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsPopup;->getAnchorView()Lcom/android/launcher2/AppIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    new-instance v2, Lcom/android/launcher2/Workspace$21;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher2/Workspace$21;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickOptionsPopup;Lcom/android/launcher2/HomeItem;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private resetTouchState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mTouchDowned:Z

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    return-void
.end method

.method private setScrollDirection(I)V
    .locals 0

    return-void
.end method

.method private setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Workspace$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    const-string v3, "syncWallpaperOffsetWithScroll"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateBackground(Lcom/android/launcher2/Workspace$State;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    sget v3, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq p1, v4, :cond_0

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p1, v4, :cond_0

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v4, :cond_1

    :cond_0
    sget v3, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->changeBackgroundDrawable(I)V

    sget v4, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    if-ne v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setBackgroundAlpha(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 23

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    move/from16 v19, v0

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    invoke-virtual/range {v20 .. v22}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v15

    const/4 v14, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    int-to-float v0, v7

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v14, v14, v20

    mul-int/lit8 v20, v7, 0x2

    add-int v15, v15, v20

    :cond_1
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v20

    mul-int v18, v20, v11

    if-lez v16, :cond_6

    rem-int v17, v16, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Scroller;->isFinished()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    sub-int v12, v17, v20

    const/high16 v20, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v9, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v4, v0

    :cond_2
    :goto_1
    int-to-float v2, v4

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v20, v2, v20

    add-float v13, v20, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v21, v0

    sub-int v21, v21, v19

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v6, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v5, v6, v20

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v5, 0x0

    :cond_3
    return v5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v22}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    goto/16 :goto_0

    :cond_5
    move/from16 v4, v17

    goto :goto_1

    :cond_6
    if-gez v16, :cond_2

    rem-int v20, v16, v18

    add-int v4, v18, v20

    goto :goto_1

    :cond_7
    move/from16 v4, v16

    goto :goto_1
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1

    const v0, 0x3f8ccccd    # 1.1f

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9

    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    const v0, 0x3fcccccd    # 1.6f

    const/high16 v1, 0x3f200000    # 0.625f

    const/high16 v2, 0x3fc00000    # 1.5f

    const v3, 0x3f99999a    # 1.2f

    const v5, 0x3e9d89d7

    const v6, 0x3f80fc10

    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method abortConfigChanges()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-void
.end method

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

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/HomeItem;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeWidgetItem;->updateSupportWidgetSize()V

    :cond_1
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected adjustFirstPageIdxForZeroPage(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public animatePage(IIZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_2

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v0, 0x0

    if-eqz p3, :cond_8

    iget v2, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_3

    neg-int v0, v1

    :goto_1
    iput v0, p0, Lcom/android/launcher2/Workspace;->mPreValues:I

    if-eqz p1, :cond_c

    if-ne p1, v0, :cond_c

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v2, v2, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_6

    iget v0, p0, Lcom/android/launcher2/Workspace;->mPreValues:I

    goto :goto_1

    :cond_6
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_7

    neg-int v0, v1

    :goto_2
    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v2, :cond_9

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_b

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_a

    neg-int v0, v1

    :goto_3
    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_d

    iget v2, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    :cond_d
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v4

    aput v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_e

    if-nez v0, :cond_e

    const-wide/16 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher2/Workspace$23;

    invoke-direct {v3, p0, p3}, Lcom/android/launcher2/Workspace$23;-><init>(Lcom/android/launcher2/Workspace;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher2/Workspace$24;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher2/Workspace$24;-><init>(Lcom/android/launcher2/Workspace;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_e
    int-to-long v2, p2

    goto :goto_4
.end method

.method protected applyTransform(Landroid/view/View;F)V
    .locals 13

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, p2, v11

    if-gtz v11, :cond_0

    const/high16 v11, -0x40800000    # -1.0f

    cmpg-float v11, p2, v11

    if-gez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v10, p0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    invoke-direct {p0, p2}, Lcom/android/launcher2/Workspace;->adjustScrollPrograss(F)F

    move-result v0

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f333333    # 0.7f

    invoke-static {v11, v12, v0}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v11

    mul-float/2addr v10, v11

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v6

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->invalidate()V

    const/high16 v11, 0x41700000    # 15.0f

    mul-float v5, v11, p2

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollDrawInward()F

    move-result v7

    mul-float v11, p2, v7

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float v8, v11, v12

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-direct {p0, p2, v4}, Lcom/android/launcher2/Workspace;->getPivotValueX(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    invoke-direct {p0, p2, v3}, Lcom/android/launcher2/Workspace;->getPivotValueY(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    :goto_1
    invoke-direct {p0, p2, v10}, Lcom/android/launcher2/Workspace;->getZoomValueY(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    invoke-direct {p0, p2, v10}, Lcom/android/launcher2/Workspace;->getZoomValueX(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    iget v11, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_2

    invoke-direct {p0, p2, v10}, Lcom/android/launcher2/Workspace;->getTranslationValueDeltaX(FF)F

    move-result v11

    add-float/2addr v8, v11

    :cond_2
    iget v11, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_3

    invoke-direct {p0, p2, v10}, Lcom/android/launcher2/Workspace;->getTranslationValueY(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    :cond_3
    invoke-direct {p0, p2, v8}, Lcom/android/launcher2/Workspace;->getTranslationValueX(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    invoke-direct {p0, p2, v5}, Lcom/android/launcher2/Workspace;->getRotationValue(FF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-nez v11, :cond_9

    iget-boolean v11, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v11, :cond_8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0073

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-float v9, v11

    if-nez v2, :cond_6

    const/4 v11, 0x0

    cmpg-float v11, p2, v11

    if-gez v11, :cond_6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v9, v11

    neg-float v11, v11

    mul-float/2addr v11, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v12

    div-float v5, v11, v12

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v11

    int-to-float v8, v11

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    sget v11, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v12, v4

    mul-float/2addr v11, v12

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    neg-float v11, v9

    mul-float/2addr v11, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v12

    div-float v5, v11, v12

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_7

    const/4 v11, 0x0

    cmpl-float v11, p2, v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/Workspace;->endPage:Z

    int-to-float v11, v4

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    int-to-float v11, v3

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v9, v11

    neg-float v11, v11

    mul-float/2addr v11, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v12

    div-float v5, v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v11

    iget v12, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    sub-int/2addr v11, v12

    int-to-float v8, v11

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p2, v4}, Lcom/android/launcher2/Workspace;->getPivotValueX(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    invoke-direct {p0, p2, v3}, Lcom/android/launcher2/Workspace;->getPivotValueY(FI)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    goto/16 :goto_1

    :cond_8
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    invoke-static {v6, v11, v12}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v11, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v11, :cond_a

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v11

    if-nez v11, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    invoke-static {v6, v11, v12}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0
.end method

.method bindWidgetsAfterConfigChange()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1
.end method

.method protected cardTransform(Landroid/view/View;F)V
    .locals 22

    const/16 v19, 0x0

    cmpg-float v19, p2, v19

    if-gez v19, :cond_1

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, p2, v19

    if-gtz v19, :cond_0

    const/high16 v19, -0x40800000    # -1.0f

    cmpg-float v19, p2, v19

    if-gez v19, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/high16 v18, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v12

    const/4 v15, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v2

    const v20, 0x3f333333    # 0.7f

    mul-float v19, v19, v20

    const v20, 0x3e99999a    # 0.3f

    add-float v5, v19, v20

    const v13, 0x3ea8f5c3    # 0.33f

    const v14, 0x3f2b851f    # 0.67f

    const/4 v7, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v16, p2, v19

    cmpg-float v19, v2, v14

    if-gez v19, :cond_4

    sget-object v19, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    sub-float v20, v14, v2

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v21, v21, v13

    div-float v20, v20, v21

    invoke-interface/range {v19 .. v20}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    move v10, v7

    cmpg-float v19, v2, v13

    if-gez v19, :cond_3

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v19, v19, v2

    div-float v15, v19, v13

    :goto_2
    iget-boolean v0, v3, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    :goto_3
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-nez v19, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setNoNeedToDraw(Z)V

    goto :goto_1

    :cond_3
    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v20, v14, v2

    mul-float v19, v19, v20

    div-float v15, v19, v13

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    invoke-static {v15, v15, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_3

    :cond_6
    iget-boolean v0, v3, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    :cond_7
    :goto_4
    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3dcccccd    # 0.1f

    sget-object v21, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v21

    mul-float v20, v20, v21

    sub-float v18, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v19

    if-nez v19, :cond_8

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b0073

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    if-nez v6, :cond_d

    const/16 v19, 0x0

    cmpg-float v19, p2, v19

    if-gez v19, :cond_d

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v19

    if-nez v19, :cond_c

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3dcccccd    # 0.1f

    sget-object v21, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v21

    mul-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v21

    div-float v20, v20, v21

    sub-float v18, v19, v20

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v10, 0x3f800000    # 1.0f

    :cond_8
    :goto_6
    invoke-virtual {v3, v10}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    const/16 v19, 0x0

    cmpl-float v19, v10, v19

    if-nez v19, :cond_9

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    :cond_9
    if-eqz v1, :cond_a

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    :cond_a
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    invoke-virtual {v3, v11}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    goto/16 :goto_1

    :cond_b
    invoke-static {v12, v5, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v19

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_4

    :cond_c
    sget v19, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    div-float v11, v19, v20

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_e

    const/16 v19, 0x0

    cmpl-float v19, p2, v19

    if-lez v19, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v19, 0x3f800000    # 1.0f

    const v20, 0x3dcccccd    # 0.1f

    sget-object v21, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v21

    mul-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v21

    div-float v20, v20, v21

    sub-float v18, v19, v20

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_e
    int-to-float v0, v8

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    int-to-float v0, v9

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_6
.end method

.method public changeColor(I)V
    .locals 8

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_0
    new-instance v4, Landroid/graphics/LightingColorFilter;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->changeColorCrosshair(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public changeEmptySpaceTextColor(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageColor(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public changeOrientationExtras()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v4, 0x2

    new-array v0, v4, [I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v4, v0, v8

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    aget v4, v0, v7

    iput v4, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    const v4, 0x7f0900f3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    iget v4, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    const v4, 0x7f090116

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopDrag:I

    const v4, 0x7f0901c3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    const v4, 0x7f0901c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getExtraShrinkFactor()F

    move-result v4

    const v5, 0x7f0b001e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    const v4, 0x7f0a000a

    invoke-virtual {v1, v4, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    const/high16 v4, 0x7f0a0000

    invoke-virtual {v1, v4, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDragScrollDrawInward:F

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    iget v4, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v6, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    sget-object v4, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    aput v6, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Workspace;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", animated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCurrentPageIfNotSnapping(I)V

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    :cond_5
    :goto_1
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_6

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    if-eqz p2, :cond_13

    sget v9, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    :goto_2
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_7

    const/16 v9, 0xc8

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeEditBar;->isNeedDelay()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move/from16 v0, p3

    add-int/lit16 v0, v0, 0x10a

    move/from16 p3, v0

    :cond_8
    :goto_3
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_9

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_9

    const/16 p3, 0x15e

    :cond_9
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_15

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090319

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v3, v5, v0, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual/range {v16 .. v16}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090116

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5, v9}, Lcom/android/launcher2/PageIndicatorManager;->updateIndicatorAnimated(II)V

    :cond_b
    :goto_4
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1b

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x800

    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    :cond_c
    :goto_5
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_27

    :cond_d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCrosshairsVisibilityChilds(Z)V

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->updateBackground(Lcom/android/launcher2/Workspace$State;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->setDirtyFlags()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopDrag:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    const v3, 0x7f050037

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v8

    check-cast v8, Landroid/animation/AnimatorSet;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v3, :cond_e

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0007

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v18

    aput v18, v5, v6

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_e
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->isWaitingForResult()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_2e

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_10
    :goto_7
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_11

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->setPageZoom(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->setPageTranslationFactor(F)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    goto/16 :goto_1

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/HomeEditBar;->mDropAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/HomeEditBar;->mDropAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move/from16 v0, p3

    add-int/lit16 v0, v0, 0xa6

    move/from16 p3, v0

    goto/16 :goto_3

    :cond_15
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_16
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->isGoogleSearchWidget(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :cond_17
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_18

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_19

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090115

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5, v9}, Lcom/android/launcher2/PageIndicatorManager;->updateIndicatorAnimated(II)V

    :cond_19
    const-string v3, "capture"

    const-string v5, "---return to normal mode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "capture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeRealPreview()Lcom/android/launcher2/HomeRealPreview;

    move-result-object v3

    add-int v5, p3, v9

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeRealPreview;->setMainHomeScreenshot(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    sget-boolean v3, Lcom/android/launcher2/CellLayoutHotseat;->mIsTopListChanged:Z

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Logging;->topFiveItemListLogging(Landroid/app/Activity;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/CellLayoutHotseat;->mIsTopListChanged:Z

    goto/16 :goto_4

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_a

    :cond_1b
    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_1c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_22

    :cond_1c
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x800

    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    const/4 v12, 0x0

    if-eqz v14, :cond_1d

    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1e

    :cond_1d
    const/4 v12, 0x1

    :cond_1e
    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1f

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_1f

    if-nez v12, :cond_20

    :cond_1f
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_21

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->createPageForDrag()V

    goto/16 :goto_5

    :cond_21
    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto/16 :goto_5

    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_24

    :goto_b
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x800

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    :cond_23
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_26

    sget v3, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_25

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    goto/16 :goto_5

    :cond_24
    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blur(Z)V

    goto :goto_b

    :cond_25
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto/16 :goto_5

    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto/16 :goto_5

    :cond_27
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_28

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_28

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_f

    :cond_28
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->remainOrRemovePlusPage()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCrosshairsVisibilityChilds(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-eqz v3, :cond_29

    const v3, 0x7f050039

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_29
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_2a

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090115

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->getIndicatorAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v3, 0x7f050038

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_2b

    const v3, 0x7f050039

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2b
    const v3, 0x7f050038

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v13

    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2d

    invoke-virtual {v13}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_2d
    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/4 v5, 0x1

    sget v6, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurByWindowManager(ZI)V

    goto/16 :goto_7

    :cond_2e
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_10

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    goto/16 :goto_7

    :cond_2f
    sget-object v3, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v10, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/launcher2/Workspace;->PAGE_TRANSLATION_FACTOR:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v11, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    int-to-long v0, v9

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0
.end method

.method public changeTextColor(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher2/AppIconView;

    if-nez v6, :cond_0

    instance-of v6, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {v5, p1, p2}, Lcom/android/launcher2/Utilities;->changeTextColor(Landroid/view/View;II)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public clearDragOutline()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method public closeFolder()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->closeFolder(Z)V

    return-void
.end method

.method public closeFolder(Z)V
    .locals 5

    sget-object v2, Lcom/android/launcher2/Workspace;->sFolderCloseLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v1, v1, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/launcher2/Folder;->close(ZZZ)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    :cond_2
    :goto_0
    monitor-exit v2

    return-void

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/Workspace$18;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$18;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeFolderIfNeeded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    :cond_0
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mStartZeorpageByIndicator:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->mCaptureZeropage:Z

    if-eqz v1, :cond_0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->mStartZeorpageByIndicator:Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScrollHelper()Z

    move-result v0

    goto :goto_0
.end method

.method public createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;Z)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    sget v4, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v3, v4, 0x5

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v4, v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, v3}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;ZI)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v4, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v4, v0, p2, v2}, Lcom/android/launcher2/HolographicOutlineHelper;->createDragOutlineForIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public createPageForDrag()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    :cond_1
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->insertPlusPage()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->insertPlusPage()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    goto :goto_0
.end method

.method createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7, p1, p2}, Lcom/android/launcher2/CellLayout;->spanToPixel(II)[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v4, 0x2

    sget v7, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v3, v7, 0x3

    const/4 v7, 0x0

    aget v6, v5, v7

    const/4 v7, 0x1

    aget v1, v5, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v3

    sub-int v10, v6, v3

    int-to-float v10, v10

    sub-int v11, v1, v3

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p3, v2}, Lcom/android/launcher2/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 10

    const/high16 v9, 0x40800000    # 4.0f

    const v8, 0x3f060a92

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    :cond_1
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxSwipeAngle:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "theta is over mMaxSwipeAngle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deltaY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    sub-float/2addr v3, v8

    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxSwipeAngle:F

    sub-float/2addr v4, v8

    div-float v4, v3, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchSlopScale : 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-float v6, v9, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v5, v9, v2

    add-float/2addr v4, v5

    invoke-super {p0, p1, v4}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->screenScrolled(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mHideItems:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-nez v14, :cond_1

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    sget v15, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    sget v15, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    if-ne v14, v15, :cond_7

    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    sget v15, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    add-int/lit8 v15, v15, 0x1

    if-eq v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v15, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v15, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v14, v15, :cond_7

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mTouchDowned:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    :goto_0
    return v14

    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-nez v14, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isMoving()Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/Workspace;->mPreValues:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v14, v14, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    const/4 v7, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->cancel()V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/Workspace;->mPreValues:I

    if-eqz v7, :cond_a

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v11, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    sub-int v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mLastDownY:I

    sub-int v14, v13, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v14, v4

    int-to-double v0, v3

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v14

    double-to-float v8, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v14, v14, 0x2

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v14, v14, 0x8

    const/16 v15, 0x8

    if-ne v14, v15, :cond_9

    :cond_8
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_27

    :cond_9
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v14, 0x2

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    const/4 v7, 0x1

    :cond_c
    if-eqz v7, :cond_d

    const/4 v14, 0x2

    :goto_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    goto :goto_2

    :cond_d
    const/4 v14, 0x1

    goto :goto_4

    :pswitch_0
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mTouchDowned:Z

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mDownX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/Workspace;->mLastDownY:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->removeMsg()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->stopCapture()V

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mTouchDowned:Z

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-nez v14, :cond_e

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v14, :cond_e

    const-string v14, "Launcher.Workspace"

    const-string v15, "dispatchTouchEvent - skipped wrong touch move event on virtual screen"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-eqz v14, :cond_1b

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    if-ge v14, v12, :cond_f

    :goto_5
    invoke-static {}, Lcom/android/launcher2/Launcher;->removeMsg()V

    :cond_f
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/Workspace;->mLastDownY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mDownX:I

    sub-int v5, v12, v14

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_14

    if-lez v5, :cond_15

    :cond_10
    const/4 v5, 0x0

    :cond_11
    :goto_6
    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v15

    mul-int v9, v14, v15

    :goto_7
    if-eqz v5, :cond_12

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v14

    if-ge v14, v9, :cond_12

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    :cond_12
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v14, :cond_1a

    const/4 v14, 0x1

    :goto_9
    invoke-static {v5, v15, v14}, Lcom/android/launcher2/Launcher;->setOffsetMsg(IIZ)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    if-le v14, v12, :cond_f

    goto :goto_5

    :cond_14
    if-ltz v5, :cond_10

    :cond_15
    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_16

    neg-int v14, v11

    if-ge v5, v14, :cond_11

    :goto_a
    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_17

    neg-int v5, v11

    :goto_b
    goto :goto_6

    :cond_16
    if-le v5, v11, :cond_11

    goto :goto_a

    :cond_17
    move v5, v11

    goto :goto_b

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v9

    goto :goto_7

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v14

    if-le v14, v9, :cond_12

    goto :goto_8

    :cond_1a
    const/4 v14, 0x0

    goto :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v14, :cond_1e

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    if-ge v14, v12, :cond_1e

    :cond_1c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mDownX:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/Workspace;->mLastDownY:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->removeMsg()V

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mLastDownX:I

    if-gt v14, v12, :cond_1c

    :cond_1e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v14, :cond_1f

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMaxSwipeAngle:F

    cmpg-float v14, v8, v14

    if-gtz v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    if-gt v4, v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    if-lt v3, v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-nez v14, :cond_7

    :cond_1f
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/Workspace;->mDownX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v14, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_20

    const/4 v14, -0x1

    :goto_c
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    :goto_d
    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Lcom/android/launcher2/Launcher;->setOffset(IIZ)Z

    goto/16 :goto_3

    :cond_20
    const/4 v14, 0x1

    goto :goto_c

    :cond_21
    const/4 v15, 0x0

    goto :goto_d

    :cond_22
    invoke-static {}, Lcom/android/launcher2/Launcher;->getOffset()Landroid/graphics/Point;

    move-result-object v6

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mDownX:I

    iget v15, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/Workspace;->mDownX:I

    iget v15, v6, Landroid/graphics/Point;->x:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v14, :cond_23

    const/4 v14, 0x1

    :goto_e
    move/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/launcher2/Launcher;->setOffsetMsg(IIZ)V

    goto/16 :goto_3

    :cond_23
    const/4 v14, 0x0

    goto :goto_e

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mTouchDowned:Z

    if-nez v14, :cond_24

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-nez v14, :cond_24

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-nez v14, :cond_24

    const-string v14, "Launcher.Workspace"

    const-string v15, "dispatchTouchEvent - skipped wrong touch up event on virtual screen"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    if-eqz v14, :cond_26

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/Workspace;->moveToVirtualScreen(I)V

    :cond_25
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->resetTouchState()V

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/Workspace;->mMovingState:I

    if-eqz v14, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/Workspace;->moveToVirtualScreen(I)V

    goto :goto_f

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->restoreOffset()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->releaseVelocityTracker()V

    goto/16 :goto_3

    :cond_27
    const/4 v14, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public editBarBackGroundVI(Landroid/widget/ImageView;Z)V
    .locals 8

    const-wide/16 v6, 0xe9

    const/16 v0, 0xe9

    if-eqz p2, :cond_0

    new-instance v2, Lcom/android/launcher2/Workspace$28;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Workspace$28;-><init>(Lcom/android/launcher2/Workspace;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050004

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/launcher2/Workspace$29;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Workspace$29;-><init>(Lcom/android/launcher2/Workspace;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    move-object/from16 v0, p2

    instance-of v14, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    move-object/from16 v0, p0

    if-eq v14, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v15, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v15, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v14, v15, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v14

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0

    :cond_2
    new-instance v12, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v14, 0x4

    new-array v7, v14, [I

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    const/4 v14, 0x0

    aget v14, v7, v14

    if-nez v14, :cond_4

    const/4 v14, 0x2

    aget v14, v7, v14

    if-nez v14, :cond_4

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v14

    iget v15, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v14, v15, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v14

    iget v14, v14, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x2

    new-array v3, v14, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v14

    const/4 v15, 0x0

    aget v15, v3, v15

    if-lt v14, v15, :cond_6

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v14

    const/4 v15, 0x1

    aget v15, v3, v15

    if-lt v14, v15, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v14

    if-lez v14, :cond_c

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_7

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_c

    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->getValidSizes()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v15, v10, v5

    aget v16, v3, v5

    move/from16 v0, v16

    if-gt v15, v0, :cond_8

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x1

    goto :goto_1

    :cond_a
    const/4 v14, 0x2

    if-ge v13, v14, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v14

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    new-instance v9, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v9, v0, v1, v2, v4}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/HomeWidgetItem;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    new-instance v14, Lcom/android/launcher2/Workspace$11;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v4}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;Lcom/android/launcher2/HomeWidgetItem;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    sget-object v14, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v14

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    if-nez v14, :cond_0

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    return-void
.end method

.method public exitWidgetResizeMode(Z)V
    .locals 7

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exitWidgetResizeMode State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newDragStarted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->commitTempPlacement(Landroid/view/View;)V

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v5, :cond_3

    const-string v4, "Launcher.Workspace"

    const-string v5, "exitWidgetResizeMode. isClearResizeFrame is false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    :cond_3
    return-void
.end method

.method public getBackgroundDarken()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    return v0
.end method

.method public getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    const-string v3, ""

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ne v0, v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080036

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080037

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080068

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    if-eqz p1, :cond_5

    instance-of v1, p1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_4

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getDragSpan()[I

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getDragSpan()[I

    move-result-object v0

    aget v1, v0, v3

    if-lez v1, :cond_2

    aget v1, v0, v2

    if-lez v1, :cond_2

    aget v1, v0, v3

    aget v2, v0, v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v1

    :cond_2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getEditModeShrinkFactor()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    return v1
.end method

.method public getIsDragOccuring()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method public getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getPageIndicatorTop()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    return v0
.end method

.method protected getScrollMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/Workspace$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method public getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 12

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    iget-wide v8, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v10, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher2/LauncherAppWidgetHostView;
    .locals 8

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iget-object v6, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    instance-of v7, v2, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v7, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    iget v7, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    if-ne v7, p1, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getWorkspaceAndHotseatCellLayoutsForFolderLock()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getZeroScreenShot(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v6, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    add-int v1, v5, v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :try_start_0
    const-string v5, "/storage/emulated/0/Android/data/.com.sec.android.app.launcher.cache/briefing.jpg"

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget v6, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    sub-int v6, v1, v6

    if-ne v5, v6, :cond_3

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageBgImageFile(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v6, v1, v4

    if-eq v5, v6, :cond_5

    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZeroImg Size error : zeroImage height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", disHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sSoftKeySize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/launcher2/Launcher;->sSoftKeySize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "Launcher.Workspace"

    const-string v6, "fail to create zeroImage BitmapDrawable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertPlusPage()Lcom/android/launcher2/CellLayout;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030053

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Workspace;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030054

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030052

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0
.end method

.method public insertWorkspaceFestivalScreen(IIZ)Lcom/android/launcher2/CellLayout;
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030056

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    const v8, 0x7f0b005a

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0b005b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertWorkspaceFestivalScreen() insertAt :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    if-eqz p3, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v3, p1, 0x1

    :goto_1
    if-ge v3, v6, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v8, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030057

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    const v8, 0x7f0b005c

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0b005d

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030055

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    const v8, 0x7f0b0058

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0b0059

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method public insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v8, v9, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030053

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_1

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    if-gt p1, v2, :cond_2

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v4, p1, 0x1

    :goto_1
    if-ge v4, v6, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v8, v9, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030054

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030052

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_6
    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    return-object v1
.end method

.method protected invalidatePageData()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDirtyFlags()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updatePageTransforms()V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpened()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isGridSelectMenuOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInResizeMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMovingToZeroPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mMovedToVirtualScreen:Z

    return v0
.end method

.method public isPageAddedForDrag(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isQuickViewWorkspaceOpend()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartDragStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    return v0
.end method

.method public isSwitchingState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public isTouchActive()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchResizeFrame(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->isPointInFrame(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isZeroPageScrollBlock()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected isZeroPageScrollBlock(ILandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method moveToDefaultScreen(Z)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public newPage(Z)I
    .locals 2

    const/high16 v1, -0x80000000

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Launcher.Workspace"

    const-string v2, "onClick - return by virtual screen isMoving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    instance-of v1, v9, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    move-object v7, v9

    check-cast v7, Lcom/android/launcher2/BaseItem;

    iget-object v1, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Lcom/android/launcher2/IconMoveContainer;->unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_3
    check-cast v7, Lcom/android/launcher2/FolderItem;

    check-cast p1, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, v7, p1, v10}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    :cond_4
    check-cast v7, Lcom/android/launcher2/FolderItem;

    check-cast p1, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, v7, p1, v10}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    :cond_5
    iget-object v1, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_6

    iget-object v1, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Lcom/android/launcher2/IconMoveContainer;->loadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_7
    move-object v1, v9

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v8, v1, [I

    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v8, v6

    aget v3, v8, v10

    aget v4, v8, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v8, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v5, v10

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1, v0, v9}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOIS"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateZeroPageDefaultBg()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearDragOutline()V

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Launcher;->changeEdgeHandleState(Z)V

    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->runDragEndCallBackEvent()V

    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_2

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    instance-of v4, p1, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mPendingWidgetCheckForState:Z

    iget v0, p0, Lcom/android/launcher2/Workspace;->mWidgetDropDuration:I

    check-cast p1, Lcom/android/launcher2/HomePendingWidget;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->hasConfigure()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v0, 0x1f4

    :cond_3
    new-instance v4, Lcom/android/launcher2/Workspace$8;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;)V

    int-to-long v6, v0

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickOptionsPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/Workspace$9;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/AppIconView;)V

    const-wide/16 v6, 0x118

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    new-instance v4, Lcom/android/launcher2/Workspace$StateChangeRunnable;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher2/Workspace$StateChangeRunnable;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->runDragCompleteCallback()V

    goto/16 :goto_0
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStartedWithItem ignored. mIsDragging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->changeEdgeHandleState(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->abortScroll()V

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStartedWithItem. View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->createPageForDrag()V

    :cond_4
    new-instance v0, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->clearDragEndCallBackEvent()V

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v8, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v7

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, p3}, Lcom/android/launcher2/Workspace;->setScrollDirection(I)V

    const/4 v4, 0x0

    iget-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v8, :cond_3

    move v0, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    if-nez p3, :cond_4

    :goto_2
    add-int v2, v8, v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v2, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :cond_2
    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v6

    if-ne v6, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollRunnable()V

    move v4, v7

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    neg-int v0, v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    if-ne v2, v6, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_7
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onExitScrollArea()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->isTouchResizeFrame(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mHideItems:Z

    if-eqz v4, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelLongPress()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/launcher2/Workspace;->mScaleFactor:F

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mActionUpOnScroll:Z

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    if-le v4, v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    :cond_5
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    :pswitch_3
    iget v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    :goto_2
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    :cond_6
    iput v5, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    if-nez v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    mul-int v6, v1, v1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v2, v4, v6

    const/16 v4, 0x32

    if-le v2, v4, :cond_8

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    :cond_7
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->leftMove:Z

    goto :goto_2

    :cond_8
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v7, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v6, :cond_3

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v4, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v4, :cond_1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    new-instance v4, Lcom/android/launcher2/Workspace$6;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v5, v7, v5

    mul-float v2, v4, v5

    mul-float v3, v2, v6

    iget v4, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    :cond_2
    iget v4, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v4, v7, v4

    div-float v4, v3, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    :cond_3
    iget v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iget v5, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iget v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    iget v5, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HomeView;->updateLiveIcon(Lcom/android/launcher2/CellLayout;)V

    new-instance v3, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    sget v4, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-eq v3, v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->updateWorkspaceMargin(Z)V

    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mOutOfSpaceMessageNeeded:Z

    if-eqz v3, :cond_4

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mOutOfSpaceMessageNeeded:Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public onPreShowAllApps()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->abortScroll()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    return-void
.end method

.method public onScrollComplete()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->onExitScrollArea()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mActionUpOnScroll:Z

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onViewAddedInPagedView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAddedInPagedView(Landroid/view/View;)V

    instance-of v3, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "A Workspace can only have CellLayoutWithResizableWidgets children."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setHomeView(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Lcom/android/launcher2/PanelBgDrawer;

    const v3, 0x7f020087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f020015

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/android/launcher2/PanelBgDrawer;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_4

    :cond_1
    sget v3, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PanelBgDrawer;->setMode(I)V

    :goto_0
    iget-boolean v3, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/launcher2/Launcher;->iszerofile:Z

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportEmptyMsg()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-nez v3, :cond_3

    const v3, 0x7f100111

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    sget v3, Lcom/android/launcher2/PanelBgDrawer;->MODE_NORMAL:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PanelBgDrawer;->setMode(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getDefaultZeroImg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    :cond_0
    return-void
.end method

.method public openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Workspace;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    if-eq v3, p1, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_3

    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other folder is not closed yet - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->closeFolder(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p2}, Lcom/android/launcher2/Folder;->setForViewType(Lcom/android/launcher2/FolderIconView;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMultiSelection()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$14;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$14;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v4, v3, v2, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    new-instance v3, Lcom/android/launcher2/Workspace$15;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/Workspace$15;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->requestChildFocusForHWKey()V

    goto/16 :goto_0
.end method

.method public openFolderAfterConfirm(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    return-void
.end method

.method public openFolderFromQuickOption(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Workspace;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    if-eq v3, p1, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_3

    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other folder is not closed yet - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->closeFolder(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p2}, Lcom/android/launcher2/Folder;->setForViewType(Lcom/android/launcher2/FolderIconView;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMultiSelection()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$16;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$16;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v4, v3, v2, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    new-instance v3, Lcom/android/launcher2/Workspace$17;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/Workspace$17;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v6, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->requestChildFocusForHWKey()V

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->showSearchAppList()V

    goto/16 :goto_0
.end method

.method protected pageBeginMoving()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPageInZeroPage:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->takeScreenShot()V

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->pageBeginMoving()V

    return-void
.end method

.method pauseScreen(IZ)V
    .locals 10

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-lt p1, v7, :cond_3

    :cond_1
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: trying to pause screen on invalid page index. passed in page number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", children count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_4

    move-object v7, v5

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v7, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_4

    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MovieDrawable;->pause()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected plainTransform(Landroid/view/View;F)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->zoomoutTransform(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v4, v5

    const v5, 0x3e99999a    # 0.3f

    add-float v2, v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-boolean v4, v0, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    invoke-static {v3, v2, v1}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    invoke-static {v4, v6, v5}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method public remainOrRemovePlusPage()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getPendingAddInfo()Lcom/android/launcher2/HomeItem;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-gt v4, v5, :cond_0

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_0
    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_1
    iput-object v7, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v5, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    iput-object v7, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v5, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    iget v5, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v1, v5, 0x1

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method protected removeCreatedPageForDrag()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    :cond_1
    return-void
.end method

.method public removeCurrentItem(Lcom/android/launcher2/HomeItem;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;Z)Z

    :cond_0
    return-void
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_2
    sget-object v14, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    array-length v14, v14

    if-ge v6, v14, :cond_2

    sget-object v14, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v7}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v9, 0x1

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "com.sec.android.app.launcher.prefs"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v7, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x64

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x65

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9

    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v14, v15}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5, v7}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v14

    iget v15, v5, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_4
    iget v14, v5, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_5
    invoke-virtual {v5}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v14}, Lcom/android/launcher2/Workspace;->removeRemainItems(Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;Z)V

    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v7}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    instance-of v14, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v14, :cond_1

    move-object v12, v7

    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v14, Lcom/android/launcher2/Workspace$13;

    const-string v15, "deleteAppWidgetId"

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15, v3, v12}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace$13;->start()V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    sget-object v14, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v0, v7, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v7}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_3

    :cond_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v15

    iget v0, v7, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    invoke-virtual {v8, v7}, Lcom/android/launcher2/CellLayout;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f05002a

    invoke-static {v14, v15}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v14, 0x113

    invoke-virtual {v2, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v14, Lcom/android/launcher2/Workspace$12;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v7}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {v2, v14}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v8, v7}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v15

    if-eqz v15, :cond_a

    instance-of v14, v8, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v14

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v15

    if-ne v14, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_d
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method public removeOldItem(Lcom/android/launcher2/HomeItem;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayout;->removeOldItem(Lcom/android/launcher2/BaseItem;Z)Z

    :cond_0
    return-void
.end method

.method public removeRemainItems(Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;",
            "Lcom/android/launcher2/HomeFolderItem;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p2, v7}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/IconMoveContainer;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-object v0, p2, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v0, p2, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-object v0, p2, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    :goto_0
    iget-wide v2, p2, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v8, v1}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    :cond_2
    return-void

    :cond_3
    iget-wide v2, p2, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v0, p2, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v0, p2, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v0, p2, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/IconMoveContainer;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeItem$PosistionBackup;-><init>(Lcom/android/launcher2/HomeItem;)V

    iput-object v0, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/IconMoveContainer;->getContent()Lcom/android/launcher2/CellLayoutMoveApps;

    move-result-object v10

    invoke-virtual {p2}, Lcom/android/launcher2/HomeFolderItem;->getPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeItem;->setPosition(I)V

    invoke-virtual {v10, v1}, Lcom/android/launcher2/CellLayoutMoveApps;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v10, p2}, Lcom/android/launcher2/CellLayoutMoveApps;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p2}, Lcom/android/launcher2/HomeFolderItem;->getPosition()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->realTimeReorder(I)V

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutMoveApps;->closeLayoutGap()V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v9, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_1
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/Folder;->repositionOpenFolder(ZZ)V

    :cond_0
    return-void
.end method

.method public restoreOffset()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cancelAnimation()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->removeMsg()V

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lcom/android/launcher2/Launcher;->setOffset(IIZ)Z

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->resetTouchState()V

    iput v1, p0, Lcom/android/launcher2/Workspace;->mMovingState:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mPreValues:I

    return-void
.end method

.method public restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method resumeScreen(I)V
    .locals 13

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-eq v3, p1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->isPaused()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0, v3, v12}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_5

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v10, :cond_4

    move-object v5, v8

    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    iget-object v10, v5, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v10, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/MovieDrawable;->resume()V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v11, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v10, v11, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isGoogleSearchWidget(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    invoke-virtual {v10, v12}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_1
.end method

.method public scrollLeft(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->scrollRight(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method protected scrollToNonLoopedSubAct(II)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v5, :cond_6

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, -0x2

    mul-int v1, v2, v4

    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_3

    if-le p1, v1, :cond_4

    :cond_1
    add-int v4, v1, v2

    if-ge p1, v4, :cond_4

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_5

    move p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->abortScroll()V

    :goto_1
    move v1, v3

    :cond_2
    :goto_2
    return v1

    :cond_3
    if-ge p1, v1, :cond_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->superScrollTo(II)V

    goto :goto_1

    :cond_5
    move p1, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isZeroPageScrollBlock()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_9

    add-int/lit8 v4, v0, -0x2

    mul-int v1, v2, v4

    :goto_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_a

    if-ge v1, p1, :cond_b

    :cond_7
    invoke-virtual {p0, v1, p2}, Lcom/android/launcher2/Workspace;->superScrollTo(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->canOverScroll()Z

    move-result v4

    if-eqz v4, :cond_8

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsOverScrolled:Z

    sub-int v4, p1, v1

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->overScroll(F)V

    :cond_8
    :goto_4
    move v1, v3

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    if-lt p1, v1, :cond_7

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->superScrollTo(II)V

    goto :goto_4
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    return-void
.end method

.method setAllEmptyMessageVisibility(Z)V
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    return-void
.end method

.method public setAllPagesVisibility(I)V
    .locals 4

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->syncViewVisibility()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundDarken(F)V
    .locals 2

    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setContentIsRefreshable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    return-void
.end method

.method public setCrosshairsVisibilityChilds(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setIsDroppedOnEditBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsDroppedOnEditBar:Z

    return-void
.end method

.method public setPageVisibility(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    return-void
.end method

.method public setPageZoom(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->setPageZoom(F)V

    return-void
.end method

.method public setWallpaperDimension()V
    .locals 5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$5;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$5;->start()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method public setWorkspaceAccessibilityEnabled(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    const-string v4, "(?i).*talkback.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    :cond_1
    return-void
.end method

.method setup(Lcom/android/launcher2/HomeView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    return-void
.end method

.method public showZeroPageSettingDialog()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800eb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/Workspace$25;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$25;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/Workspace$26;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$26;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/launcher2/Workspace$27;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$27;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getAdjustedPageIndex(I)I

    move-result p1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-ne v2, v3, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mActionUpOnScroll:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method startDrag(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v3, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/launcher2/LauncherAppWidgetHostView;->sPrvHostView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_0

    :cond_2
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    const-string v3, "previous_hostView"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    iget v1, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    instance-of v3, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/AppIconView;

    iget v2, v3, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_6

    move v3, v1

    :goto_2
    invoke-static {p1, v1, v3}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;FF)Z

    move-result v0

    goto :goto_0

    :cond_5
    if-ne v2, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    goto :goto_1

    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public syncPageItems(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    return-void
.end method

.method protected syncPageWithQuickView(I)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getAdjustedPageIndex(I)I

    move-result p1

    move v0, p1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setCurrentPage(I)V

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsOnPage()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public turnOffEmptyPageMsg()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setShowEmptyPageMessagePref(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SHOW_EMPTY_PAGE_MSG"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFlick()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v5, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v2, v2, v2, v2}, Lcom/android/launcher2/CellLayoutChildren;->setPadding(IIII)V

    :cond_3
    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->updateWorkspaceMargin(Z)V

    :cond_4
    sget-object v2, Lcom/android/launcher2/Workspace$30;->$SwitchMap$com$android$launcher2$PagedView$TransitionEffect:[I

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->applyTransform(Landroid/view/View;F)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->zoomoutTransform(Landroid/view/View;F)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->plainTransform(Landroid/view/View;F)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->cardTransform(Landroid/view/View;F)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRestoreItems(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    const-string v6, "Launcher.Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    view: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    instance-of v6, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/launcher2/AppIconView;->applyState(Z)V

    goto :goto_0

    :cond_3
    instance-of v6, v3, Lcom/android/launcher2/PendingAppWidgetHostView;

    if-eqz v6, :cond_2

    check-cast v3, Lcom/android/launcher2/PendingAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/PendingAppWidgetHostView;->applyState()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateScreenGrid()Lcom/android/launcher2/CellLayout;
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030059

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09022f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09022e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090233

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090232

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    :goto_0
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v5, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030053

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030054

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030052

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method updateShortcuts(Ljava/util/List;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v17, "Launcher.Workspace"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isBadgeUpdate : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v12, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/BaseItem;

    instance-of v0, v11, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    move-object v10, v11

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    if-ne v4, v10, :cond_2

    invoke-virtual {v12, v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v16

    if-eqz p2, :cond_3

    if-eqz v16, :cond_3

    check-cast v16, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    goto :goto_1

    :cond_3
    iget-object v0, v10, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v0, v10, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    const-string v17, ""

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_5
    const/4 v15, 0x0

    if-eqz v16, :cond_7

    move-object/from16 v17, v16

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_6
    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/AppIconView;

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    instance-of v0, v13, Lcom/android/launcher2/PreloadIconDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    check-cast v13, Lcom/android/launcher2/PreloadIconDrawable;

    invoke-virtual {v13}, Lcom/android/launcher2/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v22

    const/16 v23, -0x1

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v18

    move/from16 v0, v18

    if-eq v0, v14, :cond_a

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v18

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;IZ)V

    :goto_4
    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AppIconView;->setHotseatText(Lcom/android/launcher2/HomeItem;)V

    :cond_7
    if-nez v15, :cond_8

    const-string v15, ""

    :cond_8
    iget-object v0, v10, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    :cond_9
    const/4 v14, 0x0

    goto :goto_2

    :cond_a
    const/16 v18, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_d
    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v17

    if-nez v17, :cond_2

    iget-boolean v0, v10, Lcom/android/launcher2/HomeShortcutItem;->mDBupdate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    :cond_e
    instance-of v0, v11, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v10, v11

    check-cast v10, Lcom/android/launcher2/HomeFolderItem;

    const/4 v5, 0x0

    invoke-virtual {v10}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_13

    invoke-virtual {v10, v9}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v6, :cond_10

    :cond_f
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    if-ne v4, v6, :cond_11

    const/4 v5, 0x1

    if-nez p2, :cond_f

    iget-object v0, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_6

    :cond_13
    if-eqz v5, :cond_1

    invoke-virtual {v12, v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_14

    move-object/from16 v17, v16

    check-cast v17, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIconView;->refreshBadge()V

    check-cast v16, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v0, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method protected updateVisiblePages()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateVisiblePagesForDragMode()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateVisiblePages()I

    move-result v0

    goto :goto_0
.end method

.method protected updateWallpaperOffsets()V
    .locals 6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-boolean v4, v4, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_4

    move v1, v5

    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_5

    move v2, v5

    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v2

    goto :goto_2
.end method

.method public updateWorkspaceBriefingScreen()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030059

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    :goto_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    invoke-virtual {p0, v0, v5, v2}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030052

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public updateWorkspaceMargin(Z)V
    .locals 5

    const v4, 0x7f090127

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-ne v1, v3, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-ne v1, v3, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-ne v1, v3, :cond_4

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/Launcher;->mUpdatePage:Z

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    sput-boolean v2, Lcom/android/launcher2/Launcher;->mUpdatePage:Z

    goto :goto_3
.end method

.method public updateZeroPageDefaultBg()V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ZeroPageUtils;->loadZeropageAppItem(Z)V

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getDefaultZeroImg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    sget v2, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v1, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroPageBgImage()V

    :cond_2
    return-void
.end method

.method widgetsRestored(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher2/Workspace;Ljava/util/ArrayList;Lcom/android/launcher2/LauncherAppWidgetHost;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v2, v2, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static {v3, v4, v2}, Lcom/android/launcher2/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace$DeferredWidgetRefresh;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v2, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v2, v2, Lcom/android/launcher2/PendingAppWidgetHostView;

    if-eqz v2, :cond_2

    const/16 v2, 0x64

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->installProgress:I

    iget-object v2, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/PendingAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher2/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method

.method protected zoomoutTransform(Landroid/view/View;F)V
    .locals 22

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    const/high16 v18, -0x40800000    # -1.0f

    cmpg-float v18, p2, v18

    if-gez v18, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v19

    sub-float v18, v18, v19

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    const v19, 0x3e99999a    # 0.3f

    add-float v5, v18, v19

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v18

    if-lez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v14, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1d

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaDA()Z

    move-result v18

    if-eqz v18, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v18, p2, v18

    if-gtz v18, :cond_1b

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaDA()Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    move/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    sget-object v20, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const v21, 0x3fe66666    # 1.8f

    div-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    sub-float v13, v18, v19

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_b

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    if-ne v8, v0, :cond_9

    const/16 v18, 0x0

    cmpl-float v18, p2, v18

    if-lez v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    :cond_6
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    mul-float v19, v19, v13

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v15, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageTranslationFactor:F

    move/from16 v18, v0

    mul-float v18, v18, p2

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDragScrollDrawInward:F

    move/from16 v20, v0

    add-float v19, v19, v20

    mul-float v19, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageSpacing:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    mul-float v16, v18, v19

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_a

    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-gez v18, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    goto/16 :goto_5

    :cond_b
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    if-ne v8, v0, :cond_e

    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-gez v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v19

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v18

    :goto_8
    sub-int v18, v19, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_5

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    :cond_d
    const/16 v18, 0x0

    goto :goto_8

    :cond_e
    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_f

    const/16 v18, 0x0

    cmpl-float v18, p2, v18

    if-lez v18, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    goto/16 :goto_5

    :cond_10
    const/16 v18, 0x0

    cmpl-float v18, p2, v18

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mScaleFactor:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_6

    :cond_11
    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_12

    sub-int v18, v10, v8

    add-int/lit8 v7, v18, -0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v7, :cond_13

    const/4 v9, 0x1

    :goto_a
    if-nez v7, :cond_14

    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-gez v18, :cond_14

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3dcccccd    # 0.1f

    sget-object v20, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const v21, 0x3fe66666    # 1.8f

    div-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    sub-float v13, v18, v19

    const v18, 0x3f7ae148    # 0.98f

    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    :cond_12
    move v7, v8

    goto/16 :goto_9

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_14
    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_15

    const/16 v18, 0x0

    cmpl-float v18, p2, v18

    if-lez v18, :cond_15

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3dcccccd    # 0.1f

    sget-object v20, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const v21, 0x3fe66666    # 1.8f

    div-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    sub-float v13, v18, v19

    const v18, 0x3f7ae148    # 0.98f

    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    :cond_15
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v18, v0

    if-eqz v18, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v18

    if-nez v18, :cond_16

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v18, :cond_16

    sget v18, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    move/from16 v0, v18

    if-ne v7, v0, :cond_16

    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-gez v18, :cond_16

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3dcccccd    # 0.1f

    sget-object v20, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const v21, 0x3fe66666    # 1.8f

    div-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    sub-float v13, v18, v19

    const v18, 0x3f7ae148    # 0.98f

    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    :cond_16
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v18

    if-eqz v18, :cond_17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v18

    if-nez v18, :cond_17

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v18, v0

    if-eqz v18, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v18

    if-nez v18, :cond_17

    sget-boolean v18, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v18, :cond_17

    add-int/lit8 v18, v10, -0x2

    move/from16 v0, v18

    if-ne v7, v0, :cond_17

    const/16 v18, 0x0

    cmpl-float v18, p2, v18

    if-lez v18, :cond_17

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x3dcccccd    # 0.1f

    sget-object v20, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const v21, 0x3fe66666    # 1.8f

    div-float v21, p2, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    sub-float v13, v18, v19

    const v18, 0x3f7ae148    # 0.98f

    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40400000    # 3.0f

    mul-float v20, v20, p2

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_6

    :cond_17
    const v18, 0x3f7d70a4    # 0.99f

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x41000000    # 8.0f

    div-float v20, p2, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mActionUpOnScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_18

    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mScaleFactor:F

    move/from16 v18, v0

    const v19, 0x3f7d70a4    # 0.99f

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/Workspace;->mScaleFactor:F

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mActionUpOnScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_19

    if-eqz v9, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mScaleFactor:F

    :cond_19
    int-to-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v17, v18, v19

    int-to-float v0, v12

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v13

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    div-float v6, v18, v19

    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-gez v18, :cond_1a

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v17, v18

    sub-float v18, v6, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_6

    :cond_1a
    neg-float v0, v6

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v17, v19

    add-float v18, v18, v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_6

    :cond_1b
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    :cond_1c
    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsDroppedOnEditBar:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v8, v0, :cond_1f

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaDA()Z

    move-result v18

    if-nez v18, :cond_1e

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    :cond_1e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mIsDroppedOnEditBar:Z

    goto/16 :goto_0

    :cond_1f
    iget-boolean v0, v3, Lcom/android/launcher2/CellLayout;->mIsZeroPageCell:Z

    move/from16 v18, v0

    if-eqz v18, :cond_20

    check-cast p1, Lcom/android/launcher2/CellLayout;

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v8, v0, :cond_21

    check-cast p1, Lcom/android/launcher2/CellLayout;

    invoke-static {v14, v5, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v8, v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaDA()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_0
.end method
