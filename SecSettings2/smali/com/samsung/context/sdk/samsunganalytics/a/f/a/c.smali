.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# instance fields
.field private b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private e:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;
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


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/h/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/context/sdk/samsunganalytics/Configuration;",
            "Lcom/samsung/context/sdk/samsunganalytics/a/h/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->e:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    const-string/jumbo v1, "do"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    const-string/jumbo v1, "dm"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    const-string/jumbo v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->e:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->d()Lcom/a/a/a/a/a/a;

    move-result-object v1

    const-string/jumbo v2, "SAM"

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    const-string/jumbo v4, "ts"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;->c:Ljava/util/Map;

    const-string/jumbo v6, "t"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "0"

    const-string/jumbo v8, ""

    invoke-interface/range {v1 .. v10}, Lcom/a/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to DLC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "DLC Sender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send result fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "DLC Sender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send result success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DLC Sender"

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
