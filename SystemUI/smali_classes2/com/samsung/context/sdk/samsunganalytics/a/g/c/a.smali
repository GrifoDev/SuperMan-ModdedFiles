.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;

.field private b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/b/a;

.field private c:Z


# virtual methods
.method public a(I)Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->c()V

    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;

    invoke-virtual {v1, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a(I)Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get log from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->c:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "Queue "

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "Database "

    goto :goto_2
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-direct {v0, p3, p1, p2, p4}, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/d;)V

    return-void
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/a/g/d;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/b/a;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/b/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/d;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/d;)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/d;->a(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a/a;->a(J)V

    goto :goto_0
.end method

.method public d()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/g/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
