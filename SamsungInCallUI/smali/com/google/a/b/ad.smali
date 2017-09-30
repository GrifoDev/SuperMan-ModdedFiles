.class final Lcom/google/a/b/ad;
.super Lcom/google/a/b/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/s",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/a/b/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ad",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient b:[Ljava/lang/Object;

.field private final transient c:[Ljava/lang/Object;

.field private final transient d:I

.field private final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/a/b/ad;

    sget-object v1, Lcom/google/a/b/w;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/a/b/ad;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/a/b/ad;->a:Lcom/google/a/b/ad;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/s;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/a/b/ad;->b:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/a/b/ad;->d:I

    iput p2, p0, Lcom/google/a/b/ad;->e:I

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
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

    iget-object v0, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/a/b/t;->a([Ljava/lang/Object;)Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/a/b/ad;->b:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/google/a/b/h;->a(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    iget v3, p0, Lcom/google/a/b/ad;->d:I

    and-int/2addr v0, v3

    aget-object v3, v2, v0

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method d()Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/ad;->b:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/a/b/m;->e()Lcom/google/a/b/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/z;

    iget-object v1, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/z;-><init>(Lcom/google/a/b/k;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/a/b/ad;->e:I

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/ad;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/ad;->c:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
