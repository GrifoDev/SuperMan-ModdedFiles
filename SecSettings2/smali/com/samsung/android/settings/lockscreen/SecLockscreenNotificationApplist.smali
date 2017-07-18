.class public Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;,
        Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Row;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mAppArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;",
            ">;"
        }
    .end annotation
.end field

.field public static mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private static mSplitBarLeftWeight:F


# instance fields
.field private descTextView:Landroid/widget/TextView;

.field edit:Landroid/content/SharedPreferences$Editor;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field insetdivider:Landroid/graphics/drawable/InsetDrawable;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field mAppPreference:Landroid/preference/SwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mLockscreen:Landroid/preference/SwitchPreference;

.field private mNotiIconsOnly:Landroid/preference/SwitchPreference;

.field private mPM:Landroid/content/pm/PackageManager;

.field mProgress:Landroid/app/ProgressDialog;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;",
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

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/Hashtable;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideApp:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->refreshDisplayedItems()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SecLockNotiApplist"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSplitBarLeftWeight:F

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideApp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$2;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$5;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getEnabledItemCount()I
    .locals 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    iget-object v5, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v6, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;)Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->banned:Z

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->priority:Z

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->sensitive:Z

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->show:Z

    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SecLockNotiApplist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 13

    const/4 v12, 0x0

    sget-boolean v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SecLockNotiApplist"

    const-string/jumbo v8, "Refreshing apps..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v8

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    sget-object v9, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iput-boolean v2, v5, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->first:Z

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_1

    monitor-exit v8

    return-void

    :cond_1
    :try_start_1
    new-instance v7, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    sget-object v10, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iget-object v11, v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iget v7, v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v10, v11, v7}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v7

    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v7, v5, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->banned:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0886

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iget-object v7, v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v7, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;

    iget v7, v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppRow;->uid:I

    iput v7, v1, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->uid:I

    sget-object v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    monitor-exit v8

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string/jumbo v7, "SecLockNotiApplist"

    const-string/jumbo v8, "Restoring listView state"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object v12, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    :cond_5
    sget-boolean v7, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "SecLockNotiApplist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Refreshed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

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

    :cond_6
    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private updateAllAppsPreference()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "lock_notification_all_apps"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "notification_all_apps"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$6;-><init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method private updateNotificationsPref()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "set_visibility"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "notification_icons_only"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    if-nez v2, :cond_1

    const-string/jumbo v2, "SecLockNotiApplist"

    const-string/jumbo v3, "Preference not found: set_visibility"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_2

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x114c

    return v0
.end method

.method public isAllAppsCheckedState()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    iget-object v5, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-lez v3, :cond_0

    return v7

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v0, 0x7f0a0468

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0a045e

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0a001a

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->insetdivider:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v11

    check-cast v11, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v11}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void

    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v0, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f0800dd

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "launcherapps"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherApps;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0f0278

    invoke-direct {v5, v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.android.settings_preferences"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v5, "split_bar_left_wegigh"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    sput v5, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSplitBarLeftWeight:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v0

    sget v5, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSplitBarLeftWeight:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x43480000    # 200.0f

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    float-to-int v5, v4

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateNotificationsPref()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->updateAllAppsPreference()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->loadAppsList()V

    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1
    iput-boolean v9, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideApp:Z

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v5, :cond_0

    const-string/jumbo v5, "SecLockNotiApplist"

    const-string/jumbo v6, "Hide app notification list is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mHideApp:Z

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/16 v5, 0x12c

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f04016e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f110122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->descTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LDST"

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getEnabledItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    sget-boolean v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecLockNotiApplist"

    const-string/jumbo v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NotificationsOnLockscreen"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lock_screen_allow_private_notifications"

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, ""

    if-eqz v1, :cond_2

    const-string/jumbo v4, "hide_contents"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-boolean v4, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "VLST"

    invoke-static {v4, v6, v7, v3}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return v5

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "show_content"

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lockscreen_minimizing_notification"

    if-eqz v1, :cond_4

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    :cond_5
    move-object v2, p1

    check-cast v2, Landroid/preference/SwitchPreference;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;

    sget-object v4, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v6, v7, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$Backend;->setShowonSharedeLocked(Ljava/lang/String;IZ)Z

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->setStatusPreference(Z)V

    sget-boolean v4, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1001c9

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v1, :cond_8

    const/16 v4, 0x3e8

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "NFST"

    iget-object v8, v0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    invoke-static {v4, v6, v7, v8}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move v4, v5

    goto :goto_5
.end method

.method public onResume()V
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mLockscreen:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "lockscreen_minimizing_notification"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mNotiIconsOnly:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "NotificationsOnLockscreen"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_show_notifications"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->descTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "VLST"

    const-string/jumbo v3, "do_not_show_notifications"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStatusPreference(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "lock_notification_all_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
