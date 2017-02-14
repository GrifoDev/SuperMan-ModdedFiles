.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;
.super Lcom/samsung/context/sdk/samsunganalytics/a/f/a;
.source "Unknown"


# instance fields
.field private g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->b()V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;)I
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

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c(Ljava/util/Map;)I

    move-result v0

    sget v1, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NONE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;->b()V

    :cond_0
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/ErrorType;->ERROR_NONE:I

    return v0

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->e:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->g:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/c;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/f/a/a;Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/a/h/b;)V

    invoke-interface {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/d/c;->a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;->f:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method
