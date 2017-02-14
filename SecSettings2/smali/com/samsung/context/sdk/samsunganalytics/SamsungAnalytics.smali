.class public Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;


# instance fields
.field private tracker:Lcom/samsung/context/sdk/samsunganalytics/a/a;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-direct {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/a;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :goto_1
    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-direct {v0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/a;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object v0

    :cond_1
    const-string/jumbo v0, "call after setConfiguration() method"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    return-object v0
.end method

.method private static getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;
    .locals 2

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-object v0

    :cond_0
    const-class v1, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    invoke-direct {v0, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->instance:Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstanceAndConfig(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    return-void
.end method


# virtual methods
.method public sendLog(Ljava/util/Map;)I
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->tracker:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/a;->a(Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_UNKNOWN:I

    return v0
.end method
