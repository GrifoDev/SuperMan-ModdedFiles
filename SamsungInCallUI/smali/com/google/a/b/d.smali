.class final Lcom/google/a/b/d;
.super Lcom/google/a/b/x;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/x",
        "<TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/a",
            "<TF;+TT;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/a/b/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/x",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/a/a;Lcom/google/a/b/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/a",
            "<TF;+TT;>;",
            "Lcom/google/a/b/x",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/x;-><init>()V

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/a;

    iput-object v0, p0, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    invoke-static {p2}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/x;

    iput-object v0, p0, Lcom/google/a/b/d;->b:Lcom/google/a/b/x;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/d;->b:Lcom/google/a/b/x;

    iget-object v1, p0, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    invoke-interface {v1, p1}, Lcom/google/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    invoke-interface {v2, p2}, Lcom/google/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/b/x;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/a/b/d;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/a/b/d;

    iget-object v2, p0, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    iget-object v3, p1, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    invoke-interface {v2, v3}, Lcom/google/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/a/b/d;->b:Lcom/google/a/b/x;

    iget-object v3, p1, Lcom/google/a/b/d;->b:Lcom/google/a/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/b/d;->b:Lcom/google/a/b/x;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/d;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/a/b/d;->b:Lcom/google/a/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/d;->a:Lcom/google/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
