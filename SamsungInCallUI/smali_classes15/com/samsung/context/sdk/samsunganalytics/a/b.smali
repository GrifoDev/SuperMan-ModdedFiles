.class public Lcom/samsung/context/sdk/samsunganalytics/a/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x80

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field private e:Landroid/app/Application;

.field private f:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private h:Z

.field private i:Z

.field private j:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->i:Z

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableAutoDeviceId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->l()V

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->i()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableFastReady()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->n()V

    :cond_3
    const-string v0, "Tracker"

    const-string v1, "Tracker start:1.8.15"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    goto :goto_0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->n()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/b;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auidType"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v4, :cond_0

    const-string v1, "CF version < 2.0.9"

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-ne v1, v4, :cond_1

    if-nez v3, :cond_1

    const/16 v1, 0x9

    if-ge v2, v1, :cond_1

    const-string v1, "CF version < 2.0.9"

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    return-object v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;Ljava/util/Map;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a(Z)V

    :cond_0
    const-string v0, "register BR"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/b$2;

    invoke-direct {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private i()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/c;

    const-string v2, "dom"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/b;

    const-string v2, "uri"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/b;

    const-string v2, "bat-uri"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->a(Ljava/lang/String;)V

    const-string v1, "quota_reset_date"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "quota_reset_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "data_used"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "wifi_used"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "rint"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "policy_received_date"

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-direct {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/a/b$3;

    invoke-direct {v4, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$3;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    goto :goto_0
.end method

.method private j()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b$5;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$5;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_0
.end method

.method private k()Z
    .locals 3

    const-string v0, "com.samsung.android.providers.context"

    const-string v0, ".log.action.REQUEST_DID"

    const-string v0, ".log.action.GET_DID"

    const-string v0, "PKGNAME"

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.providers.context"

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.providers.context.log.action.REQUEST_DID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "PKGNAME"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.providers.context.log.action.GET_DID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/b$7;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$7;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auidType"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 11

    const/16 v10, 0x20

    const-string v0, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x10

    new-array v2, v0, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v10, :cond_0

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    const-string v5, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-string v4, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v8, v4

    rem-long/2addr v6, v8

    long-to-int v4, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private n()V
    .locals 6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "status_sent_date"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->o()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "user do not agree"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    goto :goto_0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;->isAgreement()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user do not agree"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "Failure to send Logs : No data"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    const/4 v0, -0x3

    goto :goto_0

    :cond_2
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->c(Ljava/util/Map;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b;->d(Ljava/util/Map;)I

    move-result v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h:Z

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$4;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h:Z

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/b;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/b;-><init>(Landroid/content/SharedPreferences;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->i:Z

    return v0
.end method

.method public g()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-object v0
.end method
