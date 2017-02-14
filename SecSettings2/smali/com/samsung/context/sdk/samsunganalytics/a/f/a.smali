.class public abstract Lcom/samsung/context/sdk/samsunganalytics/a/f/a;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/f/b;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field protected c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

.field protected d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/context/sdk/samsunganalytics/a/h/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

.field protected f:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;-><init>()V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

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

    const-string/jumbo v0, "v"

    const-string/jumbo v1, "1.0.00"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tid"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "la"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    const-string/jumbo v0, "dm"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "auid"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isUseAnonymizeIp()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_3
    const-string/jumbo v0, "do"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "av"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "uv"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "tz"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "at"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getAuidType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "fv"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const-string/jumbo v0, "mcc"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "mnc"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "aip"

    const-string/jumbo v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getOverrideIp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "oip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "uid"

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method protected b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Map;)I
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

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NONE:I

    return v0

    :cond_0
    const-string/jumbo v0, "Log Sender"

    const-string/jumbo v1, "queue size over. remove oldest log"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Log Sender"

    const-string/jumbo v1, "Device id is empty"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NO_DEVICE_ID:I

    return v0
.end method
