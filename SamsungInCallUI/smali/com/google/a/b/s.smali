.class public abstract Lcom/google/a/b/s;
.super Lcom/google/a/b/k;

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/k",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/k;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/a/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/a/b/s",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/ah;

    invoke-direct {v0, p0}, Lcom/google/a/b/ah;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f()Lcom/google/a/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/b/s",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/ad;->a:Lcom/google/a/b/ad;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/a/b/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/aj",
            "<TE;>;"
        }
    .end annotation
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/a/b/s;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/a/b/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/a/b/s;

    invoke-virtual {v0}, Lcom/google/a/b/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/a/b/s;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/a/b/ae;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/a/b/ae;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/s;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method
