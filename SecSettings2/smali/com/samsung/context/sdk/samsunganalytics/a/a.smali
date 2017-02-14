.class public Lcom/samsung/context/sdk/samsunganalytics/a/a;
.super Ljava/lang/Object;
.source "Unknown"


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

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->h:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->i:Z

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/a$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :goto_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->n()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string/jumbo v0, "Tracker"

    const-string/jumbo v1, "Tracker start:1.0.00"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableAutoDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->h()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->m()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->m()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

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

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "."

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v4, :cond_1

    if-eq v0, v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "CF version < 2.0.9"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    return v3

    :cond_2
    if-nez v2, :cond_0

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    const-string/jumbo v0, "CF version < 2.0.9"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    return v3
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

    const-string/jumbo v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/a$5;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;Ljava/util/Map;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->g()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method static synthetic d(Lcom/samsung/context/sdk/samsunganalytics/a/a;)Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/context/sdk/samsunganalytics/a/a;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "register BR"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/a$2;

    invoke-direct {v2, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a(Z)V

    goto :goto_0
.end method

.method private h()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a/c;

    const-string/jumbo v2, "dom"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/a/c;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "quota_reset_date"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    const-string/jumbo v1, "rint"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "policy_received_date"

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "pkn"

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "dm"

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    const-string/jumbo v0, "uv"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/a/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/a/a;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/e/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a/a;Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "quota_reset_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "data_used"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "wifi_used"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "mcc"

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "mnc"

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private j()Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "com.samsung.android.providers.context"

    const-string/jumbo v0, ".log.action.REQUEST_DID"

    const-string/jumbo v0, ".log.action.GET_DID"

    const-string/jumbo v0, "PKGNAME"

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "com.samsung.android.providers.context"

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.REQUEST_DID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PKGNAME"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.providers.context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.providers.context.log.action.GET_DID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/a$6;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a$6;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "deviceId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auidType"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->l()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 11

    const/16 v10, 0x20

    const-string/jumbo v0, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v0, 0x10

    new-array v2, v0, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v10, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    const-string/jumbo v5, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-string/jumbo v4, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

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

    const/4 v0, 0x0

    return-object v0
.end method

.method private m()V
    .locals 6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "status_sent_date"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(ILjava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void

    :cond_0
    return-void
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

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

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    :cond_0
    const-string/jumbo v0, "Failure to send Logs : No data"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_INVALID_PARAMETER:I

    return v0

    :cond_1
    const-string/jumbo v0, "user do not agree"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->d(Ljava/lang/String;)V

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_USER_NOT_AGREE:I

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

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->e:Landroid/app/Application;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a;->k:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b;->c(Ljava/util/Map;)I

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->c(Ljava/util/Map;)V

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NONE:I

    return v0
.end method
