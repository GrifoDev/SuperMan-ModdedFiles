.class public abstract Lcom/google/a/b/m;
.super Lcom/google/a/b/k;

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/m$a;,
        Lcom/google/a/b/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/k",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/k;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/ag;

    invoke-direct {v0, p0}, Lcom/google/a/b/ag;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a([Ljava/lang/Object;)Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/a/b/m;->b([Ljava/lang/Object;I)Lcom/google/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;I)Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/a/b/w;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/google/a/b/ab;

    invoke-direct {v0, p0}, Lcom/google/a/b/ab;-><init>([Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/a/b/m;->e()Lcom/google/a/b/m;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/a/b/ag;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/a/b/ag;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static e()Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/ab;->a:Lcom/google/a/b/m;

    return-object v0
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/a/b/m;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int v0, p2, v1

    return v0
.end method

.method public a(I)Lcom/google/a/b/ak;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/b/ak",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/m$1;

    invoke-virtual {p0}, Lcom/google/a/b/m;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/a/b/m$1;-><init>(Lcom/google/a/b/m;II)V

    return-object v0
.end method

.method public a(II)Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/m;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/a/a/e;->a(III)V

    sub-int v0, p2, p1

    invoke-virtual {p0}, Lcom/google/a/b/m;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/google/a/b/m;->b(II)Lcom/google/a/b/m;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/google/a/b/m;->e()Lcom/google/a/b/m;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b/m;->a(Ljava/lang/Object;)Lcom/google/a/b/m;

    move-result-object p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Lcom/google/a/b/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/aj",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/m;->f()Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method b(II)Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/m$b;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/a/b/m$b;-><init>(Lcom/google/a/b/m;II)V

    return-object v0
.end method

.method public final c()Lcom/google/a/b/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/a/b/m;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/google/a/b/u;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()Lcom/google/a/b/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/ak",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/a/b/m;->a(I)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/a/b/m;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/a/b/u;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/a/b/u;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/m;->f()Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/m;->a(I)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/a/b/m;->a(II)Lcom/google/a/b/m;

    move-result-object v0

    return-object v0
.end method
