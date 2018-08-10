.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;
.super Lcom/samsung/context/sdk/samsunganalytics/a/f/a;


# instance fields
.field private g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b$1;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->b()V

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d()Ljava/util/Queue;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/f/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    invoke-interface {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->a()V

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

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "do"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dm"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/util/Map;)I
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

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->d(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->c(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->b()V

    :goto_0
    return v2

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->a()V

    goto :goto_0
.end method
