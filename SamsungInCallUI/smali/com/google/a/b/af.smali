.class final Lcom/google/a/b/af;
.super Lcom/google/a/b/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/j",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final transient b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field transient d:Lcom/google/a/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/j",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/j;-><init>()V

    invoke-static {p1, p2}, Lcom/google/a/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/a/b/af;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/a/b/j",
            "<TV;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/j;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/a/b/af;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/a/b/af;->d:Lcom/google/a/b/j;

    return-void
.end method


# virtual methods
.method public b()Lcom/google/a/b/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/j",
            "<TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/af;->d:Lcom/google/a/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/b/af;

    iget-object v1, p0, Lcom/google/a/b/af;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/a/b/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/b/j;)V

    iput-object v0, p0, Lcom/google/a/b/af;->d:Lcom/google/a/b/j;

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/a/b/af;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method g()Lcom/google/a/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/s",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/a/b/af;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/a/b/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b/s;->a(Ljava/lang/Object;)Lcom/google/a/b/s;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/af;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()Lcom/google/a/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/s",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/af;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/b/s;->a(Ljava/lang/Object;)Lcom/google/a/b/s;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
