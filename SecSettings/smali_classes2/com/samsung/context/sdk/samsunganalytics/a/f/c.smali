.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

.field private static b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :goto_0
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    if-eq p1, v3, :cond_4

    return-object v4

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    if-eqz v3, :cond_3

    :goto_1
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    return-object v3

    :cond_3
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    const-class v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    monitor-enter v3

    :try_start_0
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    invoke-direct {v3, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    if-eqz v3, :cond_5

    :goto_2
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    return-object v3

    :cond_5
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    const-class v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    monitor-enter v3

    :try_start_1
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    invoke-direct {v3, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
