.class public Lcom/samsung/context/sdk/samsunganalytics/a/b;
.super Ljava/lang/Object;


# instance fields
.field private e:Landroid/app/Application;

.field private h:Z

.field private i:Z

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

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableAutoDeviceId()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :goto_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->o()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    const-string/jumbo v0, "Tracker"

    const-string/jumbo v1, "Tracker start:1.8.15"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->l()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->i()V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableFastReady()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->n()V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    goto :goto_4
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

    const-string/jumbo v1, "deviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "auidType"

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
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "."

    invoke-direct {v1, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v2, v8, :cond_1

    if-eq v2, v8, :cond_2

    :cond_0
    const/4 v5, 0x1

    return v5

    :cond_1
    const-string/jumbo v5, "CF version < 2.0.9"

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    return v7

    :cond_2
    if-nez v3, :cond_0

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    const-string/jumbo v5, "CF version < 2.0.9"

    invoke-static {v5}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    return v7
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

    const-string/jumbo v1, "t"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;

    invoke-direct {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b$6;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;Ljava/util/Map;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->h()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method static synthetic e(Lcom/samsung/context/sdk/samsunganalytics/a/b;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "register BR"

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/b$2;

    invoke-direct {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a(Z)V

    goto :goto_0
.end method

.method private i()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/c;

    const-string/jumbo v2, "dom"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/b;

    const-string/jumbo v2, "uri"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/a/b;

    const-string/jumbo v2, "bat-uri"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/b;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "quota_reset_date"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "rint"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "policy_received_date"

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v3

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-direct {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/a/b$3;

    invoke-direct {v5, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$3;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "quota_reset_date"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "data_used"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "wifi_used"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()Z
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v0, "com.samsung.android.providers.context"

    const-string/jumbo v1, ".log.action.REQUEST_DID"

    const-string/jumbo v2, ".log.action.GET_DID"

    const-string/jumbo v3, "PKGNAME"

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/e;->a()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return v8

    :cond_1
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v7}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v7}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-direct {p0, v7}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.REQUEST_DID"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "PKGNAME"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.providers.context"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.samsung.android.providers.context.log.action.GET_DID"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/a/b$7;

    invoke-direct {v6, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b$7;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;)V

    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v7, 0x1

    return v7
.end method

.method private l()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v3, "deviceId"

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "auidType"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->a(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private m()Ljava/lang/String;
    .locals 13

    const/16 v12, 0x20

    const/16 v0, 0x10

    const/16 v1, 0x20

    const-string/jumbo v2, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    const/16 v8, 0x10

    new-array v4, v8, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v12, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_0
    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-string/jumbo v10, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    int-to-long v10, v10

    rem-long/2addr v8, v10

    long-to-int v8, v8

    const-string/jumbo v9, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 v8, 0x0

    return-object v8
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "status_sent_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "user do not agree"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    return-void
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
    .locals 4
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

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_0
    const-string/jumbo v0, "Failure to send Logs : No data"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0

    :cond_1
    const-string/jumbo v0, "user do not agree"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "st"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->e:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b;->d(Ljava/util/Map;)I

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b;->c(Ljava/util/Map;)V

    return v2
.end method
