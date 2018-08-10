.class public Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;,
        Lcom/samsung/android/settings/display/FullScreenAppsSettings$Row;
    }
.end annotation


# static fields
.field private static mFragmentVisible:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoFit:Landroid/support/v14/preference/SwitchPreference;

.field private mBixbyListLoadingFinished:Z

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mFullScreenAppsSettingsHandler:Landroid/os/Handler;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mHandler:Landroid/os/Handler;

.field private mIsPartialLoading:Z

.field private mIsShowAppsTypeAll:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

.field private mSortByAppType:Z

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyListLoadingFinished:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get10()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->IsFragmentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/lang/String;IZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setMaxAspectPackage(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRows:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$2;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$3;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$5;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyListLoadingFinished:Z

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method private declared-synchronized IsFragmentVisible()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getConfigMaxAspectPackage(Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/view/SemWindowManager;->isMaxAspectPackageEx(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "FullScreenAppsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConfigMaxAspectPackage() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPackageType(Ljava/lang/String;ILandroid/app/Activity;)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isDefaultMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageType() #0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isGameApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageType() #3 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    return v3

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, p1, v5, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_6

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_2

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    if-gt v3, v4, :cond_5

    if-eqz v2, :cond_4

    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageType() #4 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isResizeableActivity() RemoteException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageType() #5 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    return v3

    :cond_5
    if-eqz v2, :cond_6

    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageType() #1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_6
    const-string/jumbo v3, "FullScreenAppsSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageType() #2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private initSorting()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private isDefaultMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isGameApp(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v2, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    :cond_1
    return v3
.end method

.method private isMaxAspectPackage(Ljava/lang/String;I)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getConfigMaxAspectPackage(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704db

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 7

    const-string/jumbo v4, "FullScreenAppsSettings"

    const-string/jumbo v5, "Refreshing apps..."

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v4}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    iget-object v5, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "FullScreenAppsSettings"

    const-string/jumbo v6, "mSortedRows size is 0"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    new-instance v2, Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    if-nez v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    const v4, 0x7f120c53

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_2
    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    :cond_3
    :goto_3
    const v4, 0x7f120c52

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_4
    new-instance v4, Lcom/samsung/android/settings/display/FullScreenAppsSettings$7;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$7;-><init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v6, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->isMaxAspectPackage(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    iget v4, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_4

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyListLoadingFinished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    const-string/jumbo v4, "FullScreenAppsSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Refreshed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " displayed items"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setMaxAspectPackage(Ljava/lang/String;IZ)Z
    .locals 5

    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMaxAspectPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->setMaxAspectPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FullScreenAppsSettings"

    const-string/jumbo v3, "setMaxAspectPackage() RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSorting(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsPartialLoading:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/Context;Landroid/app/Activity;)Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;-><init>()V

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2, p1, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-direct {p0, v2, v3, p4}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getPackageType(Ljava/lang/String;ILandroid/app/Activity;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mType:I

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "FullScreenAppsSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mLabel:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setGoToTopEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->initSorting()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const v0, 0x7f150072

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120c59

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1300fe

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const-string/jumbo v0, "full_screen_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenApps:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v0, "auto_fit"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mAutoFit:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v0, "show_apps_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mShowAppsType:Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mFullScreenAppsSettingsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->setHandler(Landroid/os/Handler;)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mIsShowAppsTypeAll:Z

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f120c57

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f120c56

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setSorting(Z)V

    return v1

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setSorting(Z)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setFragmentVisibleState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyListLoadingFinished:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FullScreenApps"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mSortByAppType:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "auto_fit"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->removePreference(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->setFragmentVisibleState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->loadAppsList()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mBixbyListLoadingFinished:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FullScreenApps"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
