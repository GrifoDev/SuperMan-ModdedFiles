.class public final Lcom/android/launcher2/HomeView;
.super Landroid/widget/FrameLayout;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/LifeCycle;
.implements Lcom/android/launcher2/Launcher$ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeView$LayoutParams;,
        Lcom/android/launcher2/HomeView$DropPos;,
        Lcom/android/launcher2/HomeView$AppWidgetResetObserver;,
        Lcom/android/launcher2/HomeView$SavedState;,
        Lcom/android/launcher2/HomeView$PendingAddArguments;
    }
.end annotation


# static fields
.field private static final ADVANCE_MSG:I = 0x1

.field public static final APPWIDGET_HOST_ID:I = 0x400

.field private static final DEBUGGABLE:Z

.field static final DEBUG_WIDGETS:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final LOGD:Z = false

.field static final MENU_MANAGE_APPS:I = 0x3

.field static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "launcher.workspace_open_folder_id"

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_start"

.field static final PROFILE_STARTUP:Z = false

.field private static final REMOVE_MARKETSAMPLE:I = 0x3

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_NEW_FOLDER_WITH_SHORTCUT_ITEM:I = 0x2

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_SHORTCUT:I = 0x7

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xc

.field private static final SHOW_MARKETSAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeView"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field private static final mAdvanceInterval:I = 0x4e20

.field private static final mAdvanceStagger:I = 0xfa

.field static mDestinationNewFolderId:J

.field private static mHomeDefaultIconClick:Z

.field private static mHomePageReorder:Z

.field static mIsAllAppsButtonDisable:Z

.field public static mZeroActivityLaunched:Z

.field private static sCurrentRotationAngle:I

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsBindHotseat:Z

.field static sIsDragState:Z

.field private static sPendingAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeView$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestoreCurrentPage:I

.field static sSingleInstanceAppWidgetList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final sSingleInstanceAppWidgetListLock:Ljava/lang/Object;

.field static sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sTouchPt:Landroid/graphics/PointF;


# instance fields
.field public WidgetAnimEndCallBack:Ljava/lang/Runnable;

.field public isHelpAppPageAdded:Z

.field public isHelpAppPageDeleted:Z

.field private mActivityResultResume:Z

.field private mAfterSavedInstanceState:Z

.field private mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mCaptureDateTime:Ljava/lang/String;

.field private final mChangeTphoneModeObserver:Landroid/database/ContentObserver;

.field private mCreateFolderColor:I

.field private mCurrentDragItem:Lcom/android/launcher2/BaseItem;

.field private mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDarkenView:Landroid/view/View;

.field private mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

.field private mEditBar:Lcom/android/launcher2/HomeEditBar;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mFolderClosedWithHomeKey:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHomeContainer:Landroid/view/View;

.field private mHomeDarkenLayer:Landroid/view/View;

.field public mHomeKeyPress:Z

.field private mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

.field private mHomeScreenGridChangeHelper:Lcom/android/launcher2/HomeScreenGridChangeHelper;

.field private mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mHotseatTextSize:I

.field private mIconAutoAlgn:Lcom/android/launcher2/IconAutoAlign;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMarketSample:Landroid/view/View;

.field private mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

.field private mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

.field private mPendingAddWidgetId:I

.field private mPendingWidgetId:I

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

.field private mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mReduceHotseatTextSize:I

.field private mRestoring:Z

.field private mSavedState:Lcom/android/launcher2/HomeView$SavedState;

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private final mSineInOut60:Landroid/view/animation/Interpolator;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mTakeScreenshot:Z

.field private mTargetFolderId:J

.field private mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

.field private mTmpAddItemCellCoordinates:[I

.field private mTmpAddItemSpans:[I

.field private final mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

.field mWaitingForResult:Z

.field private mWidgetAnimFinished:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field private mZeropageOnOff:Landroid/widget/Switch;

.field private screenIndexBeforeHelpAppPageAddition:I

.field private screenIndexFestivalHelpAppPageAddition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mHomePageReorder:Z

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mHomeDefaultIconClick:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/HomeView;->sRestoreCurrentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetListLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    sput v2, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    sput-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/launcher2/PendingAddInfo;

    invoke-direct {v1}, Lcom/android/launcher2/PendingAddInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mSineInOut60:Landroid/view/animation/Interpolator;

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mActivityResultResume:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    iput v8, p0, Lcom/android/launcher2/HomeView;->mPendingWidgetId:I

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mFolderClosedWithHomeKey:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mTakeScreenshot:Z

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mCaptureDateTime:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mHomeScreenGridChangeHelper:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    iput-object v7, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    iput v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddWidgetId:I

    new-instance v1, Lcom/android/launcher2/HomeView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$2;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    new-instance v1, Lcom/android/launcher2/HomeView$8;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$8;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->WidgetAnimEndCallBack:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/launcher2/HomeView$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$9;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/HomeView$10;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$10;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v1, Lcom/android/launcher2/HomeView$12;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HomeView$12;-><init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    iput v8, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    iput v8, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    iput v6, p0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->registerContentObservers()V

    new-instance v1, Lcom/android/launcher2/HomeRealPreview;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeRealPreview;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-static {p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    return-void
.end method

.method private ChangeTphoneMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherModel;->ChangeTphoneMode(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/HomeView;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomePendingWidget;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;Landroid/appwidget/AppWidgetHostView;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/AppWidgetBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/HomeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->ChangeTphoneMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeView;)Landroid/appwidget/AppWidgetManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView;->mPendingWidgetId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/HomeView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView;->mPendingWidgetId:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher2/HomeView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/PendingAddInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V

    return-void
.end method

.method private addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;Landroid/appwidget/AppWidgetHostView;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-eqz p2, :cond_0

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getDefSpans()[I

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v15

    iget v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v15}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_CONFIGURE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v18, "appWidgetId"

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    check-cast v5, Landroid/content/ClipData;

    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v6}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    if-eqz v17, :cond_3

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    const-string v18, "com.sec.android.app.launcher.prefs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v18, "tempScreen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempCellX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempCellY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempSpanX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v18, "tempSpanY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeView;->copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/HomeView;->mPendingAddWidgetId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/HomeView;->startWidgetConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/appwidget/AppWidgetHost;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v10, :cond_4

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_4
    if-eqz v16, :cond_2

    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_6
    const-string v18, "Launcher.HomeView"

    const-string v19, "mAppWidgetHost is null!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V

    goto/16 :goto_0
.end method

.method private calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    if-ne v2, v0, :cond_0

    aget v0, p3, v1

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    if-ne v2, v0, :cond_1

    aget v0, p3, v3

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_2

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v0, p4, v4

    if-eq v2, v0, :cond_2

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_3

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v0, p4, v5

    if-eq v2, v0, :cond_3

    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_3
    return-void
.end method

.method private closeQuickViewWorkspaceStartAnimation()V
    .locals 6

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v3, 0x2

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v11, :cond_1

    iput-boolean v13, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    :cond_1
    return v12

    :pswitch_1
    iput-boolean v7, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-static {v0, v2, v7, p0}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v2, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->componentName:Landroid/content/ComponentName;

    iput-object v2, v0, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Landroid/content/Intent;JIII)V

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    move v6, v13

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeView;->getWidgetIdFromIntent(Landroid/content/Intent;)I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-static {v0, p1}, Lcom/android/launcher2/HomeView;->copyPendingAddToHomeItem(Lcom/android/launcher2/PendingAddInfo;Lcom/android/launcher2/HomeView$PendingAddArguments;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ceh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeAdd mWidgetAnimFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-direct {p0, v10, v0, v4}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V

    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2
    iput v10, p0, Lcom/android/launcher2/HomeView;->mPendingWidgetId:I

    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-direct {p0, v10, v0, v4}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeView;->getWidgetIdFromIntent(Landroid/content/Intent;)I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-static {v0, p1}, Lcom/android/launcher2/HomeView;->copyPendingAddToHomeItem(Lcom/android/launcher2/PendingAddInfo;Lcom/android/launcher2/HomeView$PendingAddArguments;)V

    invoke-direct {p0, v10}, Lcom/android/launcher2/HomeView;->completeRestoreAppWidget(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private completeAddAppWidget(ILcom/android/launcher2/HomeItem;Landroid/appwidget/AppWidgetHostView;)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v26

    if-nez v26, :cond_1

    sget-boolean v4, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App widget info is null. AppWidgetID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v31, v0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v10, v31, v4

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v10, v31, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v33, v0

    const/16 v27, 0x0

    if-eqz v9, :cond_6

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v4, :cond_4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v10, v14, v4

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v10, v14, v4

    const/16 v27, 0x1

    :cond_2
    :goto_1
    if-nez v27, :cond_7

    new-instance v17, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/4 v4, 0x0

    aget v18, v31, v4

    const/4 v4, 0x1

    aget v19, v31, v4

    const/16 v20, 0x0

    move v15, v8

    invoke-static/range {v14 .. v20}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v27

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v10, v14, v4

    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v10, v14, v4

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    :cond_3
    if-nez v27, :cond_7

    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    const-string v4, "Launcher.HomeView"

    const-string v10, "foundCellSpan is false. delete appwidget ID"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/launcher2/HomeView$6;

    const-string v10, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v10, v1}, Lcom/android/launcher2/HomeView$6;-><init>(Lcom/android/launcher2/HomeView;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView$6;->start()V

    goto/16 :goto_0

    :cond_4
    if-eqz v33, :cond_2

    const/4 v4, 0x0

    aget v10, v33, v4

    const/4 v4, 0x1

    aget v11, v33, v4

    const/4 v4, 0x0

    aget v12, v31, v4

    const/4 v4, 0x1

    aget v13, v31, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v30

    if-eqz v30, :cond_5

    const/16 v27, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v27, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, -0x1

    goto :goto_1

    :cond_7
    new-instance v19, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    const/4 v4, 0x0

    aget v4, v31, v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    const/4 v4, 0x1

    aget v4, v31, v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v4, :cond_a

    move-object/from16 v32, p2

    check-cast v32, Lcom/android/launcher2/HomePendingWidget;

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomePendingWidget;->setHomeWidgetItem(Lcom/android/launcher2/HomeWidgetItem;)V

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/4 v4, 0x0

    aget v23, v14, v4

    const/4 v4, 0x1

    aget v24, v14, v4

    const/16 v25, 0x0

    move-wide/from16 v20, v6

    move/from16 v22, v8

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v4, :cond_0

    if-nez p3, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v4, v10, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    :goto_4
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v28

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v28

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v28

    iget v11, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v28

    iget v12, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v28

    iget v13, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v10, Lcom/android/launcher2/HomeView$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1, v9}, Lcom/android/launcher2/HomeView$7;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v4, v10}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    const-string v4, "Launcher.HomeView"

    const-string v10, "completeAddAppWidget "

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v19

    iget v12, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v10, v11, v4, v12, v13}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    const/16 v34, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    if-eqz v34, :cond_9

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    :cond_9
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/HomeView;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v4, :cond_b

    move-object/from16 v32, p2

    check-cast v32, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeWidgetItem;->calcResizeSpan(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    goto/16 :goto_4

    :cond_d
    const/16 v34, 0x0

    goto :goto_5
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 8

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v0, v0, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v2, v2, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v2}, Lcom/android/launcher2/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring malicious intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto :goto_0
.end method

.method private completeRestoreAppWidget(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Workspace;->getWidgetForAppWidgetId(I)Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/PendingAppWidgetHostView;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "Launcher.HomeView"

    const-string v4, "Widget update called, when the widget no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    iget-object v3, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    instance-of v3, v3, Lcom/android/launcher2/PendingAppWidgetHostView;

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0
.end method

.method private static copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/PendingAddInfo;)V
    .locals 2

    iget-wide v0, p1, Lcom/android/launcher2/PendingAddInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iget v0, p1, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iget v0, p1, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iget v0, p1, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    iget v0, p1, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    iget v0, p1, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    iget-object v0, p1, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    iget-object v0, p1, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method private static copyPendingAddToHomeItem(Lcom/android/launcher2/PendingAddInfo;Lcom/android/launcher2/HomeView$PendingAddArguments;)V
    .locals 2

    iget-wide v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/PendingAddInfo;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iput v0, p0, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iput v0, p0, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    iput v0, p0, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    iput v0, p0, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    iput v0, p0, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method private copySpans([I[I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    array-length v3, p2

    if-ne v3, v5, :cond_0

    array-length v3, p1

    if-eq v3, v5, :cond_3

    :cond_0
    const-string v2, ""

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad array passed to copySpans src "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") dst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    array-length v3, p2

    invoke-static {p2, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-wide v2, p1, Lcom/android/launcher2/HomePendingWidget;->container:J

    iput-wide v2, v0, Lcom/android/launcher2/PendingAddInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    iput v1, v0, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    iput v1, v0, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    iput v1, v0, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    iput v1, v0, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->dropPos:[I

    iput-object v1, v0, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    return-void
.end method

.method private createWorkspaceChildren()V
    .locals 15

    const v14, 0x7f040053

    const v13, 0x7f040052

    const/16 v2, 0x8

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v12

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v12, :cond_b

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne v9, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040059

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0233

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setCellSize(II)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0237

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0236

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setCellSize(II)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->refreshCellDimension()V

    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_2

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v10, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne v9, v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v0, v10}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v14, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040054

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v13, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v14, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040054

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v13, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto/16 :goto_1

    :cond_9
    move-object v11, v10

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v9}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v6

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    goto/16 :goto_2

    :cond_a
    move v1, v2

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v7

    const-string v1, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWorkspaceChildren : grid size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HSGR"

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->name()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v8

    if-ltz v8, :cond_c

    if-lt v8, v12, :cond_d

    :cond_c
    if-gez v8, :cond_e

    move v8, v6

    :goto_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    :cond_d
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    return-void

    :cond_e
    add-int/lit8 v8, v12, -0x1

    goto :goto_4
.end method

.method public static findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z
    .locals 10

    if-nez p3, :cond_1

    const/4 v5, 0x0

    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v8, p2

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    if-ne p1, v8, :cond_3

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p1

    :cond_3
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p0, :cond_4

    array-length v8, p0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    :cond_4
    const/4 v8, 0x2

    new-array p0, v8, [I

    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    move v3, p1

    :goto_1
    if-lt v3, v1, :cond_6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v3, 0x1

    :goto_2
    const/4 v6, 0x1

    :cond_6
    if-eqz v6, :cond_9

    if-lt v3, p1, :cond_9

    :goto_3
    if-nez v5, :cond_7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v4

    const/high16 v8, -0x80000000

    if-eq v4, v8, :cond_7

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, p0, v8, v9}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v4, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    const/4 v5, 0x1

    :cond_7
    iget-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v8, :cond_0

    if-eqz p6, :cond_0

    invoke-static {p2}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {v7, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v8, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_b

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, p0, p4, p5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v3, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    const/4 v5, 0x1

    if-ne v3, p1, :cond_a

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_3
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    const-string v5, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCaptureBitmap getWidth : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " getHeight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v0

    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2

    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private getWidgetIdFromIntent(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :goto_0
    if-gez v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddWidgetId:I

    if-lez v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddWidgetId:I

    :cond_0
    return v0

    :cond_1
    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private performOnHomePressed(Z)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Launcher.HomeView"

    const-string v1, "performOnHomePressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mFolderClosedWithHomeKey:Z

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_6

    const/4 p1, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mFolderClosedWithHomeKey:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f110087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method private reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-wide/16 v2, -0x64

    cmp-long v1, p2, v2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v1

    if-ne p4, v1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p4, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method private registerContentObservers()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "skt_phone20_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private removeRemainItem(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 10

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v7}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8, v1}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    :cond_0
    :goto_0
    const-string v0, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove remained item("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") from folder : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    :cond_1
    return-void

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v9, :cond_0

    invoke-virtual {v9, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method private resetAddInfo()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/launcher2/PendingAddInfo;->container:J

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput v4, v0, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput v4, v1, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iput v4, v0, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput v4, v1, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iput v4, v0, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput-object v5, v0, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput-object v5, v0, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    iput v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddWidgetId:I

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private restoreState(Lcom/android/launcher2/HomeView$SavedState;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_1

    if-le v0, v10, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_1
    sput v10, Lcom/android/launcher2/HomeView;->sRestoreCurrentPage:I

    iget-wide v4, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    iget v3, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    if-le v3, v10, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput-wide v4, v8, Lcom/android/launcher2/PendingAddInfo;->container:J

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput v3, v8, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iput v9, v8, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iput v9, v8, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iput v9, v8, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iput v9, v8, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddComponentName:Landroid/content/ComponentName;

    iput-object v9, v8, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    iget v2, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    if-eq v10, v1, :cond_2

    if-eq v10, v2, :cond_2

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    const/4 v9, 0x2

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v8, v8, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    aput v1, v8, v11

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v8, v8, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    aput v2, v8, v12

    :cond_2
    iput-boolean v12, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    :cond_3
    iget-object v8, p1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v8, :cond_4

    iget v6, p1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-boolean v7, p1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-nez v8, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    const/4 v7, 0x0

    :cond_7
    sget-boolean v8, Lcom/android/launcher2/Launcher;->mIsRestartModeChange:Z

    if-eqz v8, :cond_9

    const-string v8, "Launcher.HomeView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreState(), wasInQuickView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8

    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    :cond_8
    const/4 v7, 0x0

    sput-boolean v11, Lcom/android/launcher2/Launcher;->mIsRestartModeChange:Z

    :cond_9
    if-eqz v7, :cond_a

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, v8, Lcom/android/launcher2/Workspace;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    invoke-virtual {p0, p1, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    :cond_a
    iput-boolean v11, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    goto/16 :goto_0
.end method

.method private sendAdvanceMessage(J)V
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    return-void
.end method

.method public static setHomeDefaultIconClick(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher2/HomeView;->mHomeDefaultIconClick:Z

    return-void
.end method

.method private setupViews()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110078

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    const v2, 0x7f1100de

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/QuickViewWorkspace;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const v2, 0x7f110079

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    const v2, 0x7f11007a

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    const v2, 0x7f11007c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f110077

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    const v2, 0x7f0a01e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView;->mHotseatTextSize:I

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/HomeView;->mReduceHotseatTextSize:I

    iget v2, p0, Lcom/android/launcher2/HomeView;->mReduceHotseatTextSize:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/HomeView;->mHotseatTextSize:I

    iget v3, p0, Lcom/android/launcher2/HomeView;->mReduceHotseatTextSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/HomeView;->mHotseatTextSize:I

    :cond_0
    const v2, 0x7f110006

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Hotseat;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    :cond_1
    const v2, 0x7f11007b

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mZeropageOnOff:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f110080

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/IconAutoAlign;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mIconAutoAlgn:Lcom/android/launcher2/IconAutoAlign;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mIconAutoAlgn:Lcom/android/launcher2/IconAutoAlign;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/IconAutoAlign;->setup(Lcom/android/launcher2/HomeView;)V

    :cond_2
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->setup(Lcom/android/launcher2/HomeView;)V

    const v2, 0x7f110046

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeEditBar;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f110083

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/IconMoveContainer;

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/IconMoveContainer;->setup(Lcom/android/launcher2/HomeView;)V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/HomeView;)V

    new-instance v2, Lcom/android/launcher2/HomeScreenGridChangeHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/HomeView;)V

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeScreenGridChangeHelper:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeScreenGridChangeHelper:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeScreenGridChangeHelper:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    aget v3, v0, v5

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->initWorkspaceInfo(II)V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->createWorkspaceChildren()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->updateWorkspaceMargin(Z)V

    return-void
.end method

.method public static showNoRoomAnyPageMessage(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showOutOfSpaceMessage(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startWidgetConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/appwidget/AppWidgetHost;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/android/launcher2/Launcher;->startWidgetConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/appwidget/AppWidgetHost;Lcom/android/launcher2/Launcher$ActivityResultCallback;)V

    return-void
.end method


# virtual methods
.method public addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 6

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_1

    const-string v2, "Launcher.HomeView"

    const-string v3, "addAppWidgetFromDrop : enable intallanim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;Landroid/appwidget/AppWidgetHostView;)V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->checkSingleInstanceAppWidget(Lcom/android/launcher2/HomePendingWidget;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Launcher.HomeView"

    const-string v3, "addAppWidgetFromDrop : disable intallanim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v3, p1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v4, p1, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    new-instance v5, Lcom/android/launcher2/HomeView$11;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/HomeView$11;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomePendingWidget;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    goto :goto_0
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;Z)Z
    .locals 3

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWidgetInstallAnim()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->checkSingleInstanceAppWidget(Lcom/android/launcher2/HomePendingWidget;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/launcher2/HomePendingWidget;->mBoundWidget:Landroid/appwidget/AppWidgetHostView;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->getWidgetIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;Landroid/appwidget/AppWidgetHostView;)V

    goto :goto_0
.end method

.method public addHelpAppPage()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumFestivalPages()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->addPage()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public addPage()V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040053

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040054

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040052

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    goto :goto_0

    :cond_5
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public addShortcutItemsIntoExistingFolder(Ljava/util/List;)Lcom/android/launcher2/HomeFolderItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    iget-wide v2, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Launcher.HomeView"

    const-string v2, "existingFolder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newItems.size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFolderItem;->addItemForMulti(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    goto :goto_0
.end method

.method public addShortcutItemsIntoExistingFolder(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/HomeView$5;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/launcher2/HomeView$5;-><init>(Lcom/android/launcher2/HomeView;Ljava/util/List;Lcom/android/launcher2/HomeFolderItem;Landroid/app/Activity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher2/HomeView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public addShortcutItemsIntoNewFolder(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-wide v2, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-wide v2, v9, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    iget v7, v1, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    invoke-virtual {v9, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v3, v9, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    :cond_1
    return-void
.end method

.method public addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v1, p1, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/HomeView$4;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher2/HomeView$4;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 33

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v28

    if-eqz v28, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_4

    :cond_2
    const-string v28, "Launcher.HomeView"

    const-string v29, "Attempted to bind a widget larger than what will fit. Removing."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v28, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    check-cast v28, Landroid/app/Activity;

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    const-string v28, "com.sec.android.app.launcher.prefs"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    const-string v28, "delelteFrombindAppWidget"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", time : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v24

    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-ltz v28, :cond_5

    const-wide/16 v28, 0xa

    cmp-long v28, v24, v28

    if-ltz v28, :cond_8

    const-wide/16 v28, 0x64

    cmp-long v28, v24, v28

    if-gez v28, :cond_8

    :cond_5
    const/4 v10, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    const/4 v10, 0x1

    :cond_7
    if-nez v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v28

    if-eqz v28, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/android/launcher2/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x2

    if-nez v28, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v28, v0

    if-eqz v28, :cond_b

    if-nez v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v28, v0

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v11, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v21

    if-nez v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    if-nez v28, :cond_d

    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_b
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    if-eqz v28, :cond_14

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v28, v0

    if-nez v28, :cond_10

    const-string v28, "Launcher.HomeView"

    const-string v29, "mAppWidgetHost is null. Was HomeView.onDetachedFromWindow() called previously?"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const/16 v28, 0x4

    goto :goto_1

    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x4

    if-eqz v28, :cond_b

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    if-nez v28, :cond_b

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    :cond_f
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    if-nez v8, :cond_b

    sget-boolean v28, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v28, :cond_0

    const-string v28, "Launcher.HomeView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "App widget info is null. AppWidgetID = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v28, v0

    if-nez v28, :cond_15

    if-nez v8, :cond_11

    sget-boolean v28, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v28, :cond_0

    const-string v28, "Launcher.HomeView"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "widget info(RESTORE_COMPLETED) is null. AppWidgetID = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHotword()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    sget-object v29, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual/range {v28 .. v29}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move/from16 v28, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v28

    if-nez v28, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/Launcher;

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    :cond_12
    const-string v28, "com.sec.android.daemonapp"

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/launcher2/LauncherAppWidgetHostView;

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->mIsSetFlingOption:Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v28, v0

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    iget v0, v14, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move/from16 v29, v0

    iget v0, v14, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move/from16 v30, v0

    iget v0, v14, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move/from16 v31, v0

    iget v0, v14, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    move/from16 v32, v0

    invoke-virtual/range {v28 .. v32}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    :cond_14
    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v28

    if-eqz v28, :cond_14

    const/4 v8, 0x0

    new-instance v26, Lcom/android/launcher2/PendingAppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/PendingAppWidgetHostView;->updateIcon(Lcom/android/launcher2/PkgResCache;Landroid/graphics/Bitmap;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public bindFolders(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    const/16 v8, -0x7b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    iget v5, v1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-eq v5, v8, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomeView;->removeRemainItem(Lcom/android/launcher2/HomeFolderItem;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove empty folder : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    iget v5, v1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/IconMoveContainer;->recoveryDissolvedFolder(Lcom/android/launcher2/HomeFolderItem;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeFolderItem;->normalize(Ljava/util/List;)V

    goto :goto_3

    :cond_7
    sget-object v4, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeView;->restoreOpenFolder(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    return-void
.end method

.method public bindHomeDeleteFestivalPage()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "Launcher.HomeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindHomeDeleteFestivalPage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_2
    return-void
.end method

.method public bindHomeInsertFestivalPage()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    invoke-static {v9}, Lcom/android/launcher2/FestivalPageManager;->getCurrentFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v3

    array-length v8, v4

    const/4 v7, -0x1

    const/4 v2, -0x1

    sget-boolean v9, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v9, :cond_2

    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage toBeCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " festivalDayList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-le v8, v3, :cond_3

    move v8, v3

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_4

    aget-object v9, v4, v6

    if-nez v9, :cond_5

    :cond_4
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage currentPageCount [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0

    :cond_5
    add-int v7, v0, v6

    aget-object v9, v4, v6

    invoke-static {v9}, Lcom/android/launcher2/FestivalPageManager;->getFestivalType(Ljava/lang/String;)I

    move-result v2

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v2, v10}, Lcom/android/launcher2/Workspace;->insertWorkspaceFestivalScreen(IIZ)Lcom/android/launcher2/CellLayout;

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x2

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage festivalName [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ]  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fesivalKey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/IconMoveContainer;->removeItem(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->updateShortcuts(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/IconMoveContainer;->updateItem(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public bindHomePageAdjust(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindHomePageAdjust(), workspacePageCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", screenCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v2

    sub-int v0, p1, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->addPage()V

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bindHomePagesUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateScreenGrid()Lcom/android/launcher2/CellLayout;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    return-void
.end method

.method public bindHotseat(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/launcher2/Hotseat;->normalizeContents(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v1, v1, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->beginBind(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(II)I

    move-result v2

    iput v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v1, v1, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutHotseat;->endBind()V

    goto :goto_0
.end method

.method public bindItem(Lcom/android/launcher2/HomeItem;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/HomeView$17;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindItems(Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/launcher2/HomeView$17;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v4, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindRefreshItems(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v10, "Launcher.HomeView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bindRefreshItems, refreshItems count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v10

    if-lez v10, :cond_5

    const/4 v3, 0x0

    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_4

    const/4 v7, 0x0

    :goto_1
    iget-object v10, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    if-ge v7, v10, :cond_4

    iget-object v10, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    instance-of v10, v9, Landroid/appwidget/AppWidgetHostView;

    if-nez v10, :cond_2

    instance-of v10, v9, Lcom/android/launcher2/FolderIconView;

    if-eqz v10, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Lcom/android/launcher2/HomeItem;

    if-eqz v10, :cond_2

    move-object v5, v8

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v9

    check-cast v4, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    sget-object v10, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    if-eqz v10, :cond_8

    sget-object v10, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    sget-object v10, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getIconView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v10, v5}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v10, v10, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    if-lez v10, :cond_0

    const/4 v3, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v10, v10, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    if-ge v3, v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v10, v10, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v3}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v10, v10, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v10, v10, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->changeOrientationExtras()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    :cond_0
    return-void
.end method

.method public canCapture()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canCapture isWorkspaceLocked() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVisible : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canCapture mWorkspace.getState()() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isTouchActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPageMoving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canCapture getCurrentPage()() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getHomeScreenIndex() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "capture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canCapture isPause : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cancelClicksOnHome()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->cancelClicksOnChildrenForCurrentPage()V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method cancelRemovePage()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    return-void
.end method

.method public captureMainHomeScreenshot()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeRealPreview;->captureMainHomeScreen()V

    :cond_0
    return-void
.end method

.method public changeZeroPageOnOffSwitchTextColor(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_1

    const v5, 0x7f0c0063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0c0062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0e0001

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mZeropageOnOff:Landroid/widget/Switch;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mZeropageOnOff:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mZeropageOnOff:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1, v4}, Landroid/widget/Switch;->setShadowLayer(FFFI)V

    :cond_0
    return-void

    :cond_1
    const v5, 0x7f0c0061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0c0060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0e002e

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public checkIconAutoAlign()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mIconAutoAlgn:Lcom/android/launcher2/IconAutoAlign;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mIconAutoAlgn:Lcom/android/launcher2/IconAutoAlign;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconAutoAlign;->checkIconAutoAlign(Z)V

    :cond_0
    return-void
.end method

.method public checkItemValidation(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v7

    if-eq v7, v11, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    iget-object v0, v7, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    move-object v3, v4

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    const-string v8, "Launcher.HomeView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkItemValidation, remove item is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v3, v11}, Lcom/android/launcher2/Workspace;->removeCurrentItem(Lcom/android/launcher2/HomeItem;Z)V

    goto :goto_2
.end method

.method public checkSingleInstanceAppWidget(Lcom/android/launcher2/HomePendingWidget;)Z
    .locals 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v8, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    iget-object v11, p1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v9, :cond_7

    move v2, v9

    :cond_0
    :goto_0
    sget-object v8, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    iget-object v11, p1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v9, :cond_8

    move v0, v9

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d001b

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x1030132

    invoke-virtual {v8, v11}, Landroid/content/Context;->setTheme(I)V

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/launcher2/LauncherModel;->checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher2/HomePendingWidget;)Ljava/lang/String;

    move-result-object v7

    :cond_4
    if-eqz v7, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f090045

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v7, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher2/LauncherModel;->checkSingleInstance(Ljava/lang/String;)V

    :cond_5
    move v10, v9

    :cond_6
    return v10

    :cond_7
    move v2, v10

    goto/16 :goto_0

    :cond_8
    move v0, v10

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f090092

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getTitle()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public checkSingleInstanceAppWidgetWithoutPopup(Lcom/android/launcher2/HomePendingWidget;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    iget-object v7, p1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v5, :cond_4

    move v1, v5

    :cond_0
    :goto_0
    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/launcher2/HomePendingWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    iget-object v7, p1, Lcom/android/launcher2/HomePendingWidget;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v4, v7}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v5, :cond_5

    move v0, v5

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6

    :cond_4
    move v1, v6

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method public closeQuickViewWorkspace(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V

    return-void
.end method

.method public closeQuickViewWorkspace(ZZ)V
    .locals 10

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/android/launcher2/HomeView;->mHomePageReorder:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HPRO"

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    sput-boolean v6, Lcom/android/launcher2/HomeView;->mHomePageReorder:Z

    :cond_2
    sget-boolean v1, Lcom/android/launcher2/HomeView;->mHomeDefaultIconClick:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HDIC"

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    sput-boolean v6, Lcom/android/launcher2/HomeView;->mHomeDefaultIconClick:Z

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ar/ARHelper;->visibilityChanged(I)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    sget v2, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget v2, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->close(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v2, Lcom/android/launcher2/HomeView$14;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$14;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/android/launcher2/Workspace;->setPageVisibility(II)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_8

    sget v1, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->updateVisiblePages()I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    const/4 v8, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v8, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    if-ne v8, v1, :cond_9

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_6

    invoke-virtual {v7, v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Workspace;->updateWorkspaceMargin(Z)V

    goto/16 :goto_0
.end method

.method closeSystemDialogs(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const v4, 0x3f547ae1    # 0.83f

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060007

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSineInOut60:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060008

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    invoke-static {v2, v3, v4, v4}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    return-void
.end method

.method public collectExitAllAppsWithDragAnimators(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->setScaleY(F)V

    return-void
.end method

.method public collectExitWidgetListAnimators(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060009

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060014

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher2/utils/interpolator/SineInOut80;

    invoke-direct {v2}, Lcom/android/launcher2/utils/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060013

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    const-string v2, "Launcher.HomeView"

    const-string v3, "HomeView collectShowAllAppsAnimators"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectShowWidgetListAnimators(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060015

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060016

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v2}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    return-void
.end method

.method public completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)Lcom/android/launcher2/HomeFolderItem;
    .locals 29

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz p1, :cond_0

    if-nez p6, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    :cond_0
    new-instance v5, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v5}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_1
    const-wide/16 p3, -0x64

    iget v10, v5, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    iget v11, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    iget v12, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    :goto_1
    const-wide/16 v2, -0x65

    cmp-long v2, p3, v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v23

    :goto_2
    const/16 v25, 0x0

    if-eqz v23, :cond_b

    new-instance v7, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/launcher2/HomeFolderItem;->viewForThisHasSeenLightOfDayBefore:Z

    const/4 v13, 0x0

    move-object v6, v4

    move-wide/from16 v8, p3

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v4, v0}, Lcom/android/launcher2/HomeFolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    invoke-virtual {v7, v2}, Lcom/android/launcher2/HomeFolderItem;->setFolderColor(I)V

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v2, v8

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    :cond_2
    :goto_3
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_3
    iget-wide v2, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    iget-wide v0, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v22, v0

    move-object v14, v4

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v22}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    :cond_4
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v10, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    const/16 v25, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 p3, v0

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v2, v2, v8

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_3

    :cond_9
    const/16 v27, 0x0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v26

    if-eqz v26, :cond_a

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    :cond_a
    sget-boolean v2, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeAddFolderWithShortcutItem. removeItem is true but container "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is unknown"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    if-nez v25, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    :cond_c
    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/HomeView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$3;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x12c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V
    .locals 38

    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-gez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v0, v4, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    move-object/from16 v36, v0

    move/from16 v8, p4

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    const/16 v29, 0x0

    if-eqz v5, :cond_4

    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    const/4 v4, 0x0

    aput p5, v14, v4

    const/4 v4, 0x1

    aput p6, v14, v4

    const/16 v29, 0x1

    :cond_0
    :goto_0
    if-nez v29, :cond_7

    const-wide/16 v6, -0x64

    cmp-long v4, p2, v6

    if-eqz v4, :cond_5

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz v36, :cond_0

    const/4 v4, 0x0

    aget v10, v36, v4

    const/4 v4, 0x1

    aget v11, v36, v4

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v33

    if-eqz v33, :cond_3

    const/16 v29, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/16 v29, 0x0

    goto :goto_2

    :cond_4
    const/16 p4, -0x1

    goto :goto_0

    :cond_5
    new-instance v17, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v15, p4

    invoke-static/range {v14 .. v20}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v29

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    move/from16 p4, v0

    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v6, v14, v4

    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v6, v14, v4

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    :cond_6
    if-eqz v29, :cond_1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/4 v4, 0x0

    aget v23, v14, v4

    const/4 v4, 0x1

    aget v24, v14, v4

    const/16 v25, 0x0

    move-object/from16 v19, p1

    move-wide/from16 v20, p2

    move/from16 v22, p4

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v4, :cond_1

    const-wide/16 v6, -0x65

    cmp-long v4, p2, v6

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v4, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    aget v21, v14, v4

    const/4 v4, 0x1

    aget v22, v14, v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v24, v0

    move-object/from16 v20, p1

    move/from16 v25, p4

    move-wide/from16 v26, p2

    invoke-virtual/range {v19 .. v27}, Lcom/android/launcher2/CellLayoutHotseat;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    move/from16 v0, p4

    if-eq v0, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, v4, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v6, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    if-ne v4, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->setContentIsRefreshable(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/Workspace;->invalidatePageData(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v35

    const/4 v4, 0x3

    move/from16 v0, v35

    if-le v0, v4, :cond_c

    const/16 v34, 0x0

    move/from16 v28, v35

    add-int/lit8 v4, v35, -0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_9

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v34, 0x1

    :cond_9
    move/from16 v30, v34

    :goto_3
    add-int/lit8 v4, p4, -0x1

    move/from16 v0, v30

    if-ge v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/Workspace;->syncPageItems(IZ)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    :cond_a
    if-nez p4, :cond_b

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-nez v4, :cond_b

    add-int/lit8 v28, v35, -0x1

    :cond_b
    add-int/lit8 v30, p4, 0x2

    :goto_4
    move/from16 v0, v30

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/Workspace;->syncPageItems(IZ)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->setContentIsRefreshable(Z)V

    :goto_5
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_f

    const/16 v37, 0x1

    :goto_6
    if-eqz v37, :cond_1

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_5

    :cond_f
    const/16 v37, 0x0

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v4, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_1

    check-cast v31, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v25, 0x0

    move-object/from16 v19, p1

    move-wide/from16 v20, p2

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p5

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_1
.end method

.method createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    return-object v0
.end method

.method public createFolder_rot(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p1, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :cond_0
    return-object v0
.end method

.method public deleteBriefingPage()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->removePage(Z)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_0
    return-void
.end method

.method public deletePage(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    :goto_2
    if-ltz v4, :cond_5

    invoke-virtual {v8, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v14, v11, Lcom/android/launcher2/Folder;

    if-eqz v14, :cond_3

    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    instance-of v14, v6, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v14, :cond_4

    move-object v12, v6

    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v1, :cond_4

    iget v14, v12, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v14}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v6}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_7

    move/from16 v0, p1

    if-gt v4, v0, :cond_6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    add-int/lit8 v14, v4, -0x1

    invoke-virtual {v7, v14, v9}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14, v9}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14, v10}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    if-gt v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v15, v13, -0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    goto/16 :goto_0
.end method

.method public deleteWidgetFestivalPage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v0, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v2, :cond_0

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteWidgetIFestivalPage appWidgetId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget v3, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    return-void
.end method

.method public determineEmptyPageMsgVisibility(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x1

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v7, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v11, :cond_5

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    sput-boolean v11, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9, v11}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_6

    instance-of v1, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v1, :cond_6

    :cond_2
    move v8, v11

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    if-eqz v8, :cond_3

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HCMS"

    const-string v3, "Invalid"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_3
    move v6, v11

    goto :goto_0

    :cond_4
    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    sput-boolean v6, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    goto :goto_2

    :cond_6
    move v8, v6

    goto :goto_3

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->getHelpView()Lcom/android/launcher2/IconMoveContainerHelpView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->getHelpView()Lcom/android/launcher2/IconMoveContainerHelpView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainerHelpView;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    const-string v0, "Launcher.HomeView"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public findItemById(J)Lcom/android/launcher2/HomeItem;
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget-object v3, v1, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    check-cast v2, Lcom/android/launcher2/HomeItem;

    :goto_1
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    check-cast v2, Lcom/android/launcher2/HomeItem;

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    :cond_2
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeView$PendingAddArguments;

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2, v5, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setVisibilityZeroPageOption(ZZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeRealPreview;->getMainHomeScreenshot()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    :cond_5
    const-string v2, "capture"

    const-string v3, "-----finishBindingItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    goto/16 :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method getAllAppsIcon()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppWidgetBinder()Lcom/android/launcher2/AppWidgetBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method public getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v2, -0x65

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCheckWidgetPermission()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetBinder;->getNeedToPermission()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreateFolderColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    return-void
.end method

.method public getCurrentDragItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentPageIndex()I
    .locals 2

    const/4 v0, -0x1

    sget v1, Lcom/android/launcher2/HomeView;->sRestoreCurrentPage:I

    if-eq v1, v0, :cond_1

    sget v0, Lcom/android/launcher2/HomeView;->sRestoreCurrentPage:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentQuickoptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    return-object v0
.end method

.method public getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getDarkenView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f110087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    return-object v0
.end method

.method public getEditBar()Lcom/android/launcher2/HomeEditBar;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-object v0
.end method

.method getHomeContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    return-object v0
.end method

.method getHomeDarkenLayer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    return-object v0
.end method

.method public getHomeRealPreview()Lcom/android/launcher2/HomeRealPreview;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    return-object v0
.end method

.method public getHomeScreenGridChangeHelper()Lcom/android/launcher2/HomeScreenGridChangeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenGridChangeHelper:Lcom/android/launcher2/HomeScreenGridChangeHelper;

    return-object v0
.end method

.method public getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    if-nez v0, :cond_0

    const v0, 0x7f11007a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getHotseatItemcount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHotseatTextSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView;->mHotseatTextSize:I

    return v0
.end method

.method public getIconAutoAlignLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mIconAutoAlgn:Lcom/android/launcher2/IconAutoAlign;

    return-object v0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getMainHomeScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeRealPreview;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    return-object v0
.end method

.method public getNumFestivalPages()I
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPage(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPendingAddInfo()Lcom/android/launcher2/HomeItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    return-object v0
.end method

.method public getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public getQuickOptionsHelpView()Lcom/android/launcher2/QuickOptionsHelpView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method public getReduceHotseatTextSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeView;->mReduceHotseatTextSize:I

    return v0
.end method

.method public getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public getWorkspaceLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    return v0
.end method

.method public getZeroPageOnOffSwitch()Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mZeropageOnOff:Landroid/widget/Switch;

    return-object v0
.end method

.method public handleResizeWidget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public helpHubSnapToLastPage()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    return-void
.end method

.method public isActivityResultResume()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mActivityResultResume:Z

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeItem(I)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isQuickViewWorkspaceOpened()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleHomeOptionMenu()Z
    .locals 2

    const v1, 0x7f11007a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWaitingForResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 8

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/launcher2/HomeView;->mHomePageReorder:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/launcher2/WorkspacePages;->movePage(IILandroid/content/Context;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    if-ne v2, p1, :cond_2

    move v5, p2

    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    if-ltz v1, :cond_1

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    const/4 v1, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-le v2, p1, :cond_3

    if-gt v2, p2, :cond_3

    add-int/lit8 v5, v2, -0x1

    goto :goto_2

    :cond_3
    if-ge v2, p1, :cond_1

    if-lt v2, p2, :cond_1

    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    const/4 v8, 0x5

    if-ne p1, v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mActivityResultResume:Z

    :cond_0
    const/16 v8, 0xc

    if-ne p1, v8, :cond_3

    const/4 v8, -0x1

    if-ne p2, v8, :cond_1

    new-instance v3, Lcom/android/launcher2/HomeView$PendingAddArguments;

    invoke-direct {v3}, Lcom/android/launcher2/HomeView$PendingAddArguments;-><init>()V

    iput p1, v3, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    iput-object p3, v3, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-static {v3, v8}, Lcom/android/launcher2/HomeView;->copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/PendingAddInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    goto :goto_0

    :cond_3
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-wide v8, v8, Lcom/android/launcher2/PendingAddInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    new-instance v3, Lcom/android/launcher2/HomeView$PendingAddArguments;

    invoke-direct {v3}, Lcom/android/launcher2/HomeView$PendingAddArguments;-><init>()V

    iput p1, v3, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    const/4 v6, 0x0

    if-eqz p3, :cond_4

    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    :cond_4
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v8

    if-nez v8, :cond_6

    const/high16 v8, 0x10200000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v8, "Launcher.HomeView"

    const-string v9, "onActivityResult add intent flag."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-object p3, v3, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-static {v3, v8}, Lcom/android/launcher2/HomeView;->copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/PendingAddInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    if-nez p2, :cond_9

    const/16 v8, 0x9

    if-eq p1, v8, :cond_8

    const/4 v8, 0x5

    if-eq p1, v8, :cond_8

    const/4 v8, 0x1

    if-ne p1, v8, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "tempScreen"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "tempCellX"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "tempCellY"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "tempSpanX"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v8, "tempSpanY"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v3}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    goto :goto_1

    :cond_b
    const/16 v8, 0x9

    if-eq p1, v8, :cond_c

    const/4 v8, 0x5

    if-ne p1, v8, :cond_e

    :cond_c
    if-nez p2, :cond_e

    invoke-direct {p0, p3}, Lcom/android/launcher2/HomeView;->getWidgetIdFromIntent(Landroid/content/Intent;)I

    move-result v2

    if-lez v2, :cond_d

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v8, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    goto :goto_1

    :cond_e
    const/16 v8, 0xa

    if-ne p1, v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, -0x1

    if-ne p2, v8, :cond_7

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAppWidgetReset()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    sget-boolean v6, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-nez v6, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/android/launcher2/Launcher;->mSettingPackageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/launcher2/Launcher;->mSettingActivityName:Ljava/lang/String;

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "com.android.settings"

    sput-object v6, Lcom/android/launcher2/Launcher;->mSettingPackageName:Ljava/lang/String;

    const-string v6, "com.android.settings.Settings"

    sput-object v6, Lcom/android/launcher2/Launcher;->mSettingActivityName:Ljava/lang/String;

    :cond_1
    new-instance v6, Landroid/content/ComponentName;

    sget-object v7, Lcom/android/launcher2/Launcher;->mSettingPackageName:Ljava/lang/String;

    sget-object v8, Lcom/android/launcher2/Launcher;->mSettingActivityName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v6, 0x10020000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->setExtraClear()V

    sput-boolean v9, Lcom/android/launcher2/Launcher;->mBackToSetting:Z

    :cond_2
    :goto_1
    return v9

    :catch_0
    move-exception v1

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to launch. intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeScreenOptionMenu;->onBackPressed()Z

    move-result v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v6}, Lcom/android/launcher2/IconMoveContainer;->onBackPressed()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_6
    :goto_2
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    :cond_7
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v9}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickOptionsHelpView;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickOptionsHelpView;->onBackPressed()Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4, v9}, Lcom/android/launcher2/Folder;->hideSearchAppList(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_d
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->onBackPressed()V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isMoving()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Launcher.HomeView"

    const-string v2, "onClick - return by virtual screen isMoving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_4

    instance-of v1, v9, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    move-object v7, v9

    check-cast v7, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1, p1, v7}, Lcom/android/launcher2/IconMoveContainer;->unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1, p1, v7}, Lcom/android/launcher2/IconMoveContainer;->loadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_4
    instance-of v1, v9, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v1, :cond_5

    move-object v1, v9

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

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

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/Logging;->setWeekLogging(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_5
    instance-of v1, v9, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/android/launcher2/PendingAppWidgetHostView;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/launcher2/PendingAppWidgetHostView;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->onClickPendingWidget(Lcom/android/launcher2/PendingAppWidgetHostView;)V

    goto/16 :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->stopCapture()V

    if-eqz p1, :cond_0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.USE_EXPAND_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    return-void
.end method

.method public onClickPendingWidget(Lcom/android/launcher2/PendingAppWidgetHostView;)V
    .locals 10

    const/16 v5, 0xc

    invoke-virtual {p1}, Lcom/android/launcher2/PendingAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {p1}, Lcom/android/launcher2/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v9, v7, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6, v5, p0}, Lcom/android/launcher2/LauncherApplication;->putActivityCallbacks(ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v2, v7, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-static {v8}, Lcom/android/launcher2/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v7}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "Launcher.HomeView"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    sput-boolean v3, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    :cond_0
    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItems()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->removeAllViews()V

    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->shutdown()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->stopCapture()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    new-instance v1, Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;-><init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->setupViews()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    const-string v0, "Launcher.HomeView"

    const-string v1, "OnFinishInflate() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 9

    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/HomeView;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)Lcom/android/launcher2/HomeFolderItem;

    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/HomeView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/HomeView$1;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->onHomePressed(Z)Z

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsHelpView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsHelpView;->onBackPressed()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onInterceptTouchEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_3

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    const/4 v6, -0x1

    if-le v2, v6, :cond_2

    if-ge v2, v1, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v6, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    sget-object v6, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sget-object v7, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->isPointInFrame(FF)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x0

    :cond_2
    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    const/4 v5, 0x1

    :cond_3
    move v6, v5

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v5, v2, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/android/launcher2/HomeView$LayoutParams;

    iget-boolean v5, v4, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-boolean v8, v5, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher2/FolderItem;

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/FolderItem;

    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v10, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v8, v10, :cond_3

    instance-of v8, p1, Lcom/android/launcher2/CellLayout;

    if-nez v8, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->stopCapture()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_0

    instance-of v8, p1, Lcom/android/launcher2/CellLayout;

    if-nez v8, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    const/4 v6, 0x0

    const/4 v3, 0x0

    instance-of v8, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_6

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v6, :cond_5

    move v0, v9

    goto :goto_0

    :cond_5
    iget-object v3, v6, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    move v0, v9

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v8

    if-eqz v8, :cond_9

    instance-of v8, p1, Lcom/android/launcher2/CellLayoutMoveApps;

    if-eqz v8, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez v3, :cond_b

    move v0, v9

    goto/16 :goto_0

    :cond_b
    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_d

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v8, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-ne v8, v9, :cond_d

    sget-boolean v8, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v8, :cond_c

    const-string v8, "Launcher.HomeView"

    const-string v10, "-----Skip long click on festival page "

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v0, v9

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBoosterWihtoutTimer()V

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v10, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v8, v10, :cond_f

    if-nez v3, :cond_f

    iget-boolean v8, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v10, 0xc369

    invoke-virtual {v8, v10, v9}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    :cond_e
    move v0, v9

    goto/16 :goto_0

    :cond_f
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v3}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    goto :goto_1
.end method

.method public onPageSwitch(Landroid/view/View;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_2

    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSwitch - newPageIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getHomeScreenIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", moveToZeroPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/HomeView$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$15;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/HomeView$16;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$16;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Launcher.HomeView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeHoverScrollHandler()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->cancelScroll()V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->onPause()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->closeZeroPageDownloadDialog()V

    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspaceStartAnimation()V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onRestart()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->updateLiveIcon(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->updateLiveIcon(Lcom/android/launcher2/CellLayout;)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher2/HomeView$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeView$SavedState;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeView;->restoreState(Lcom/android/launcher2/HomeView$SavedState;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v3, "Launcher.HomeView"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->updateWidgetsIfNecessary()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    sget v4, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getZeropageStarting()Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/launcher2/Launcher;->mRequestDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->setAnimationPrevented(Z)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget v4, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    :cond_1
    :goto_0
    sput-boolean v6, Lcom/android/launcher2/HomeView;->mZeroActivityLaunched:Z

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewDragBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher2/QuickViewDragBar;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageIndicatorTop()I

    move-result v4

    const v5, 0x7f0a0114

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateWallpaperOffsets()V

    :cond_5
    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    const/4 v3, -0x1

    sput v3, Lcom/android/launcher2/HomeView;->sRestoreCurrentPage:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeRealPreview;->checkFileExist()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeRealPreview;->getMainHomeScreenshot()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeRealPreview;->captureMainHomeScreen()V

    :cond_7
    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mFolderClosedWithHomeKey:Z

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getZeropageStarting()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Workspace;->updateWorkspaceMargin(Z)V

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkGalaxyViewDevice()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.action.NAVIBAR_SETTING_VISIBILITY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.extra.NAVIBAR_SETTING_VISIBLE"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "GATE"

    const-string v4, "<GATE-M>SCREEN_LOADED_HOME</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->onResume()V

    :cond_b
    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mActivityResultResume:Z

    return-void

    :cond_c
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFlick()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v6}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    sget v4, Lcom/android/launcher2/Launcher;->INDEX_OF_ZEROPAGE:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget v4, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    const-string v3, "Launcher.HomeView"

    const-string v4, "Resume at INDEX_OF_ZEROPAGE. so move to NEXT_INDEX_OF_ZEROPAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Launcher.HomeView"

    const-string v4, "onResume() - Quickview is opened."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    new-instance v1, Lcom/android/launcher2/HomeView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomeView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    sput v3, Lcom/android/launcher2/HomeView;->sRestoreCurrentPage:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-wide v4, v3, Lcom/android/launcher2/PendingAddInfo;->container:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-wide v4, v3, Lcom/android/launcher2/PendingAddInfo;->container:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v3, v3, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    iput-object v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v3, v3, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v3, v3, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v3, v3, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    aget v3, v3, v8

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v8, v1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getDeletePageIndex()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    :cond_2
    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    return-object v1
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Launcher.HomeView"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Launcher.HomeView"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    sget-boolean v0, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->stopCapture()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->clear()V

    goto :goto_0
.end method

.method openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
    .locals 11

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_4

    :cond_3
    sget-boolean v1, Lcom/android/launcher2/Launcher;->mIsStartSetting:Z

    if-eqz v1, :cond_1

    :cond_4
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isMovingToZeroPage()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Launcher.HomeView"

    const-string v2, "openQuickViewWorkspace - return by virtual screen isMoving"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeView;->mHomePageReorder:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeView;->mHomeDefaultIconClick:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOEE"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTransitedRotation()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/launcher2/ar/ARHelper;->getInstance()Lcom/android/launcher2/ar/ARHelper;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ar/ARHelper;->visibilityChanged(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_8
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :cond_9
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz p2, :cond_d

    const/16 v1, 0x14d

    :goto_1
    invoke-virtual {v2, p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenAnimation(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;I)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v8

    new-instance v10, Lcom/android/launcher2/HomeView$13;

    invoke-direct {v10, p0, v8}, Lcom/android/launcher2/HomeView$13;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v2, 0x2

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_e

    const-wide/16 v2, 0x14d

    :goto_2
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_b
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->pauseScreen(IZ)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->bringToFront()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewDragBar;->bringToFront()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    iget v2, p1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->closeOptionsMenu()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setAllPagesVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->open()V

    invoke-static {}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->getInstance()Lcom/android/launcher2/utils/BackgroundBlurUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/utils/BackgroundBlurUtil;->blurAnimation(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v2, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xa

    goto/16 :goto_1

    :cond_e
    const-wide/16 v2, 0xa

    goto/16 :goto_2
.end method

.method processItemDropToNewFolder(Landroid/content/ComponentName;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/PendingAddInfo;->container:J

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v0, v2, p0}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    return-void
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput-wide p2, v1, Lcom/android/launcher2/PendingAddInfo;->container:J

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput p4, v1, Lcom/android/launcher2/PendingAddInfo;->mScreen:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput-object p6, v1, Lcom/android/launcher2/PendingAddInfo;->dropPos:[I

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/PendingAddInfo;->cellX:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    aget v2, p5, v3

    iput v2, v1, Lcom/android/launcher2/PendingAddInfo;->cellY:I

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput v3, v2, Lcom/android/launcher2/PendingAddInfo;->spanY:I

    iput v3, v1, Lcom/android/launcher2/PendingAddInfo;->spanX:I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    iput-object p1, v1, Lcom/android/launcher2/PendingAddInfo;->componentName:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/PendingAddInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3, p0}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    return-void
.end method

.method public refreshQuickViewWorkspace()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method

.method removeFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 4

    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removePage(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen(ZZ)V

    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    :cond_0
    return-void
.end method

.method public removehelpAppPage()V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    iput v2, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    iput v2, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    goto :goto_1
.end method

.method public requestFocuseHelpViewBtn()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsHelpView;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsHelpView:Lcom/android/launcher2/QuickOptionsHelpView;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsHelpView;->getNextBtn()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->getHelpView()Lcom/android/launcher2/IconMoveContainerHelpView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->getHelpView()Lcom/android/launcher2/IconMoveContainerHelpView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainerHelpView;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMoveAppsContainer:Lcom/android/launcher2/IconMoveContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer;->getHelpView()Lcom/android/launcher2/IconMoveContainerHelpView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainerHelpView;->getNextBtn()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreOpenFolder(Landroid/os/Bundle;)Z
    .locals 12

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v9, "launcher.workspace_open_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v4, v5}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v8, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v6, v3}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    return-void
.end method

.method public saveFestivalScreenInfo()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setFestivalScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v2, "launcher.workspace_open_folder_id"

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveScreenInfo()V
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/launcher2/FestivalPageManager;->printWorkspaceInfo()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v0

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    const-string v4, "Launcher.HomeView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveScreenInfo mWorkspace.getChildCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " festivalChildCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dragPageCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", screenGridCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method public setCurrentQuickViewWorkspace(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->setAnimateOpenNone()V

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    goto :goto_0
.end method

.method public setCurrentQuickoptionsPopup(Lcom/android/launcher2/QuickOptionsPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    return-void
.end method

.method public setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method public setDarkenViewAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f110087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method setDestinationNewFolderId(J)V
    .locals 1

    sput-wide p1, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    return-void
.end method

.method public setHomeScreenAt(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    return-void
.end method

.method public setHotseat(Lcom/android/launcher2/Hotseat;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    return-void
.end method

.method public setMainHomeScreenshot()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeRealPreview;->setMainHomeScreenshot(Z)V

    :cond_0
    return-void
.end method

.method public setMainHomeScreenshot(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeRealPreview;->setMainHomeScreenshot(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->captureMainHomeScreenshot()V

    :cond_0
    return-void
.end method

.method public setPage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 2

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    return-void
.end method

.method public setTakescreenshot(Z)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageFingerTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    sget v1, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mTakeScreenshot:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mTakeScreenshot:Z

    goto :goto_0
.end method

.method public setVisibilityHomeOptionMenu(I)V
    .locals 3

    const v1, 0x7f11007a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_0
.end method

.method public setVisibilityHotseat(I)V
    .locals 2

    const v1, 0x7f110006

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setWidgetAnimState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeView;->mWidgetAnimFinished:Z

    return-void
.end method

.method public setWorkspaceLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    return-void
.end method

.method showAllApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_0
    return-void
.end method

.method showOutOfSpaceMessage()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    return-void
.end method

.method showWorkspace(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    return-void
.end method

.method public startBinding()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->abortConfigChanges()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    goto :goto_0
.end method

.method startWallpaper(I)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.wallpapers.WallpaperPickerActivity"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "mode"

    const-string v3, "null"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v5, p0}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v5, p0}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    goto :goto_0
.end method

.method public stopCapture()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeRealPreview;->destroy()V

    :cond_0
    return-void
.end method

.method public stopCaptureByItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeRealPreview:Lcom/android/launcher2/HomeRealPreview;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeRealPreview;->destroy()V

    const-string v0, "Launcher.HomeView"

    const-string v1, "stopCaptureByItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public takeScreenShot()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.HomeView"

    const-string v6, "takeScreenShot - return by PageMoving!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "Launcher.HomeView"

    const-string v6, "takeScreenShot - return by not normal_mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "Launcher.HomeView"

    const-string v6, "takeScreenShot - return by folder opening"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    :cond_5
    const-string v5, "Launcher.HomeView"

    const-string v6, "takeScreenShot - retun by other !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeScreenShot - isVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isWorkspaceLocked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isTouchActive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getAlpha = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v5, "Launcher.HomeView"

    const-string v6, "takeScreenShot - retun by rootView null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v8, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget v6, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Page;

    invoke-interface {v5}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8, v6}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/launcher2/HomeView;->mTakeScreenshot:Z

    if-nez v5, :cond_8

    const-string v5, "0"

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mCaptureDateTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mCaptureDateTime:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "Launcher.HomeView"

    const-string v6, "Current time is equal to previous time of capture"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v5, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "takeScreenShot mTakeScreenshot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/launcher2/HomeView;->mTakeScreenshot:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCaptureDateTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mCaptureDateTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mCaptureDateTime:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mTakeScreenshot:Z

    sput-boolean v9, Lcom/android/launcher2/Launcher;->mCaptureZeropage:Z

    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v5, "Launcher.HomeView"

    const-string v6, "Capture is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v4, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-lez v5, :cond_a

    const-string v5, "Launcher.HomeView"

    const-string v6, "takeScreenShot - success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreenBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v9}, Lcom/android/launcher2/Launcher;->setCapureFlag(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "Launcher.HomeView"

    const-string v6, "ZeroPage Capture image size error!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateGlobalSearchIcon()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateLiveIcon(Lcom/android/launcher2/CellLayout;)V
    .locals 13

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v12, v10, Lcom/android/launcher2/FolderItem;

    if-eqz v12, :cond_5

    move-object v1, v10

    check-cast v1, Lcom/android/launcher2/FolderItem;

    move-object v12, v1

    check-cast v12, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v12

    if-ge v7, v12, :cond_3

    invoke-interface {v1, v7}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    sget-object v12, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v8, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v3, :cond_4

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    instance-of v12, v10, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v12, :cond_4

    move-object v5, v10

    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    sget-object v12, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2
.end method

.method public updateRestoreItems(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method

.method protected updateRunning()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->updateRunning(Z)V

    return-void
.end method

.method protected updateRunning(Z)V
    .locals 12

    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    if-eqz v0, :cond_3

    iget-wide v4, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    sub-long v8, v2, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateWallpaperOffsets()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4

    const/high16 v2, 0x100000

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wallpaperHack()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    return-void
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
