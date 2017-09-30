.class public Lcom/b/a/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/concurrent/atomic/AtomicBoolean;


# virtual methods
.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/b/a/a/a/a/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method
