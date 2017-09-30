.class public Lcom/samsung/a/a/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/samsung/a/a/a/d;


# instance fields
.field private b:Lcom/samsung/a/a/a/a/b;


# direct methods
.method private constructor <init>(Landroid/app/Application;Lcom/samsung/a/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/a/a/a/d;->b:Lcom/samsung/a/a/a/a/b;

    invoke-static {p1, p2}, Lcom/samsung/a/a/a/a/d/c;->a(Landroid/content/Context;Lcom/samsung/a/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/a/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/a/a/a/a/b;

    invoke-direct {v0, p1, p2}, Lcom/samsung/a/a/a/a/b;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/b;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/d;->b:Lcom/samsung/a/a/a/a/b;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/a/a/a/a/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/b;

    invoke-direct {v0, p1, p2}, Lcom/samsung/a/a/a/a/b;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/b;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/d;->b:Lcom/samsung/a/a/a/a/b;

    goto :goto_0
.end method

.method public static a()Lcom/samsung/a/a/a/d;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/a/a/a/d;->a:Lcom/samsung/a/a/a/d;

    if-nez v0, :cond_0

    const-string v0, "call after setConfiguration() method"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/h/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/a/a/a/a/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v1}, Lcom/samsung/a/a/a/d;->b(Landroid/app/Application;Lcom/samsung/a/a/a/b;)Lcom/samsung/a/a/a/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/d;->a:Lcom/samsung/a/a/a/d;

    goto :goto_0
.end method

.method public static a(Landroid/app/Application;Lcom/samsung/a/a/a/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/a/a/a/d;->b(Landroid/app/Application;Lcom/samsung/a/a/a/b;)Lcom/samsung/a/a/a/d;

    return-void
.end method

.method private static b(Landroid/app/Application;Lcom/samsung/a/a/a/b;)Lcom/samsung/a/a/a/d;
    .locals 2

    sget-object v0, Lcom/samsung/a/a/a/d;->a:Lcom/samsung/a/a/a/d;

    if-nez v0, :cond_0

    const-class v1, Lcom/samsung/a/a/a/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/samsung/a/a/a/d;

    invoke-direct {v0, p0, p1}, Lcom/samsung/a/a/a/d;-><init>(Landroid/app/Application;Lcom/samsung/a/a/a/b;)V

    sput-object v0, Lcom/samsung/a/a/a/d;->a:Lcom/samsung/a/a/a/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/d;->a:Lcom/samsung/a/a/a/d;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)I
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
    iget-object v0, p0, Lcom/samsung/a/a/a/d;->b:Lcom/samsung/a/a/a/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/a/a/a/a/b;->a(Ljava/util/Map;Z)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/16 v0, -0x64

    goto :goto_0
.end method

.method public b(Ljava/util/Map;)V
    .locals 2
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

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/d;->b:Lcom/samsung/a/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method
