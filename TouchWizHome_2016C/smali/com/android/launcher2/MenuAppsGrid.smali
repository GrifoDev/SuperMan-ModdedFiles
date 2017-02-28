.class public final Lcom/android/launcher2/MenuAppsGrid;
.super Lcom/android/launcher2/SmoothPagedView;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;
.implements Lcom/android/launcher2/Folder$FolderNameChangeListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;,
        Lcom/android/launcher2/MenuAppsGrid$ZoomInInterpolator;,
        Lcom/android/launcher2/MenuAppsGrid$StateSearch;,
        Lcom/android/launcher2/MenuAppsGrid$StateEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateNormal;,
        Lcom/android/launcher2/MenuAppsGrid$StateAtoZ;,
        Lcom/android/launcher2/MenuAppsGrid$StateObj;,
        Lcom/android/launcher2/MenuAppsGrid$State;,
        Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
    }
.end annotation


# static fields
.field public static final APPS_COMPARATOR:Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

.field private static final DEBUGGABLE:Z

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "openFolderId"

.field private static final PAGE_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_BG_ALPHA_HALF:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_TRANSLATION_FACTOR_FULL:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_TRANSLATION_FACTOR_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ZOOM_NORMAL_LANDSCAPE:F = 0.98f

.field private static final PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "pendingFolderEditText"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "pending_folder_edit_text_selection_start"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SuperStateKey"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppsGrid"

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.98f

.field private static final TRANSITION_MIN_ALPHA:F = 1.0f

.field private static final TRANSITION_MIN_SCALE:F = 0.99f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static appsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mFolderColorToAddButton:I

.field private static mFolderTitletoAddButton:Ljava/lang/String;

.field public static mIsFinishCancelAtoZ:Z

.field public static mIsFinishEnterAtoZ:Z

.field private static mOldPageCount:I

.field private static mSineEaseInOut80:Landroid/view/animation/Interpolator;

.field private static mSineIO70Interpolator:Landroid/view/animation/Interpolator;

.field private static mStartNormalPage:Z

.field private static mUndoPageCount:I

.field private static mUndoappsPos:[[I

.field private static mUndofolderPos:[[I

.field private static mZoomOutScaleFactor:F

.field private static sHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mActionUpOnScroll:Z

.field private mAppPackageNameGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field mBuildLayersRunnable:Ljava/lang/Runnable;

.field private mCreateFolderColor:I

.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDeletedItemOnFolder:Z

.field private mDeletedItemPos:I

.field mDisableItem:Lcom/android/launcher2/AppItem;

.field private mDragInProgress:Z

.field private mDragOnEditMode:Z

.field private mEditTranslationViewFactor:F

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderLocation:[I

.field private mIsFirstEnter:Z

.field mIsFolderOpenWithEdit:Z

.field mIsFromHomeView:Z

.field private mIsKeyboardShowed:Z

.field mIsMenuScrollAlpha:Z

.field private mIsStartUninstallAni:Z

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mPendingAppModelUpdated:Z

.field private mPendingFolderBundle:Landroid/os/Bundle;

.field private mRecycledViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedOrientation:I

.field private mScaleFactor:F

.field private mScrollZoneLeft:I

.field private mScrollZoneRight:I

.field private mSearchState:Lcom/android/launcher2/MenuAppsSearch;

.field private mShrinkTranslateY:F

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateAtoZ:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateSearch:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mVTransitionRotationMax:F

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;

.field private mXDown:F

.field private mYDown:F

.field private preCheckedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field zIn:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut70;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut80;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mSineEaseInOut80:Landroid/view/animation/Interpolator;

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    sput v3, Lcom/android/launcher2/MenuAppsGrid;->mFolderColorToAddButton:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "menu_app_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sput v3, Lcom/android/launcher2/MenuAppsGrid;->mOldPageCount:I

    sput v3, Lcom/android/launcher2/MenuAppsGrid;->mUndoPageCount:I

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishEnterAtoZ:Z

    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    const v2, 0x3f59999a    # 0.85f

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    aput v6, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_HALF:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR:Landroid/util/Property;

    new-array v1, v4, [F

    aput v6, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR_NONE:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR_FULL:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->APPS_COMPARATOR:Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScaleFactor:F

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mActionUpOnScroll:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragOnEditMode:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mSineInOut80:Landroid/view/animation/Interpolator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mSineInOut90:Landroid/view/animation/Interpolator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    const v8, 0x3f2b851f    # 0.67f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mSineInOut33:Landroid/view/animation/Interpolator;

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemOnFolder:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneLeft:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneRight:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFirstEnter:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsKeyboardShowed:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFolderOpenWithEdit:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$2;

    invoke-direct {v5, p0}, Lcom/android/launcher2/MenuAppsGrid$2;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$5;

    invoke-direct {v5, p0}, Lcom/android/launcher2/MenuAppsGrid$5;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$StateAtoZ;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/MenuAppsGrid$StateAtoZ;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAtoZ:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/launcher2/MenuAppsGrid$StateSearch;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSearch:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR_NONE:Landroid/animation/PropertyValuesHolder;

    aput-object v7, v5, v6

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->zIn:Landroid/animation/Animator;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    new-instance v5, Lcom/android/launcher2/MenuAppsGrid$11;

    invoke-direct {v5, p0}, Lcom/android/launcher2/MenuAppsGrid$11;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mBuildLayersRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFolderColor:I

    const-string v5, "Launcher.MenuAppsGrid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->MenuAppsGrid:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090379

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const v5, 0x7f09016a

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    const v5, 0x7f09016b

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    sput v5, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    const v5, 0x7f0b0073

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mVTransitionRotationMax:F

    const v5, 0x7f0c001d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsMenuScrollAlpha:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v5, :cond_0

    const v5, 0x7f0b0021

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    const v5, 0x7f0b0022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    const v5, 0x7f090249

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.cocktailpanel"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneRight:I

    :cond_1
    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneLeft:I

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneRight:I

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090171

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090172

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneRight:I

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAtoZ:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSearch:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomIn(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFirstEnter:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/launcher2/MenuAppsGrid;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFirstEnter:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setAppSearchAnimation(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsStartUninstallAni:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/launcher2/MenuAppsGrid;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsStartUninstallAni:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragOnEditMode:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/launcher2/MenuAppsGrid;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragOnEditMode:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsSearch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsSearch;)Lcom/android/launcher2/MenuAppsSearch;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsKeyboardShowed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSineInOut80:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->buildPageHardwareLayers()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSineInOut90:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/MenuAppsGrid;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher2/AppItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setPageType(I)V

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method

.method private animatePageZoomIn(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->zIn:Landroid/animation/Animator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->zIn:Landroid/animation/Animator;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->mSineEaseInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->zIn:Landroid/animation/Animator;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private animatePageZoomOut(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_3

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-ne v1, v7, :cond_2

    sget v1, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    :cond_0
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setPageBackgroundAlpha(F)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-ne v1, v5, :cond_0

    sget v1, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-ne v1, v7, :cond_4

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v3, v5, [F

    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_HALF:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-ne v1, v5, :cond_1

    new-array v1, v7, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v3, v5, [F

    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_HALF:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_6

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v3, v5, [F

    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v7

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    sget v1, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setPageBackgroundAlpha(F)V

    goto :goto_1

    :cond_7
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v3, v5, [F

    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_TRANSLATION_FACTOR_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v7

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private buildPageHardwareLayers()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->forceVisible()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->buildHardwareLayer()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 9

    const/4 v8, 0x1

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->handleScrollOnOrientationChange()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->clear()V

    const v7, 0x7f090141

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v7, 0x7f090140

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f09013f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    const v7, 0x7f0b000c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    const v7, 0x7f0b000d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    const v7, 0x7f09013d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapX:I

    const v7, 0x7f09013e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapY:I

    const v7, 0x7f09011d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacingHint:I

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    const v7, 0x7f09016a

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v2

    sget-object v7, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v2, v7, :cond_0

    const v7, 0x7f0901ca

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f0901c8

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f0b0021

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    const v7, 0x7f0b0022

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    const v7, 0x7f090249

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v7

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    :cond_0
    const v7, 0x7f090170

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f09016f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/MenuAppsGrid;->updateIndicator(II)V

    const/4 v7, 0x0

    invoke-direct {p0, v3, v1, v0, v7}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(IIIZ)V

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->updatePageLayout(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->requestLayout()V

    return-void
.end method

.method private checkPageType(Lcom/android/launcher2/AppItem;I)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutMenu;
    .locals 8

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03002f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutMenu;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutMenu;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f0901c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/CellLayoutMenu;->setCellSize(II)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    :cond_0
    return-object v0
.end method

.method private findNewFolderPosition(Lcom/android/launcher2/AppItem;II)V
    .locals 6

    const/4 v5, -0x1

    const/4 v3, -0x1

    const/4 v0, -0x1

    move v1, p2

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->checkPageType(Lcom/android/launcher2/AppItem;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v3

    if-eq v3, v5, :cond_0

    move p3, v3

    move v0, v1

    :cond_2
    if-eq p3, v5, :cond_3

    if-ne v0, v5, :cond_6

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->checkPageType(Lcom/android/launcher2/AppItem;I)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v3

    if-eq v3, v5, :cond_4

    move p3, v3

    move v0, v1

    :cond_6
    iput p3, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v0, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    return-void
.end method

.method private getConstructedViews()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/MenuAppIconView;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v7, v0, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v7, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    move v0, v2

    :goto_0
    if-gt v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    :goto_1
    return-object v4

    :cond_1
    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move-object v4, v1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    goto :goto_2
.end method

.method private getStateKeyboard()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    return v1
.end method

.method private moveToCurrentPage(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPageIfNotSnapping(I)V

    return-void
.end method

.method private normalTransform(Landroid/view/View;F)V
    .locals 20

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v15, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->isLoopingEnabled()Z

    move-result v16

    if-nez v16, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sget-boolean v16, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v16, :cond_4

    sub-int v16, v10, v6

    add-int/lit8 v5, v16, -0x1

    :goto_1
    if-nez v5, :cond_5

    const/16 v16, 0x0

    cmpg-float v16, p2, v16

    if-gez v16, :cond_5

    const/4 v7, 0x1

    :goto_2
    add-int/lit8 v16, v10, -0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_6

    const/16 v16, 0x0

    cmpl-float v16, p2, v16

    if-lez v16, :cond_6

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v16

    sget-object v17, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    if-nez v7, :cond_3

    if-eqz v8, :cond_7

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageZoom:F

    const v9, 0x3ee66666    # 0.45f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    const v9, 0x3e19999a    # 0.15f

    :cond_8
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v14

    mul-float v16, v16, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v17, v17, v9

    mul-float v15, v16, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageZoom:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaDA()Z

    move-result v16

    if-eqz v16, :cond_10

    const/4 v15, 0x0

    :cond_a
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sget-boolean v16, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v16, :cond_11

    sub-int v16, v10, v6

    add-int/lit8 v5, v16, -0x1

    :goto_6
    const/16 v16, 0x0

    cmpl-float v16, p2, v16

    if-lez v16, :cond_12

    move/from16 v2, p2

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v16

    sget-object v17, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_13

    move-object/from16 v16, p1

    check-cast v16, Lcom/android/launcher2/CellLayout;

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mIsMenuScrollAlpha:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sub-float v17, v17, v18

    const v18, 0x3e4ccccd    # 0.2f

    add-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_b
    if-nez v7, :cond_c

    if-eqz v8, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-float v0, v12

    move/from16 v17, v0

    mul-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    int-to-float v0, v12

    move/from16 v18, v0

    mul-float v17, v17, v18

    int-to-float v0, v5

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v11

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    if-nez v5, :cond_e

    const/16 v16, 0x0

    cmpg-float v16, p2, v16

    if-gez v16, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mVTransitionRotationMax:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v17

    div-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v16

    move/from16 v0, v16

    int-to-float v15, v0

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v16, v10, -0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_f

    const/16 v16, 0x0

    cmpl-float v16, p2, v16

    if-lez v16, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mVTransitionRotationMax:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v17

    div-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mMaxScrollX:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v15, v0

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_f
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_4

    :cond_10
    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageTranslationFactor:F

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    mul-float v16, v16, v17

    mul-float v16, v16, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    goto/16 :goto_5

    :cond_11
    move v5, v6

    goto/16 :goto_6

    :cond_12
    const/high16 v16, -0x40800000    # -1.0f

    mul-float v2, p2, v16

    goto/16 :goto_7

    :cond_13
    move-object/from16 v16, p1

    check-cast v16, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageBackgroundAlpha:F

    move/from16 v17, v0

    mul-float v17, v17, v2

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto/16 :goto_8
.end method

.method private openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V
    .locals 10

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "openFolderId"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    instance-of v6, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v6, :cond_0

    const-string v6, "pendingFolderEditText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v6, "pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private parseAppPackageGroup()V
    .locals 8

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-wide v6, v3, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setAppSearchAnimation(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchVI:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$6;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDragInProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(ZZ)V

    return-void
.end method

.method private setDragInProgress(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$9;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    .locals 2

    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMenuAppsGridAccessibilityEnabled(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuView;->setAccessibilityEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    :cond_0
    return-void
.end method

.method private startLockFolderVerify(Lcom/android/launcher2/FolderIconView;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Launcher;->setClickedView(Lcom/android/launcher2/FolderIconView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    const/16 v3, 0x70

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderItem;

    const-string v4, "request_unlock"

    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/android/launcher2/FolderLock;->startVerifyActivity(ILcom/android/launcher2/FolderItem;Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateGridSize(IIIZ)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v7

    const/16 v17, 0x0

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v12

    const-string v19, "Launcher.MenuAppsGrid"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "updateGridSize:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " cellWidth:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  cellHeight:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/launcher2/MenuAppsGrid$17;->$SwitchMap$com$android$launcher2$LauncherApplication$HomeGridSize:[I

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    :goto_0
    sget-object v19, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v19, Lcom/android/launcher2/ShadowStyleable;->View:[I

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v19, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    sget-object v19, Lcom/android/launcher2/ShadowStyleable;->View:[I

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v0, v6, Lcom/android/launcher2/CellLayoutMenu;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object v5, v6

    check-cast v5, Lcom/android/launcher2/CellLayoutMenu;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setCellSize(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setGaps(II)V

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p1

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v15}, Lcom/android/launcher2/CellLayoutMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v14, v0, :cond_2

    invoke-virtual {v5, v14}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v0, v11, Lcom/android/launcher2/MenuAppIconView;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    check-cast v11, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    move-object/from16 v19, v18

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    check-cast v18, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderIconView;->refresh()V

    :cond_0
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :pswitch_0
    const v17, 0x7f0e000b

    const v16, 0x7f0e000c

    goto/16 :goto_0

    :pswitch_1
    const v17, 0x7f0e0017

    const v16, 0x7f0e0018

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object/from16 v19, v18

    check-cast v19, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePageLayout(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutMenu;->updateViewToCellLayout(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method protected allowCustomOrdering()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public alphabeticalReoder(Ljava/util/List;Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z)V"
        }
    .end annotation

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getMaxItemsPerScreen()I

    move-result v2

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/launcher2/MenuAppsGrid;->moveToCurrentPage(I)V

    if-eqz p3, :cond_2

    sget v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoPageCount:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v11

    if-le v10, v11, :cond_2

    sget v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoPageCount:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v11

    sub-int v1, v10, v11

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    array-length v10, v10

    if-ge v4, v10, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-lt v4, v10, :cond_5

    :cond_3
    move v9, v4

    :goto_2
    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    array-length v10, v10

    add-int/2addr v10, v9

    if-ge v4, v10, :cond_0

    sub-int v0, v4, v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v0, v10, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez p3, :cond_c

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    aget-object v11, v10, v0

    const/4 v12, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    iget v10, v10, Lcom/android/launcher2/AppItem;->mScreen:I

    aput v10, v11, v12

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    aget-object v11, v10, v0

    const/4 v12, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    iget v10, v10, Lcom/android/launcher2/AppItem;->mCell:I

    aput v10, v11, v12

    div-int v7, v4, v2

    rem-int v6, v4, v2

    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutMenu;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    if-nez v8, :cond_f

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez p3, :cond_6

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    aget-object v11, v10, v4

    const/4 v12, 0x0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    iget v10, v10, Lcom/android/launcher2/AppItem;->mScreen:I

    aput v10, v11, v12

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    aget-object v11, v10, v4

    const/4 v12, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    iget v10, v10, Lcom/android/launcher2/AppItem;->mCell:I

    aput v10, v11, v12

    div-int v7, v4, v2

    rem-int v6, v4, v2

    :goto_5
    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutMenu;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    if-nez v8, :cond_a

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    aget-object v10, v10, v4

    const/4 v11, 0x0

    aget v7, v10, v11

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    aget-object v10, v10, v4

    const/4 v11, 0x1

    aget v6, v10, v11

    goto :goto_5

    :cond_7
    div-int v7, v4, v2

    rem-int v6, v4, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V

    goto :goto_6

    :cond_9
    const-string v10, "Launcher.MenuAppsGrid"

    const-string v11, "createPage is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    goto :goto_6

    :cond_b
    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V

    goto :goto_6

    :cond_c
    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    aget-object v10, v10, v0

    const/4 v11, 0x0

    aget v7, v10, v11

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    aget-object v10, v10, v0

    const/4 v11, 0x1

    aget v6, v10, v11

    goto/16 :goto_3

    :cond_d
    div-int v7, v4, v2

    rem-int v6, v4, v2

    goto/16 :goto_3

    :cond_e
    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V

    goto/16 :goto_4

    :cond_f
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v8, v5, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V

    goto/16 :goto_4
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 5

    const/4 v4, -0x1

    const-string v1, "Launcher.MenuAppsGrid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appModelUpdated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-eqz v1, :cond_2

    const-string v1, "TAG"

    const-string v2, "appModelUpdated return due to DragInProgress"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onAppModelUpdated()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterFolderItemViews(Ljava/lang/Iterable;)V

    goto :goto_0
.end method

.method public appModelUpdated(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const-string v2, "added"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appModelUpdated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAlphabeticalOrder()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_2
    return-void
.end method

.method public appModelUpdatedForHidden()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$15;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public appModelUpdatedForUnHidden()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$16;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$16;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 13

    const v12, 0x7f080037

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v6, v7, :cond_2

    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v6

    iget v7, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v6, v7, :cond_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v6

    if-eqz v6, :cond_3

    move v9, v8

    goto :goto_0

    :cond_3
    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v6, v7, :cond_6

    iget-object v6, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getEditModeShrinkFactor()F

    move-result v4

    :cond_4
    :goto_1
    invoke-static {p1, v4}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;F)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v6, v7, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v10, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v10, :cond_7

    move v7, v8

    :goto_2
    invoke-virtual {v6, v8, v7}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v6, v7, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-virtual {v7, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    :goto_4
    move v9, v8

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_7
    move v7, v9

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->setAlpha(F)V

    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v6, v1, v7}, Lcom/android/launcher2/MenuTitleBarManager;->showEditBar(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    goto/16 :goto_3

    :cond_a
    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-virtual {v7, v12, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_4
.end method

.method public changeGridSize(Lcom/android/launcher2/LauncherApplication$HomeGridSize;)V
    .locals 12

    const/4 v11, 0x1

    const-string v8, "Launcher.MenuAppsGrid"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeGridSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    const v8, 0x7f090141

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget-object v8, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne p1, v8, :cond_0

    const v8, 0x7f0b0021

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    const v8, 0x7f0b0022

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    const v8, 0x7f0901ca

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v8, 0x7f0901c8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v8, 0x7f090249

    invoke-virtual {v6, v8, v7, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    iget v9, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/CellLayoutMenu;->setCellSize(II)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const v8, 0x7f0b000c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    const v8, 0x7f0b000d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    const v8, 0x7f090140

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v8, 0x7f09013f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v8, 0x7f09016a

    invoke-virtual {v6, v8, v7, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v7}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditTranslationViewFactor:F

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v4, v2, v1, v8}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(IIIZ)V

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/launcher2/MenuAppsGrid$14;

    invoke-direct {v9, p0}, Lcom/android/launcher2/MenuAppsGrid$14;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeTextColor(II)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher2/AppIconView;

    if-nez v8, :cond_1

    instance-of v8, v7, Lcom/android/launcher2/FolderIconView;

    if-eqz v8, :cond_2

    :cond_1
    invoke-static {v7, p1, p2}, Lcom/android/launcher2/Utilities;->changeTextColor(Landroid/view/View;II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public changeToAppsStateSearch()V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public clearAccessibilityFocus()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_enabled"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x80

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, p1

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getHiddenItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppIconView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AppItem;->setLoadingListener(Lcom/android/launcher2/BaseItem$LoadingListener;)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AppItem;->setIconView(Landroid/view/View;)V

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    goto :goto_2
.end method

.method public closeFolder(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;->closeFolderWithDelay(ZZI)Z

    move-result v0

    return v0
.end method

.method public closeFolderIfNeeded(ZZ)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;->closeFolderIfNeededWithDelay(ZZI)Z

    move-result v0

    return v0
.end method

.method public closeFolderIfNeededWithDelay(ZZI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppsGrid;->closeFolderWithDelay(ZZI)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeFolderWithDelay(ZZI)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-le p3, v0, :cond_0

    move v0, p3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitFolderItemViews(Ljava/lang/Iterable;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getFolderManager()Lcom/android/launcher2/Folder$FolderManager;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->isCloseFolderWithAppsExit()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$3;-><init>(Lcom/android/launcher2/MenuAppsGrid;ZZ)V

    int-to-long v6, v0

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    move v3, v4

    :goto_1
    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1, p2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public createFolderFromDrag(ILjava/util/List;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v12, v13, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_2

    :cond_0
    const-string v12, "Launcher.MenuAppsGrid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot create folder with an app item :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v12, v13, :cond_9

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_3

    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_3
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v13, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v12, v13, :cond_4

    move/from16 v0, p1

    iput v0, v8, Lcom/android/launcher2/AppFolderItem;->mCell:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v12

    iput v12, v8, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getBackupItemsRecords()Lcom/android/launcher2/BackupItemsRecords;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v12

    iput v12, v8, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    :cond_5
    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v7

    const/4 v11, 0x0

    if-eqz v7, :cond_6

    move-object v11, v7

    check-cast v11, Lcom/android/launcher2/FolderItem;

    :cond_6
    if-eqz v11, :cond_1

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    if-nez v2, :cond_8

    const-string v13, "Launcher.MenuAppsGrid"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createFolderFromDrag has null item : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v11, v2}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v14, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v13, v14, :cond_7

    const/4 v13, 0x1

    iput-boolean v13, v2, Lcom/android/launcher2/AppItem;->mDirty:Z

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_a
    if-eqz v6, :cond_b

    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v13, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v12, v13, :cond_c

    iget v9, v8, Lcom/android/launcher2/AppFolderItem;->mScreenInAlphabetical:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v12

    if-eq v9, v12, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    move-object v3, v11

    invoke-static {v3}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    if-nez p3, :cond_1

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    if-eqz p4, :cond_d

    const/4 v4, 0x0

    :goto_3
    new-instance v12, Lcom/android/launcher2/MenuAppsGrid$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Lcom/android/launcher2/MenuAppsGrid$1;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderItem;)V

    int-to-long v14, v4

    invoke-virtual {v5, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x2bc

    goto :goto_3
.end method

.method public createFolderFromPostPosition(ILjava/util/List;ZLjava/lang/String;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v10, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-ge v5, v8, :cond_2

    :cond_0
    const-string v5, "Launcher.MenuAppsGrid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot create folder with an app item :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-wide v6

    :cond_2
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editAddFolderForPostPosition()Lcom/android/launcher2/AppFolderItem;

    move-result-object v2

    iput p1, v2, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput-object p4, v2, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    iget v5, v5, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v5, v2, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getBackupItemsRecords()Lcom/android/launcher2/BackupItemsRecords;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/BackupItemsRecords;->getScreen()I

    move-result v5

    iput v5, v2, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/FolderItem;

    :cond_4
    if-eqz v4, :cond_1

    invoke-interface {v4, v10}, Lcom/android/launcher2/FolderItem;->setEnabled(Z)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-interface {v4, v0}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v6, v7, :cond_5

    iput-boolean v10, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_7

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    iget-wide v6, v2, Lcom/android/launcher2/AppFolderItem;->mId:J

    goto :goto_0
.end method

.method public createNewPage()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->moveToCurrentPage(I)V

    :cond_0
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mXDown:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mYDown:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMaxSwipeAngle:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    const-string v3, "Launcher.MenuAppsGrid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theta is over MAX_SWIPE_ANGLE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deltaY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    if-ne v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragOnEditMode:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->changeEdgeHandleState(Z)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragOnEditMode:Z

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v2, :cond_4

    move v2, v3

    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->changeEdgeHandleState(Z)V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v4, :cond_1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragOnEditMode:Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->onDrawComplete(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected findIconViewByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v5

    :goto_2
    return-object v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected findPageIndexViewByTag(Ljava/lang/Object;)I
    .locals 6

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    :goto_2
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedLowerPageBound(I)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedUpperPageBound(I)I

    move-result v0

    return v0
.end method

.method public getCreateFolderColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFolderColor:I

    return-void
.end method

.method public getFolder()Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getIsFolderOpenWithEdit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFolderOpenWithEdit:Z

    return v0
.end method

.method public getMaxItemsPerScreen()I
    .locals 2

    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMenuAppsMoreButton()Landroid/view/ViewGroup;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    const-string v3, "titleBar is not exist : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f1000a2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1000a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getMenuAppsMoreButtonContainer()Landroid/view/ViewGroup;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "titleBar is not exist : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f1000a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getMenuAppsSearchBar()Landroid/view/ViewGroup;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    const-string v3, "titleBar is not exist : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f1000a2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1000a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public getMenuAppsSearchBarDivider()Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    const-string v3, "titleBar is not exist : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const v2, 0x7f1000a2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1000a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getOldState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getOpenFolderId()J
    .locals 3

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    :goto_0
    return-object v3

    :cond_0
    const/4 v1, 0x0

    move v0, v2

    :goto_1
    if-gt v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method public getPageCacheSize()I
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCacheSize()I

    move-result v0

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneLeft:I

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mScrollZoneRight:I

    return v0
.end method

.method public getSearchState()Lcom/android/launcher2/MenuAppsSearch;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSearch:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->getSearchState()Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    return-object v0
.end method

.method protected getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public getZoomOutScaleFactor()F
    .locals 1

    sget v0, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    return v0
.end method

.method public getmMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 10

    const-string v7, "Launcher.MenuAppsGrid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleStateChange: (new)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(old)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_1
    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v7, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    :cond_4
    :goto_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v7, p1, p2}, Lcom/android/launcher2/CellLayoutMenu;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v7, :cond_4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v7, :cond_4

    sget-boolean v7, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_6
    if-eq p2, p1, :cond_4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v7, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/launcher2/utils/WallpaperUtils;->isCurrentLiveWallpaper()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickView;->isOpened()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v9, 0x12c

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v7, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v7

    if-eqz v7, :cond_9

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v7, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_a
    return-void
.end method

.method public hideEditBar()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->hideEditBar(Lcom/android/launcher2/MenuStateAnimatorSet;)V

    return-void
.end method

.method protected invalidatePageData()V
    .locals 10

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v5, "Launcher.MenuAppsGrid"

    const-string v6, "invalidatePageData"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    if-eq v5, v7, :cond_2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v5, :cond_0

    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemOnFolder:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutMenu;->realTimeReorderOnItemDeleted(II)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    sub-int v4, v5, v6

    :goto_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$4;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    mul-int/lit8 v7, v4, 0x21

    add-int/lit16 v7, v7, 0x14a

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemOnFolder:Z

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorderOnItemDeleted(II)V

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    sub-int v4, v5, v6

    goto :goto_0

    :cond_2
    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemOnFolder:Z

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransforms()V

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->findIconViewByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemOnFolder:Z

    goto :goto_1
.end method

.method protected invalidatePageData(IZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData(IZ)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public isDragInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    return v0
.end method

.method public isFolderOpened()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isScrollingState()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTouchState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveCurrentState()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    return-void
.end method

.method public loggingAppsPagesCount()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    sget v1, Lcom/android/launcher2/MenuAppsGrid;->mOldPageCount:I

    if-nez v1, :cond_0

    sput v0, Lcom/android/launcher2/MenuAppsGrid;->mOldPageCount:I

    :cond_0
    sget v1, Lcom/android/launcher2/MenuAppsGrid;->mOldPageCount:I

    if-eq v1, v0, :cond_1

    if-lez v0, :cond_1

    sput v0, Lcom/android/launcher2/MenuAppsGrid;->mOldPageCount:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APPS"

    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_1
    return-void
.end method

.method protected onAddItem(Lcom/android/launcher2/AppIconView;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->cancelClicksOnChildrenForCurrentPage()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v2

    if-nez v2, :cond_1

    check-cast p1, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->startLockFolderVerify(Lcom/android/launcher2/FolderIconView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/FolderClickDialogFragment;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Launcher.MenuAppsGrid"

    const-string v3, "folder is already attached"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->cancelClicksOnChildrenForCurrentPage()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast v1, Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v2

    if-nez v2, :cond_6

    check-cast p1, Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->startLockFolderVerify(Lcom/android/launcher2/FolderIconView;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSearch:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->getSearchState()Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsSearch;->refreshFilter()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->clearAccessibilityFocus()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_0
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v5

    iput-object p2, v5, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFolderColor:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/AppFolderItem;->setFolderColor(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/AppItem;

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v8, v9, :cond_1

    move/from16 v7, p7

    move/from16 v0, p8

    :cond_1
    const/4 v8, -0x1

    iput v8, v4, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-virtual {v5, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    :cond_2
    invoke-direct {p0, v5, v7, v0}, Lcom/android/launcher2/MenuAppsGrid;->findNewFolderPosition(Lcom/android/launcher2/AppItem;II)V

    if-nez v3, :cond_3

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v8, v9, :cond_6

    iget-wide v8, v5, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v8

    if-eq v6, v8, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    :cond_4
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/launcher2/MenuAppsGrid$12;

    invoke-direct {v8, p0}, Lcom/android/launcher2/MenuAppsGrid$12;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    iget v8, v5, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    if-eq v8, v1, :cond_4

    iget v8, v5, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    goto :goto_1
.end method

.method public onFolderNameChange(Lcom/android/launcher2/FolderItem;)V
    .locals 2

    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$8;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$8;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mYDown:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mScaleFactor:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mActionUpOnScroll:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/MenuAppsGrid;->closeFolderIfNeeded(ZZ)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mNextPage:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPackageDeleteCompleted(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDeletedItemPos:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDisableItem:Lcom/android/launcher2/AppItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/MenuAppModel;->appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mDisableItem:Lcom/android/launcher2/AppItem;

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPause()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderClickDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsKeyboardShowed:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getSearchState()Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsKeyboardShowed:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsSearch;->closeKeyboard()V

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

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

.method public onRestart()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v13

    if-ge v4, v13, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v12

    instance-of v13, v12, Lcom/android/launcher2/FolderIconView;

    if-eqz v13, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher2/FolderItem;

    if-eqz v13, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    const/4 v9, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v13

    if-ge v7, v13, :cond_3

    invoke-virtual {v3, v7}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    sget-object v13, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v9, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    move-object v11, v12

    check-cast v11, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v11, v6}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    instance-of v13, v12, Lcom/android/launcher2/AppIconView;

    if-eqz v13, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher2/BaseItem;

    if-eqz v13, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    sget-object v13, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v11, v12

    invoke-virtual {v11, v6}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v4

    iget-boolean v2, v1, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2, v3}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "SuperStateKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_1
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onResume()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/Launcher;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v6, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v6, 0x800

    invoke-virtual {v3, v6}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getQuickViewWorkspaceOpen()Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/utils/WallpaperUtils;->isCurrentLiveWallpaper()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v6

    iget-boolean v3, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(ZI)V

    const-string v3, "Launcher.MenuAppsGrid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlurInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    const-string v6, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BlurInfo : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getQuickViewWorkspaceOpen()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " , "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v4

    :goto_4
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " , "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " , "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/utils/WallpaperUtils;->isCurrentLiveWallpaper()Z

    move-result v7

    if-nez v7, :cond_b

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v5

    goto :goto_4

    :cond_9
    move v3, v5

    goto :goto_5

    :cond_a
    const-string v3, "Null"

    goto :goto_6

    :cond_b
    move v4, v5

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SuperStateKey"

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mActionUpOnScroll:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$10;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$10;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public declared-synchronized openFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->findIconViewByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    invoke-virtual {v1, v3}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    if-eq v3, p1, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_4

    const-string v3, "Launcher.MenuAppsGrid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other folder is not closed yet - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iput-object p0, v3, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Folder;->setForViewType(Lcom/android/launcher2/FolderIconView;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {v4, p0, v1, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v4, v3, v2, p2}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/FolderIconView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterFolderItemViews(Ljava/lang/Iterable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public openFolderAfterConfirm(Lcom/android/launcher2/FolderItem;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->pageBeginMoving()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updateClockLiveIcon()V

    return-void
.end method

.method public relayoutOnConfigChange()V
    .locals 9

    const v8, 0x7f0903ae

    const v7, 0x7f0903ad

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v4, :cond_3

    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    const v4, 0x7f0903af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_2

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v4, :cond_0

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_6

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v4, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    goto :goto_0

    :cond_6
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v4, :cond_0

    sget v4, Lcom/android/launcher2/MenuAppsGrid;->mZoomOutScaleFactor:F

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    goto :goto_0
.end method

.method public removeFolderFromDrag(Lcom/android/launcher2/AppFolderItem;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_0
    move-object v0, p1

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/Folder;->repositionOpenFolder(ZZ)V

    :cond_0
    return-void
.end method

.method public resetAtoZPositionArray()V
    .locals 2

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [[I

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    check-cast v1, [[I

    sput-object v1, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    return-void
.end method

.method public resetPreCheckedItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public restoreOpenFolderState(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isDataReady()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const-string v1, "openFolderId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public revertEditChanges()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRevert()V

    return-void
.end method

.method public saveEditChanges()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editRevertCell()V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "openFolderId"

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolderId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "pendingFolderEditText"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pending_folder_edit_text_selection_start"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "pending_folder_edit_text_selection_end"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridAccessibilityEnabled(Z)V

    return-void
.end method

.method public setAllAppsItems(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSearch:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StateSearch;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateSearch;->getSearchState()Lcom/android/launcher2/MenuAppsSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsSearch;->setAppItems(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setAlphabeticalAppsList(Z)V
    .locals 10

    const/4 v9, 0x2

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "Launcher.MenuAppsGrid"

    const-string v5, "no items(setAlphabeticalAppsList)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    if-nez p1, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/launcher2/MenuAppsGrid;->appsList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/launcher2/MenuAppsGrid;->folderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v5, v2, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_1

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid;->folderList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid;->appsList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->folderList:Ljava/util/List;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->folderList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->sortLocale(Ljava/util/List;)V

    :cond_3
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->appsList:Ljava/util/List;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->appsList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->sortLocale(Ljava/util/List;)V

    :cond_4
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->folderList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    filled-new-array {v4, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sput-object v4, Lcom/android/launcher2/MenuAppsGrid;->mUndofolderPos:[[I

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->appsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    filled-new-array {v4, v9}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sput-object v4, Lcom/android/launcher2/MenuAppsGrid;->mUndoappsPos:[[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v4

    sput v4, Lcom/android/launcher2/MenuAppsGrid;->mUndoPageCount:I

    const-string v4, "Launcher.MenuAppsGrid"

    const-string v5, "AtoZ info : items(%d), mCellCountX(%d), mCellCountY(%d)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid;->appsList:Ljava/util/List;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid;->folderList:Ljava/util/List;

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/launcher2/MenuAppsGrid;->alphabeticalReoder(Ljava/util/List;Ljava/util/List;Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x1ae

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/MenuAppsGrid$13;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuAppsGrid$13;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    int-to-long v6, v0

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    goto/16 :goto_0
.end method

.method public setCreateFolderAddButtonFromHomeView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    return-void
.end method

.method public setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V
    .locals 10

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    instance-of v6, p1, Lcom/android/launcher2/AppItem;

    if-eqz v6, :cond_2

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/AppItem;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v6, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-static {v0}, Lcom/android/launcher2/AppItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v7

    if-eqz v7, :cond_8

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    iget-object v8, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_4

    sget-boolean v7, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    if-eqz v7, :cond_5

    const-string v7, "Launcher.MenuAppsGrid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MenuAppsGrid:setCreateFolderAddButtonState item = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v3, v4

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v2, 0x1

    :cond_7
    if-eqz v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_3

    move-object v3, v0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    sget-boolean v6, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    if-eqz v6, :cond_1

    const-string v6, "Launcher.MenuAppsGrid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MenuAppsGrid:setCreateFolderAddButtonState item = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected setDataIsReady()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->setDataIsReady()V

    return-void
.end method

.method public setDisableItem(Lcom/android/launcher2/AppItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDisableItem:Lcom/android/launcher2/AppItem;

    return-void
.end method

.method public setFolderColorToAddButton(I)V
    .locals 0

    sput p1, Lcom/android/launcher2/MenuAppsGrid;->mFolderColorToAddButton:I

    return-void
.end method

.method public setFolderTitletoAddButton(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    return-void
.end method

.method public setIsFolderOpenWithEdit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFolderOpenWithEdit:Z

    return-void
.end method

.method public setMaxScrollX()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacingHint:I

    if-gez v2, :cond_0

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacing:I

    :goto_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    iput v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mMaxScrollX:I

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacingHint:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacing:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacing:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mMaxScrollX:I

    goto :goto_1
.end method

.method public setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 0

    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/launcher2/MenuAppsSearch;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/MenuAppsSearch;-><init>(Lcom/android/launcher2/MenuView;Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mSearchState:Lcom/android/launcher2/MenuAppsSearch;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$7;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_2
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 10

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v8, p1, :cond_5

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v9, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v8, v9, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/launcher2/CellLayoutNoGap;->setEnabled(Z)V

    :cond_0
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v8, v1, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v8, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v8

    if-ge v6, v8, :cond_4

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v8, v4, Lcom/android/launcher2/FolderIconView;

    if-eqz v8, :cond_2

    check-cast v4, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIconView;->refresh()V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public sortLocale(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->APPS_COMPARATOR:Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->updateCollator()V

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->APPS_COMPARATOR:Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    :cond_0
    return-void
.end method

.method public syncPages()V
    .locals 9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "Launcher.MenuAppsGrid"

    const-string v8, "syncPages"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v7, v8, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v7, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_5

    sget-boolean v7, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    if-nez v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v7

    if-nez v7, :cond_9

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->clearLayout(Lcom/android/launcher2/Page;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->removeAllViews()V

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->clear()V

    :cond_7
    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v8, :cond_8

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_c

    const-string v7, "Launcher.MenuAppsGrid"

    const-string v8, "appsList is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_3
    if-ltz v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->removeViewAt(I)V

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_b
    const-string v7, "Launcher.MenuAppsGrid"

    const-string v8, "getStateObj() is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v7, v8, :cond_e

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->moveToCurrentPage(I)V

    const-string v7, "Launcher.MenuAppsGrid"

    const-string v8, "syncPages end"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected syncViewVisibility()V
    .locals 0

    return-void
.end method

.method updateCalendarLiveIcon()V
    .locals 10

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIconCalendarIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v7, v8, :cond_2

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_1

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v6, v7, Lcom/android/launcher2/AppFolderItem;->mScreenInAlphabetical:I

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->isPageInclusive(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_4

    iget-object v1, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderItem;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v6, v4, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    goto :goto_0

    :cond_2
    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_3

    iget v6, v4, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_0

    :cond_3
    iget v6, v4, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1
.end method

.method updateClockLiveIcon()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getComingPageForLiveIcon()I

    move-result v4

    const/high16 v7, -0x80000000

    if-ne v4, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIconClockIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v7, v8, :cond_3

    iget-object v7, v3, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_2

    iget-object v7, v3, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v6, v7, Lcom/android/launcher2/AppFolderItem;->mScreenInAlphabetical:I

    :goto_1
    if-ne v6, v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getIconView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_2
    iget v6, v3, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    goto :goto_1

    :cond_3
    iget-object v7, v3, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v7, :cond_4

    iget v6, v3, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_1

    :cond_4
    iget v6, v3, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_1
.end method

.method public updateMoreButtonState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 11

    const/16 v10, 0x8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    const v6, 0x7f10009a

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v5, 0x7f1000a2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v5, 0x7f1000a5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v5, 0x7f1000c5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v5, 0x7f1000a4

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isVZWModel()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuTitleBarManager;->setSearchBarBackground()V

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v5, :cond_4

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v3, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v5, :cond_2

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isEdgeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->zIn:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->zoomoutTransform(Landroid/view/View;F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->normalTransform(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v4, p2, v8

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageZoom:F

    const v5, 0x3dcccccd    # 0.1f

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    const v7, 0x3fe66666    # 1.8f

    div-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    const v4, 0x3f7ae148    # 0.98f

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageZoom:F

    sub-float v5, v8, v5

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    cmpg-float v4, p2, v9

    if-gez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    :goto_2
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    invoke-virtual {p1, v2}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    invoke-virtual {p1, v2}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v8, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v4, v2, v8

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isFastScrolling()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_2
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const-string v7, "Launcher.MenuAppsGrid"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRestoreItems(), "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    instance-of v9, v6, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v9, :cond_3

    check-cast v6, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/launcher2/AppIconView;->applyState(Z)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected updateVisiblePages()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateVisiblePagesForDragMode()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->loggingAppsPagesCount()V

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateVisiblePages()I

    move-result v0

    goto :goto_0
.end method

.method protected zoomoutTransform(Landroid/view/View;F)V
    .locals 17

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v5

    sget-boolean v14, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v14, :cond_1

    sub-int v14, v9, v5

    add-int/lit8 v4, v14, -0x1

    :goto_1
    if-nez v4, :cond_2

    const/4 v14, 0x0

    cmpg-float v14, p2, v14

    if-gez v14, :cond_2

    const/4 v7, 0x1

    :goto_2
    add-int/lit8 v14, v9, -0x1

    if-ne v4, v14, :cond_3

    const/4 v14, 0x0

    cmpl-float v14, p2, v14

    if-lez v14, :cond_3

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/launcher2/CellLayout;

    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v14, p2, v14

    if-gez v14, :cond_4

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    check-cast p1, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageBackgroundAlpha:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, p2, v14

    if-gtz v14, :cond_b

    if-nez v7, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v14

    if-ne v14, v5, :cond_9

    const/4 v6, 0x1

    :goto_5
    const v14, 0x3f7d70a4    # 0.99f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x41000000    # 8.0f

    div-float v16, p2, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mActionUpOnScroll:Z

    if-nez v14, :cond_7

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mScaleFactor:F

    const v15, 0x3f7d70a4    # 0.99f

    invoke-static {v14, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/MenuAppsGrid;->mScaleFactor:F

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mActionUpOnScroll:Z

    if-nez v14, :cond_8

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/MenuAppsGrid;->mScaleFactor:F

    :cond_8
    int-to-float v14, v10

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v13, v14, v15

    int-to-float v14, v11

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v3, v14, v15

    const/4 v14, 0x0

    cmpg-float v14, p2, v14

    if-gez v14, :cond_a

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v13, v14

    sub-float v14, v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationX(F)V

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    neg-float v14, v3

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v13, v15

    add-float/2addr v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4
.end method
