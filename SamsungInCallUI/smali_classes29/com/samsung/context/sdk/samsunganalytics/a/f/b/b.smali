.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;
.super Lcom/samsung/context/sdk/samsunganalytics/a/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, -0x4

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method private a(ILcom/samsung/context/sdk/samsunganalytics/a/f/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)I
    .locals 3

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->b(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILjava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/d;",
            ">;",
            "Lcom/samsung/context/sdk/samsunganalytics/a/d/a;",
            ")I"
        }
    .end annotation

    const v2, 0xc800

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;I)I

    move-result v0

    if-le v2, v0, :cond_2

    move v1, v0

    :goto_1
    move v3, v4

    :goto_2
    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v3

    if-le v6, v1, :cond_3

    :cond_0
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, -0x1

    :cond_1
    return v4

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    invoke-interface {v5, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v5, v3, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(ILjava/util/Queue;ILcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;)Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    return-object v0
.end method

.method private a(ILjava/util/Queue;ILcom/samsung/context/sdk/samsunganalytics/a/d/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/d;",
            ">;I",
            "Lcom/samsung/context/sdk/samsunganalytics/a/d/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->b(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, p4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/a;-><init>(Ljava/util/Queue;Ljava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/util/Map;)I
    .locals 6
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

    const/4 v1, -0x4

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->d(Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a()I

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v0, "DLS Sender"

    const-string v2, "Network unavailable."

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c(Ljava/util/Map;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/d/c;Lcom/samsung/context/sdk/samsunganalytics/a/b/a;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c()V

    const/4 v0, -0x6

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getRestrictedNetworkType()I

    move-result v0

    if-ne v0, v2, :cond_3

    const-string v0, "DLS Sender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network unavailable by restrict option:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->c(Ljava/util/Map;)V

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b$1;

    invoke-direct {v1, p0, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;I)V

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    const-string v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(ILcom/samsung/context/sdk/samsunganalytics/a/f/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)I

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d()Ljava/util/Queue;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v2, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(ILjava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)I

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;->a(ILcom/samsung/context/sdk/samsunganalytics/a/f/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)I

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_0
.end method
