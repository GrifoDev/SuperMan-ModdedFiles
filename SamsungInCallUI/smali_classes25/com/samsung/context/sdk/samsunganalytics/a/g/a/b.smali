.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;
.super Lcom/samsung/context/sdk/samsunganalytics/a/g/a;


# instance fields
.field private g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b$1;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->d()Ljava/util/Queue;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-direct {v4, v5, v6, v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/g/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    invoke-interface {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "do"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dm"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)I
    .locals 1
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

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->c(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->b()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->b()V

    goto :goto_1
.end method

.method public e(Ljava/util/Map;)I
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

    const-string v0, "DLCLogSender"

    const-string v1, "not support sync api"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->d(Ljava/util/Map;)I

    const/16 v0, -0x64

    return v0
.end method
