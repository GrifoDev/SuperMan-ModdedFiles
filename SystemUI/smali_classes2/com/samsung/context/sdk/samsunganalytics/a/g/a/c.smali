.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/b;


# instance fields
.field private b:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

.field private c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private d:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

.field private e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/g/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->f:I

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    :try_start_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->d()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->c:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->b()J

    move-result-wide v4

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->c()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "SAM"

    const-string/jumbo v7, "0"

    const-string/jumbo v8, ""

    const-string/jumbo v9, "1.8.33"

    invoke-interface/range {v1 .. v10}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSend(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->f:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to DLC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;->d:Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method
