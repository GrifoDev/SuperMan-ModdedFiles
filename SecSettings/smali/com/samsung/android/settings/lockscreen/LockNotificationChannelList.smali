.class public Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockNotificationChannelList.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$2;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$4;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$5;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;,
        Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static KEY_GENERAL_CATEGORY:Ljava/lang/String;

.field private static mAppArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/support/v14/preference/SwitchPreference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mChannel:Landroid/app/NotificationChannel;

.field private mChannelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field mShowLegacyChannelConfig:Ljava/lang/Boolean;

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemConfigNonBlockablePkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSystemConfigNonBlockablePkgs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAppArray:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mHideApp:Z

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->checkAllAppsState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;ZLandroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->setChannelLockscreenVisibility(ZLandroid/app/NotificationChannel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "LockNotiChannelList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const-string/jumbo v0, "categories"

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAppArray:Ljava/util/Hashtable;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mHideApp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_list:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSystemConfigNonBlockablePkgs:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mRows:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.knox.switchknoxI"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.switchknoxII"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.containeragent2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.switcher"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->excludeKnoxApp:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroups:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$4;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroupComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationBackend$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v5, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v6, "LockNotiChannelList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-nez v4, :cond_2

    const-string/jumbo v5, "LockNotiChannelList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_2
    iget-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "LockNotiChannelList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/NotificationBackend$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private checkAllAppsState()Z
    .locals 9

    const v8, 0x7f0b0378

    const/4 v6, 0x3

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    return v7

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    return v7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    array-length v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v4, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "LockNotiChannelList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v8
.end method

.method private getChannelLockscreenVisibility(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadAppList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend$AppRow;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LockNotiChannelList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0807f1

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setIcon(I)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getChannelLockscreenVisibility(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setChecked(Z)V

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$9;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;Landroid/app/NotificationChannel;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;-><init>()V

    iput-object p3, v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->pkg:Ljava/lang/String;

    iput p4, v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->uid:I

    iput-object p2, v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->channel:Landroid/app/NotificationChannel;

    sget-object v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->getOrder()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-boolean v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LockNotiChannelList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/IconResizer;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0704db

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private refreshDisplayedItems()V
    .locals 29

    sget-boolean v24, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->DEBUG:Z

    if-eqz v24, :cond_0

    const-string/jumbo v24, "LockNotiChannelList"

    const-string/jumbo v25, "Refreshing apps..."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, 0x1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_1

    const-string/jumbo v24, "LockNotiChannelList"

    const-string/jumbo v26, "mSortedRows size is 0"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v25

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/settings/notification/NotificationBackend$AppRow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, v22

    iput-boolean v11, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->first:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroups:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mShowLegacyChannelConfig:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mShowLegacyChannelConfig:Ljava/lang/Boolean;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    move/from16 v27, v0

    const-string/jumbo v28, "miscellaneous"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannel:Landroid/app/NotificationChannel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannel:Landroid/app/NotificationChannel;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v24

    monitor-exit v25

    throw v24

    :cond_2
    :try_start_4
    new-instance v21, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPrefContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v24, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$8;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;Lcom/android/settings/notification/NotificationBackend$AppRow;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannel:Landroid/app/NotificationChannel;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getChannelLockscreenVisibility(I)Z

    move-result v24

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v26, 0x7f12109b

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setEnabled(Z)V

    :cond_3
    new-instance v9, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;

    invoke-direct {v9}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;-><init>()V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v9, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->uid:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannel:Landroid/app/NotificationChannel;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->channel:Landroid/app/NotificationChannel;

    sget-object v24, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->getOrder()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_5
    new-instance v20, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPrefContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    move/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannelGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroupList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroups:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_6

    const-string/jumbo v24, "LockNotiChannelList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Notification channel group posted twice to settings - old size "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroups:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", new size "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroupList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroups:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroupList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_7

    const v24, 0x7f121307

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setSummary(I)V

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v26, 0x7f12109b

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroupList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationChannelGroup;

    new-instance v14, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPrefContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroupList:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    const v24, 0x7f121a49

    :goto_5
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    sget-object v24, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->KEY_GENERAL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    :goto_6
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelGroups:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mChannelComparator:Ljava/util/Comparator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v4, :cond_9

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    const-string/jumbo v24, "miscellaneous"

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    if-nez v8, :cond_c

    monitor-exit v25

    return-void

    :cond_a
    const v24, 0x7f12133f

    goto :goto_5

    :cond_b
    :try_start_5
    invoke-virtual {v12}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v7/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isNotiHideDefaultChannel(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    const-string/jumbo v24, "LockNotiChannelList"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "miscellaneous channel exception : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->label:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v14, v6, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->populateSingleChannelPrefs(Landroid/support/v7/preference/PreferenceCategory;Landroid/app/NotificationChannel;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :cond_e
    monitor-exit v25

    sget-boolean v24, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->DEBUG:Z

    if-eqz v24, :cond_f

    const-string/jumbo v24, "LockNotiChannelList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Refreshed "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSortedRows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " displayed items"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method private setChannelLockscreenVisibility(ZLandroid/app/NotificationChannel;)V
    .locals 2

    const/16 v0, -0x3e8

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public executeBixby()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NotificationsOnFromAllApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationsAllApps"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ShowNotificationsFrom"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationsAllApps"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ShowNotificationsFrom"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "NotificationsOffFromAllApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationsAllApps"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ShowNotificationsFrom"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "NotificationsAllApps"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "ShowNotificationsFrom"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string/jumbo v0, "LockNotiChannelList"

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "LockNotiChannelList"

    const-string/jumbo v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "launcherapps"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_list:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_list:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iput-boolean v8, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mHideApp:Z

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_notification_list:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo v4, "LockNotiChannelList"

    const-string/jumbo v5, "Hide app notification list is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mHideApp:Z

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, v2, v1

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "LockNotiChannelList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "markAppRowWithBlockables - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mSystemConfigNonBlockablePkgs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f1300fe

    invoke-direct {v4, v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ShowNotificationsFrom"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mShowLegacyChannelConfig:Ljava/lang/Boolean;

    :cond_0
    const v0, 0x7f15008e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "notification_all_apps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;-><init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->loadAppList()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->setGoToTopEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ShowNotificationsFrom"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method
