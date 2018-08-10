.class public Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
.super Landroid/content/BroadcastReceiver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;,
        Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;
    }
.end annotation


# static fields
.field private static final LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static final LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

.field private static sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# instance fields
.field private mAODLockSettingsObserver:Landroid/database/ContentObserver;

.field private final mClockCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextForUser:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;I)Landroid/content/Context;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->handleClockPackageUpdated()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->handleClockSettingsChanged(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_trial_package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;

    sget-object v4, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$2;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const-string/jumbo v4, "ExternalClockProvider"

    const-string/jumbo v5, "ExternalClockProvider() created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getContextForUser(I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-virtual {v3, v4, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;-><init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V

    const-string/jumbo v6, "ExternalClockProvider"

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    const-string/jumbo v5, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    :goto_2
    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z

    if-nez v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mAODLockSettingsObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_3
    return-void

    :cond_1
    const-string/jumbo v4, "com.samsung.android.app.clockpack"

    invoke-virtual {v3, v4, v6}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "com.samsung.android.app.clockpack"

    const-string/jumbo v5, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v4, "ExternalClockProvider"

    const-string/jumbo v5, "SecurityException occurred while registering com.samsung.android.app.clockpack.provider"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getContextForUser(I)Landroid/content/Context;
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    :cond_0
    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->sExternalClockProvider:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    return-object v0
.end method

.method private getPaletteInfo()[I
    .locals 9

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v8, v0, [I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v8, v1

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v8, v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPaletteInfo() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getThemeClockPackage()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThemeClockPackage() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (TRIAL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->querySingleString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThemeClockPackage() packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleClockPackageUpdated()V
    .locals 4

    const-string/jumbo v2, "ExternalClockProvider"

    const-string/jumbo v3, "handleClockPackageUpdated()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.samsung.android.app.aodservice"

    const-string/jumbo v3, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-nez v2, :cond_1

    return-void

    :cond_0
    const-string/jumbo v2, "com.samsung.android.app.clockpack"

    const-string/jumbo v3, "com.samsung.android.clockpack.action.PLUGIN_CLOCK"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockPackageChanged()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private handleClockSettingsChanged(Landroid/net/Uri;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockStyleChanged()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "lockscreen_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "9008"

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v7

    const/4 v8, 0x2

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockName(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lcom/samsung/android/clockpack/plugins/exception/PluginException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/clockpack/plugins/exception/CategoryException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Plugin|CategoryException: getClockName("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClockType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;->onClockColorChanged()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v3

    aget v4, v3, v6

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "lockscreen_pref"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "9009"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Color "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    :cond_7
    aget v4, v3, v6

    if-ne v4, v8, :cond_3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "lockscreen_pref"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "9009"

    const-string/jumbo v6, "Color picker"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method private isMonoClock(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .locals 11

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    new-instance v0, Ldalvik/system/PathClassLoader;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    new-instance v7, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v8, 0x1

    invoke-static {v1, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-interface {v5, v8, v7}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->onCreate(Landroid/content/Context;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    const-string/jumbo v8, "ExternalClockProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t load plugin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    return-object v8
.end method

.method private queryPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x200

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->loadPlugin(Landroid/content/ComponentName;)Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    move-result-object v4

    return-object v4

    :cond_1
    const-string/jumbo v4, "ExternalClockProvider"

    const-string/jumbo v5, "queryPlugin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private querySingleString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    const-string/jumbo v8, ""

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "null"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    :cond_2
    return-object v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "ExternalClockProvider"

    const-string/jumbo v4, "setPreDefineOrCustomColor() set default color to dual clock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v5}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setPaletteIndex(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getPaletteInfo()[I

    move-result-object v1

    aget v2, v1, v5

    aget v0, v1, v6

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setPaletteIndex(I)V

    :cond_1
    :goto_0
    const-string/jumbo v3, "ExternalClockProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreDefineOrCustomColor() type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", indexOrColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-ne v2, v6, :cond_1

    invoke-virtual {p1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setCustomColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public getClockType()I
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getClockType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getClockView(I)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mProvider:Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;

    const/4 v3, 0x2

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/clockpack/plugins/clock/ClockProvider;->getClockView(II)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    const-string/jumbo v2, "ExternalClockProvider"

    const-string/jumbo v3, "VERSION_CODE = 12"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/clockpack/plugins/exception/PluginException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/clockpack/plugins/exception/NoSuchClockException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/clockpack/plugins/exception/CategoryException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v2, "ExternalClockProvider"

    const-string/jumbo v3, "getClockView returns null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/util/AndroidException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    goto :goto_1
.end method

.method public getDateColor()I
    .locals 9

    const/4 v2, 0x0

    const v6, -0x50506

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContextForUser:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->LOCK_SETTING_PALETTE_INFO_URI_PARSED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string/jumbo v0, "ExternalClockProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDateColor() color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.clockpack.plugins"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mParentClassLoader:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClassLoaderFilter;

    return-object v0
.end method

.method public isThemeClockEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getThemeClockPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "reason"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "ExternalClockProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "com.samsung.android.app.clockpack"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldUseDefaultColor()Z
    .locals 5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v4, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->mClockCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateClockColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 5

    const-string/jumbo v1, "ExternalClockProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClockColor() adaptiveColors="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->getClockType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isMonoClock(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    iget v2, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    iget v3, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    iget v4, p2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->setAdaptiveColors(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->setPreDefineOrCustomColor(Lcom/samsung/android/clockpack/plugins/clock/ClockView;)V

    goto :goto_0
.end method
