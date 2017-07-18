.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherApplication$HotseatGridSize;,
        Lcom/android/launcher2/LauncherApplication$HomeGridSize;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final GALAXYLABS_AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.galaxylabs"

.field private static final GALAXYLABS_TABLE_NAME:Ljava/lang/String; = "FeatureList"

.field private static final PREFERENCES_BADGE_SETTINGS:Ljava/lang/String; = "badge_settings"

.field public static final PREFERENCES_FIRST_RUN:Ljava/lang/String; = "FirstRunVersion"

.field public static final PREFERENCES_GALAXY_LABS_HOME_ONLY_MODE:Ljava/lang/String; = "galaxylabs_home_only_mode"

.field static final PREFERENCES_HAVE_BEEN_UPDATED_OMC:Ljava/lang/String; = "omcupdate.updated"

.field public static final PREFERENCES_HOME_ONLY_MODE:Ljava/lang/String; = "home_only_mode"

.field public static final PREFERENCES_LOAD_COMPLETE_HOME_ONLY_MODE:Ljava/lang/String; = "load_complete_home_only_mode"

.field public static final PREFERENCES_LOAD_LAYOUT:Ljava/lang/String; = "LoadLayout"

.field static final PREFERENCES_OMC_UPDATE:Ljava/lang/String; = "omcupdate"

.field static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field static final PREFERENCES_SCREENCOUNT_BRIEFING:Ljava/lang/String; = "screencount.briefing"

.field static final PREFERENCES_SCREENCOUNT_FESTIVAL:Ljava/lang/String; = "screencount.festival"

.field static final PREFERENCES_SCREENCOUNT_HOMEONLY:Ljava/lang/String; = "screencount.homeonly"

.field static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field static final PREFERENCES_SCREENINDEX_FESTIVAL:Ljava/lang/String; = "homescreenindex.festival"

.field static final PREFERENCES_SCREENINDEX_HOMEONLY:Ljava/lang/String; = "homescreenindex.homeonly"

.field static final PREFERENCES_SCREENMODE_FOR_FESTIVAL:Ljava/lang/String; = "screenmode.festival"

.field public static final PREFERENCES_UPDATE_FOTA:Ljava/lang/String; = "ExtraUpdateByFotaVersion"

.field public static final SHOW_EMPTY_PAGE_MSG_KEY:Ljava/lang/String; = "SHOW_EMPTY_PAGE_MSG"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static final galaxyLabs_uri:Landroid/net/Uri;

.field private static mEnableFolderLock:Z

.field public static mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

.field private static mHomeModeChanged:Z

.field private static mHomeOnlyModeEnabled:Z

.field private static mIsSafeMode:Z

.field private static sBackupRestoreIntent:Landroid/content/Intent;

.field public static sDNDBinding:Z

.field public static sDensityDpi:I

.field public static sFestivalPageLauncher:Z

.field private static sHasMenuKey:Z

.field private static sHasSoftKey:Z

.field public static sHotseatGrid:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

.field private static sInst:Lcom/android/launcher2/LauncherApplication;

.field private static sIsScreenLarge:Z

.field private static sIsScreenSmall:Z

.field private static sIsTabletLayout:Z

.field public static sIsTheFisrt:Z

.field private static sLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxFestivalScreenCount:I

.field private static sMaxScreenCount:I

.field public static sNeedModeChange:Z

.field private static sScreenCountBriefing:I

.field private static sScreenCountFestival:I

.field private static sScreenCountNormal:I

.field private static sScreenDensity:F

.field private static sScreenIndexNormal:I

.field private static sScreenIndexNormal_homeOnly:I

.field private static sScreenModeForFestival:I


# instance fields
.field private galaxyLabsSettingObserver:Landroid/database/ContentObserver;

.field private mActivityCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher2/Launcher$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mBadgeRefreshRunnable:Ljava/lang/Runnable;

.field private mDvfsUtil:Lcom/android/launcher2/utils/DvfsUtil;

.field private mFactoryModeString:Ljava/lang/String;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mFolderLock:Lcom/android/launcher2/FolderLock;

.field private mHandler:Landroid/os/Handler;

.field private mIsFactoryMode:Z

.field private mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

.field private mMenuWidgetsLoader:Lcom/android/launcher2/MenuWidgetsLoader;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mThemeLoader:Lcom/android/launcher2/ThemeLoader;

.field private mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

.field private touchBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->mHomeOnlyModeEnabled:Z

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->mHomeModeChanged:Z

    const-string v0, "content://com.samsung.android.app.galaxylabs/FeatureList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->galaxyLabs_uri:Landroid/net/Uri;

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->sNeedModeChange:Z

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    sput v1, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    sget-object v0, Lcom/android/launcher2/LauncherApplication$HotseatGridSize;->FULL:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sHotseatGrid:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sBackupRestoreIntent:Landroid/content/Intent;

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->mIsSafeMode:Z

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->mEnableFolderLock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mDvfsUtil:Lcom/android/launcher2/utils/DvfsUtil;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mActivityCallbacks:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherApplication$2;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeRefreshRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$3;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$3;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$4;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->galaxyLabsSettingObserver:Landroid/database/ContentObserver;

    sput-object p0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeRefreshRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherApplication;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->galaxyLabs_uri:Landroid/net/Uri;

    return-object v0
.end method

.method private checkGalaxyLabsSetting()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v2, v12

    const-string v3, "packageName=? AND title=?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.launcher"

    aput-object v1, v4, v12

    const-string v1, "home_screen_mode_only_home"

    aput-object v1, v4, v13

    sget-object v1, Lcom/android/launcher2/LauncherApplication;->galaxyLabs_uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v1, "LauncherApplication"

    const-string v5, "checkGalaxyLabsSetting - galaxy labs cursor is null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LauncherApplication"

    const-string v5, "checkGalaxyLabsSetting - galaxy labs cursor count is 0"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v12}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    if-nez v10, :cond_3

    const-string v1, "LauncherApplication"

    const-string v5, "checkGalaxyLabsSetting - SharedPreferences is null"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const-string v1, "home_only_mode"

    invoke-interface {v10, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "status"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_5

    const/4 v11, 0x1

    const-string v1, "LauncherApplication"

    const-string v5, "checkGalaxyLabsSetting - galaxy labs - home apps feature ON"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    if-eq v9, v11, :cond_0

    const-string v1, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkGalaxyLabsSetting - change home apps mode : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v1, "galaxylabs_home_only_mode"

    invoke-interface {v8, v1, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v11}, Lcom/android/launcher2/LauncherFeature;->setSupportHomeModeChange(Z)V

    sput-boolean v13, Lcom/android/launcher2/LauncherApplication;->sNeedModeChange:Z

    goto :goto_0

    :cond_5
    :try_start_2
    const-string v1, "LauncherApplication"

    const-string v5, "checkGalaxyLabsSetting - galaxy labs - home apps feature OFF"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    :cond_7
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static checkHomeModeScreenCount(Landroid/content/Context;Z)V
    .locals 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v4, "screen=? AND container=? AND secret=?"

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkHomeModeScreenCount cursor count "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " forceMoveDefaultHome "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LauncherApplication"

    const-string v3, "checkHomeModeScreenCount zero page is enabled. move right screen index!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher2/LauncherProvider;->moveRightScreenIndex(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v2}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v8

    :try_start_1
    const-string v2, "LauncherApplication"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static enableFolderLock()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->mEnableFolderLock:Z

    return v0
.end method

.method public static getBackupRestoreIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sBackupRestoreIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getBriefingScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    return v0
.end method

.method public static getExtraWorkspaceVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ExtraUpdateByFotaVersion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFestivalScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    return v0
.end method

.method public static getFirstRunVersion(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FirstRunVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHomeScreenIndex()I
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    goto :goto_0
.end method

.method public static getHotseatGridSize()Lcom/android/launcher2/LauncherApplication$HotseatGridSize;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sHotseatGrid:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    return-object v0
.end method

.method public static getInst()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method public static getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;
    .locals 3

    sget-object v1, Lcom/android/launcher2/LauncherApplication;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(II)V

    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherApplication;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    return-object v1
.end method

.method public static getLoadLayout(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LoadLayout"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getMaxFestivalScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    return v0
.end method

.method public static getMaxScreenCount()I
    .locals 2

    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sget v1, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getMigrate()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "home_zeropage_enable"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "home_zeropage_enable"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "LauncherApplication"

    const-string v3, "getMigrate return value : true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const-string v3, "LauncherApplication"

    const-string v4, "getMigrate return value : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    return v0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static getScreenModeForFestival()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    return v0
.end method

.method public static getSmallestWidth()I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method public static hasMenuKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    return v0
.end method

.method public static hasSoftKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasSoftKey:Z

    return v0
.end method

.method private isFactoryMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherApplication;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v0, "999999999999999"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isHomeOnlyModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->mHomeOnlyModeEnabled:Z

    return v0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "isKioskModeEnabled"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 5

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isPossibleAddToPersonal(name) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/LauncherApplication;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not call android.os.PersonaManager."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not call isPossibleAddToPersonal."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSafeMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->mIsSafeMode:Z

    return v0
.end method

.method public static isScreenLarge()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static isScreenSmall()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    return v0
.end method

.method public static isTabletLayout()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    return v0
.end method

.method private isValidIndex(II)Z
    .locals 1

    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v6, ""

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v6, :cond_7

    const-string v6, ""

    :goto_1
    return-object v6

    :catch_0
    move-exception v2

    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_4
    const-string v7, "LauncherApplication"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_3
    :try_start_6
    const-string v7, "LauncherApplication"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_5
    throw v7

    :catch_5
    move-exception v2

    const-string v8, "LauncherApplication"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_9
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    goto :goto_2
.end method

.method public static setBackupRestoreIntent(Landroid/content/Intent;)V
    .locals 0

    sput-object p0, Lcom/android/launcher2/LauncherApplication;->sBackupRestoreIntent:Landroid/content/Intent;

    return-void
.end method

.method public static setBriefingScreenCount(Landroid/content/Context;I)V
    .locals 5

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "screencount.briefing"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    :cond_0
    return-void
.end method

.method public static setEnableFolderLock(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_lock_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/LauncherApplication;->mEnableFolderLock:Z

    :goto_0
    const-string v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableFolderLock enableFolderLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->mEnableFolderLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-boolean v3, Lcom/android/launcher2/LauncherApplication;->mEnableFolderLock:Z

    goto :goto_0
.end method

.method public static setExtraWorkspaceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExtraUpdateByFotaVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setFestivalScreenCount(Landroid/content/Context;I)V
    .locals 4

    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    if-eq v2, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "screencount.festival"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static setFirstRunVersion(Landroid/content/Context;Z)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FirstRunVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setGridLayout(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p2, "_homeOnly"

    :cond_0
    :goto_0
    const-string v4, "_homeOnly"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Workspace.HomeOnly.CellX"

    aget v5, p1, v6

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Workspace.HomeOnly.CellY"

    aget v5, p1, v7

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p1, v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "launcher_current_screen_grid"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    const-string p2, "_homeApps"

    goto :goto_0

    :cond_3
    const-string v4, "_homeApps"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Workspace.CellX"

    aget v5, p1, v6

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Workspace.CellY"

    aget v5, p1, v7

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setGridLayout Settings.System.putString error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;IZ)V
    .locals 5

    if-ltz p1, :cond_1

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    if-eq v3, p1, :cond_3

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    const-string v3, "homescreenindex.homeonly"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v3, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    const-string v3, "homescreenindex"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;IZZ)V
    .locals 5

    if-ltz p1, :cond_1

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p3, :cond_3

    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    if-eq v3, p1, :cond_3

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    const-string v3, "homescreenindex.homeonly"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    :cond_2
    return-void

    :cond_3
    if-nez p3, :cond_0

    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v3, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    const-string v3, "homescreenindex"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setHotseatGridSize(Z)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherApplication$HotseatGridSize;->FULL:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sHotseatGrid:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherApplication$HotseatGridSize;->ELSE:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sHotseatGrid:Lcom/android/launcher2/LauncherApplication$HotseatGridSize;

    goto :goto_0
.end method

.method public static setLauncherGridSize(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(IIZ)V

    return-void
.end method

.method public static setLauncherGridSize(IIZ)V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    :goto_0
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->notifyGridSizeChange(Landroid/content/Context;)V

    :cond_0
    return-void

    :cond_1
    if-ne p0, v1, :cond_2

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->mGridSize:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    goto :goto_0
.end method

.method public static setLoadLayout(Landroid/content/Context;Z)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LoadLayout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setScreenBriefingCountChangeMode(Landroid/content/Context;Z)I
    .locals 9

    const v6, 0x7f0c0002

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string v5, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v5, "screencount.homeonly"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "screencount.homeonly"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x1

    :cond_1
    const-string v5, "screencount.homeonly"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :goto_0
    const-string v5, "screencount.briefing"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    const-string v5, "screencount.briefing"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LauncherApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setScreenBriefingCountChangeMode(), isHomeOnlyMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", homescreenIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", briefingScreenCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v5}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {p0, v8}, Lcom/android/launcher2/LauncherApplication;->checkHomeModeScreenCount(Landroid/content/Context;Z)V

    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/launcher2/LauncherApplication;->mHomeModeChanged:Z

    sget v5, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    return v5

    :cond_4
    const-string v5, "screencount"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :cond_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "screencount"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x1

    :cond_6
    const-string v5, "screencount"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    goto/16 :goto_0
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static setScreenCount(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "_homeOnly"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "screencount.homeonly"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    :cond_1
    return-void

    :cond_2
    const-string v3, "_homeApps"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "screencount"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    goto :goto_0
.end method

.method public static setScreenCount(Landroid/content/Context;IZ)V
    .locals 5

    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-eq v3, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "screencount.homeonly"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    :cond_1
    return-void

    :cond_2
    const-string v3, "screencount"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setScreenModeForFestival(Landroid/content/Context;I)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "screenmode.festival"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    return-void
.end method


# virtual methods
.method public acquireTouchBooster()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "LAUNCHER_TOUCH"

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherApplication"

    const-string v2, "touch booster acquiring is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public acquireTouchBooster(I)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LAUNCHER_TOUCH"

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherApplication;->mDvfsUtil:Lcom/android/launcher2/utils/DvfsUtil;

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    sget v1, Lcom/android/launcher2/utils/DvfsUtil;->GPU_DEFAULT_TIME_OUT:I

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherApplication;->mDvfsUtil:Lcom/android/launcher2/utils/DvfsUtil;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/utils/DvfsUtil;->acquireTimeout(I)V

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_2
    move v1, p1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LauncherApplication"

    const-string v3, "touch booster acquiring is failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public acquireTouchBoosterWihtoutTimer()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBooster(I)V

    return-void
.end method

.method public checkBriefingScreenCount(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBriefingScreenCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherProvider;->moveRightScreenIndex(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "favorites_homeApps"

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/LauncherProvider;->moveRightScreenIndex(ILjava/lang/String;)Z

    const-string v1, "favorites_homeOnly"

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/LauncherProvider;->moveRightScreenIndex(ILjava/lang/String;)Z

    invoke-static {p1, v3}, Lcom/android/launcher2/LauncherApplication;->setBriefingScreenCount(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->getMigrate()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v3, v2}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZZ)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1, v3, v3}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZZ)V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    :cond_1
    const-string v1, "LauncherApplication"

    const-string v2, "add briefing screen"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public checkFactoryMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActivityCallbacks(I)Lcom/android/launcher2/Launcher$ActivityResultCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher$ActivityResultCallback;

    return-object v0
.end method

.method public getBadgeSetings()I
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "badge_settings"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLauncher()Lcom/android/launcher2/Launcher;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method getThemeLoader()Lcom/android/launcher2/ThemeLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    return-object v0
.end method

.method public declared-synchronized getThreadPool()Lcom/android/launcher2/utils/common/ThreadPool;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/utils/common/ThreadPool;

    invoke-direct {v0}, Lcom/android/launcher2/utils/common/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThreadPool:Lcom/android/launcher2/utils/common/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidgetLoader()Lcom/android/launcher2/MenuWidgetsLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mMenuWidgetsLoader:Lcom/android/launcher2/MenuWidgetsLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/MenuWidgetsLoader;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuWidgetsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mMenuWidgetsLoader:Lcom/android/launcher2/MenuWidgetsLoader;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mMenuWidgetsLoader:Lcom/android/launcher2/MenuWidgetsLoader;

    return-object v0
.end method

.method public isAppVersionChanged(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v0, "checkChangedComponentVersion"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_HomeOnly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAppVersionChanged PREF_KEY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prevVersionName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isKnoxMode()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 22

    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherFeature;->init(Landroid/content/Context;)V

    new-instance v19, Lcom/android/launcher2/utils/DvfsUtil;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/utils/DvfsUtil;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mDvfsUtil:Lcom/android/launcher2/utils/DvfsUtil;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/ZeroPageUtils;->initZeroPageFeature(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v19

    if-nez v19, :cond_0

    const v19, 0x7f0d0019

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_13

    :cond_0
    const/16 v19, 0x1

    :goto_0
    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v19

    if-nez v19, :cond_14

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v19

    if-nez v19, :cond_14

    const/16 v19, 0x1

    :goto_1
    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sHasSoftKey:Z

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v19, v0

    and-int/lit8 v17, v19, 0xf

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    const/16 v19, 0x1

    :goto_2
    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    :cond_1
    const/16 v19, 0x1

    :goto_3
    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    const v19, 0x7f0d0003

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v3, v20

    const/16 v21, 0x1

    aget v21, v3, v21

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;II)V

    new-instance v19, Lcom/android/launcher2/ThemeLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/launcher2/ThemeLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/theme/OpenThemeManager;->createThemeManager(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mFolderLock:Lcom/android/launcher2/FolderLock;

    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->mEnableFolderLock:Z

    if-nez v19, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->setEnableFolderLock(Landroid/content/Context;)V

    :cond_2
    sget-object v19, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    new-instance v19, Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFestivalPage()Z

    move-result v19

    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    new-instance v19, Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    sget-object v19, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->addOnAppsChangedCallback(Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v19, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSSecureSupported()Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_4

    const-string v19, "com.sec.android.widget.myeventwidget.FESTIVAL_CANCEL_ACTION"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v19, "android.intent.action.STK_TITLE_IS_LOADED"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v19, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v19, "com.sec.android.app.launcher.prefs"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v19, "screencount.briefing"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountBriefing:I

    const v19, 0x7f0c004a

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_17

    const-string v19, "screencount.homeonly"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :goto_4
    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-gtz v19, :cond_7

    const-string v19, "CscFeature_Launcher_TotalPageCount"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-gtz v19, :cond_6

    const v19, 0x7f0c0002

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :cond_6
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v19

    if-eqz v19, :cond_18

    const-string v19, "screencount.homeonly"

    sget v20, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_5
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    const-string v19, "screencount"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v19, "screencount.homeonly"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    const-string v19, "homescreenindex"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    const-string v19, "homescreenindex.homeonly"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherApplication;->isValidIndex(II)Z

    move-result v19

    if-eqz v19, :cond_8

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->isValidIndex(II)Z

    move-result v19

    if-nez v19, :cond_d

    :cond_8
    const-string v19, "CscFeature_Launcher_DefaultPageNumber"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v18

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->isValidIndex(II)Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_9
    const v19, 0x7f0c0046

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherApplication;->isValidIndex(II)Z

    move-result v19

    if-nez v19, :cond_a

    const/16 v18, 0x0

    :cond_a
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v20, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->isValidIndex(II)Z

    move-result v19

    if-nez v19, :cond_b

    sput v18, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    const-string v19, "homescreenindex"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_b
    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->isValidIndex(II)Z

    move-result v19

    if-nez v19, :cond_c

    sput v18, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal_homeOnly:I

    const-string v19, "homescreenindex.homeonly"

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_c
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_f

    const v19, 0x7f0c0049

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    const-string v19, "screencount.festival"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    const-string v19, "screenmode.festival"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    if-ltz v19, :cond_e

    sget v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    sget v20, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    :cond_e
    const/16 v19, 0x0

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v19, "screencount.festival"

    sget v20, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_f
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v19

    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->mIsSafeMode:Z

    :cond_11
    sget-object v19, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherApplication;->checkGalaxyLabsSetting()V

    sget-object v19, Lcom/android/launcher2/LauncherApplication;->galaxyLabs_uri:Landroid/net/Uri;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherApplication;->galaxyLabsSettingObserver:Landroid/database/ContentObserver;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_12
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherApplication;->checkBriefingScreenCount(Landroid/content/Context;)V

    new-instance v8, Landroid/content/Intent;

    const-class v19, Lcom/android/launcher2/LauncherService;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v19, "com.sec.android.intent.action.REQUEST_MAKE_DISABLE_APP_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/LauncherApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    return-void

    :cond_13
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_15
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_17
    const-string v19, "screencount"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    sput v19, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    goto/16 :goto_4

    :cond_18
    const-string v19, "screencount"

    sget v20, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_5

    :catch_0
    move-exception v5

    const-string v19, "LauncherApplication"

    const-string v20, "start LauncherService failed!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public onTerminate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mFolderLock:Lcom/android/launcher2/FolderLock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mFolderLock:Lcom/android/launcher2/FolderLock;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderLock;->unregisterListener()V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->removeOnAppsChangedCallback(Lcom/android/launcher2/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;)V

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyLabs()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/LauncherApplication;->galaxyLabsSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGameHome()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->terminateGameHome()V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/android/launcher2/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/PackageInstallerCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/compat/PackageInstallerCompat;->onStop()V

    :cond_4
    return-void
.end method

.method public putActivityCallbacks(ILcom/android/launcher2/Launcher$ActivityResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public releaseTouchBooster()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->touchBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LauncherApplication"

    const-string v2, "touch booster releasing is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeActivityCallbacks(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mActivityCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public setBadgeSetings(I)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "badge_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setChangedAppVersion(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_1

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "checkChangedComponentVersion"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_HomeOnly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setChangedAppVersion PREF_KEY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public setHomeOnlyModeEnabled(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/launcher2/LauncherApplication;->mHomeOnlyModeEnabled:Z

    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updatePageCount()V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v2, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getBriefingScreenCount()I

    move-result v10

    if-ne v10, v8, :cond_2

    move v0, v8

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v5

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider;->getScreenCount()I

    move-result v7

    invoke-static {p0, v7, v9}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    sub-int v1, v7, v5

    if-lez v1, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addPage()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v9

    goto :goto_0

    :cond_3
    if-gez v1, :cond_0

    const/4 v3, 0x0

    :goto_2
    mul-int/lit8 v10, v1, -0x1

    if-ge v3, v10, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v8}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v9}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    goto :goto_3
.end method

.method public writeHomeOnlyModeEnabled(Z)V
    .locals 3

    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "home_only_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean p1, Lcom/android/launcher2/LauncherApplication;->mHomeOnlyModeEnabled:Z

    return-void
.end method
