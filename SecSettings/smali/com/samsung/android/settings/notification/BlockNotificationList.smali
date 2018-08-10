.class public Lcom/samsung/android/settings/notification/BlockNotificationList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/BlockNotificationList$1;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$2;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$3;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$4;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$5;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$6;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$Row;,
        Lcom/samsung/android/settings/notification/BlockNotificationList$SummaryProvider;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mFragmentVisible:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private static mSupportSimpleStatusBar:Z


# instance fields
.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/support/v14/preference/SwitchPreference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mCollectAppsTask:Ljava/util/concurrent/Future;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mExcutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleStatusBar:Landroid/support/v14/preference/SwitchPreference;

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
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
.method static synthetic -get0(Lcom/samsung/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSystemConfigNonBlockablePkgs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/BlockNotificationList;)Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsTask:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/BlockNotificationList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/BlockNotificationList;)Landroid/support/v7/preference/SecPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->IsFragmentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/BlockNotificationList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->checkAllAppsState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/notification/BlockNotificationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/notification/BlockNotificationList;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setNotificationsEnabled(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/notification/BlockNotificationList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->updateBadgeAppIconPref(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    sput-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mFragmentVisible:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSystemConfigNonBlockablePkgs:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$1;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$2;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$6;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private declared-synchronized IsFragmentVisible()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
            "Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v6, "BlockNotificationList"

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

    if-nez v5, :cond_0

    const-string/jumbo v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    if-nez v4, :cond_1

    const-string/jumbo v5, "BlockNotificationList"

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

    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "BlockNotificationList"

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

    :cond_2
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private callAdvancedAppNotifications()V
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "classname"

    const-string/jumbo v2, "com.android.settings.Settings$NotificationAppListActivity"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "notificationmanager"

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f1201f6

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120106

    move-object v1, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private checkAllAppsState()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v2}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
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

    const-string/jumbo v5, "BlockNotificationList"

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

.method private getActionBarContainer()Landroid/view/View;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "action_bar_container"

    const-string/jumbo v5, "id"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_0
    return-object v4
.end method

.method private getExcutorSercie()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;Landroid/content/Context;)Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->banned:Z

    if-eqz p3, :cond_0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->lockScreenSecure:Z

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BlockNotificationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsTask:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsTask:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getExcutorSercie()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mCollectAppsTask:Ljava/util/concurrent/Future;

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

    const-string/jumbo v1, "BlockNotificationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object p1

    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0704db

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 11

    const-string/jumbo v7, "BlockNotificationList"

    const-string/jumbo v8, "Refreshing apps..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v7}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    iget-object v8, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v8

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "BlockNotificationList"

    const-string/jumbo v9, "mSortedRows size is 0"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-boolean v2, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->first:Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    new-instance v4, Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;-><init>(Landroid/content/Context;)V

    iget-object v7, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/notification/BlockNotificationList;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Lcom/samsung/android/settings/notification/BlockNotificationList$11;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/notification/BlockNotificationList$11;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v7, Lcom/samsung/android/settings/notification/BlockNotificationList$12;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/notification/BlockNotificationList$12;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;)V

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v9, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v10, v5, Lcom/samsung/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {v7, v9, v10}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    monitor-exit v8

    const-string/jumbo v7, "BlockNotificationList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " displayed items"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized setFragmentVisibleState(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/samsung/android/settings/notification/BlockNotificationList;->mFragmentVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setLinkedDataView()V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v6, :cond_2

    new-instance v6, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x7f12164e    # 1.941831E38f

    iput v6, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, ":settings:fragment_args_key"

    const-string/jumbo v7, "ds_ring_tone"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v6, "extra_from_search"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "flowId"

    const/16 v7, 0x232c

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x7f120f6b

    iput v6, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, ":settings:fragment_args_key"

    const-string/jumbo v7, "key_simple_led_indicator_settings"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "extra_from_search"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "flowId"

    const/16 v7, 0x232d

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const v6, 0x7f12006a

    iput v6, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$NotificationReminderActivity"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "flowId"

    const/16 v7, 0x232e

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getMetricsCategory()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v6, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v6, ":settings:fragment_args_key"

    const-string/jumbo v7, "ringtone"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private setNotificationsEnabled(Ljava/lang/String;IZ)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3, p1, p2}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/settings/notification/NotificationBackend;->getChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, -0x3e8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shutdownExcutorSercieNow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mExcutorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private updateBadgeAppIconPref(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecNotiUtils;->getBadgeAppIconType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f121336

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f121335

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    const v1, 0x7f121332

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfd2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "launcherapps"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const v4, 0x7f150030

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f121381

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iput-boolean v8, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo v4, "BlockNotificationList"

    const-string/jumbo v5, "Hide app notification list is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHideApp:Z

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

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

    const-string/jumbo v4, "BlockNotificationList"

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

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSystemConfigNonBlockablePkgs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setHasOptionsMenu(Z)V

    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f1300fe

    invoke-direct {v4, v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    new-instance v5, Lcom/samsung/android/settings/notification/BlockNotificationList$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$7;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string/jumbo v4, "simple_status_bar"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/support/v14/preference/SwitchPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_SystemUI_SupportSimpleStatusBar"

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    sget-boolean v4, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSupportSimpleStatusBar:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v4, "simple_status_bar"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->removePreference(Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v4, "notification_apps"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mNotificationApps:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v4, "notification_all_apps"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mAllApps:Landroid/support/v14/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/BlockNotificationList$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$9;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "badge_app_icon"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/BlockNotificationList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mBadgeAppIcon:Lcom/android/settings/SecSettingsSwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/BlockNotificationList$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$10;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/support/v14/preference/SwitchPreference;

    new-instance v5, Lcom/samsung/android/settings/notification/BlockNotificationList$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/BlockNotificationList$8;-><init>(Lcom/samsung/android/settings/notification/BlockNotificationList;)V

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x2

    const v2, 0x7f120108

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->shutdownExcutorSercieNow()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setFragmentVisibleState(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Notifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setGoToTopEnabled(Z)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActionBarContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setFragmentVisibleState(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->loadAppsList()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "simple_status_bar"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mSimpleStatusBar:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecNotiUtils;->isEnabledBadgeAppIcon(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/notification/BlockNotificationList;->updateBadgeAppIconPref(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->setLinkedDataView()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/BlockNotificationList;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/BlockNotificationList;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "Notifications"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
