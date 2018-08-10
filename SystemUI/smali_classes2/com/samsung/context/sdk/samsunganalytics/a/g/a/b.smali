.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;
.super Lcom/samsung/context/sdk/samsunganalytics/a/g/a;


# instance fields
.field private g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;


# direct methods
.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->d()Ljava/util/Queue;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/context/sdk/samsunganalytics/a/g/d;

    invoke-direct {v4, v5, v6, v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/g/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/a;)V

    invoke-interface {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    goto :goto_0
.end method
