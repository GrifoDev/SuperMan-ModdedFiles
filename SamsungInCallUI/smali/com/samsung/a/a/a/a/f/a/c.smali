.class public Lcom/samsung/a/a/a/a/f/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/c/b;


# instance fields
.field private a:Lcom/samsung/a/a/a/a/f/a/a;

.field private b:Lcom/samsung/a/a/a/b;

.field private c:Lcom/samsung/a/a/a/a/f/d;

.field private d:Lcom/samsung/a/a/a/a/c/a;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/samsung/a/a/a/a/f/a/a;Lcom/samsung/a/a/a/b;Lcom/samsung/a/a/a/a/f/d;Lcom/samsung/a/a/a/a/c/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->e:I

    iput-object p1, p0, Lcom/samsung/a/a/a/a/f/a/c;->a:Lcom/samsung/a/a/a/a/f/a/a;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/f/a/c;->b:Lcom/samsung/a/a/a/b;

    iput-object p3, p0, Lcom/samsung/a/a/a/a/f/a/c;->c:Lcom/samsung/a/a/a/a/f/d;

    iput-object p4, p0, Lcom/samsung/a/a/a/a/f/a/c;->d:Lcom/samsung/a/a/a/a/c/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->a:Lcom/samsung/a/a/a/a/f/a/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/a/a;->d()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v1

    const-string v2, "SAM"

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->b:Lcom/samsung/a/a/a/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->c:Lcom/samsung/a/a/a/a/f/d;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/d;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->c:Lcom/samsung/a/a/a/a/f/d;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/d;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    const-string v8, ""

    const-string v9, "1.8.33"

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->c:Lcom/samsung/a/a/a/a/f/d;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/d;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {v1 .. v10}, Lcom/sec/spp/push/dlc/api/IDlcService;->requestSend(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send to DLC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/f/a/c;->c:Lcom/samsung/a/a/a/a/f/d;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()I
    .locals 3

    iget v0, p0, Lcom/samsung/a/a/a/a/f/a/c;->e:I

    if-nez v0, :cond_0

    const-string v0, "DLC Sender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/a/a/a/a/f/a/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "DLC Sender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send result fail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/a/a/a/a/f/a/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x7

    goto :goto_0
.end method
