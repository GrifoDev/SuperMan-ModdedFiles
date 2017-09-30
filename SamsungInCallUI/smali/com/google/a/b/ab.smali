.class Lcom/google/a/b/ab;
.super Lcom/google/a/b/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/m",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/m",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:I

.field private final transient c:I

.field private final transient d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/a/b/ab;

    sget-object v1, Lcom/google/a/b/w;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/a/b/ab;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/google/a/b/ab;->a:Lcom/google/a/b/m;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/a/b/ab;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/m;-><init>()V

    iput p2, p0, Lcom/google/a/b/ab;->b:I

    iput p3, p0, Lcom/google/a/b/ab;->c:I

    iput-object p1, p0, Lcom/google/a/b/ab;->d:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Lcom/google/a/b/ab;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/ab;->b:I

    iget v2, p0, Lcom/google/a/b/ab;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/a/b/ab;->c:I

    add-int/2addr v0, p2

    return v0
.end method

.method public a(I)Lcom/google/a/b/ak;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/b/ak",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/ab;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/ab;->b:I

    iget v2, p0, Lcom/google/a/b/ab;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/a/b/t;->a([Ljava/lang/Object;III)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method b(II)Lcom/google/a/b/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/ab;

    iget-object v1, p0, Lcom/google/a/b/ab;->d:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/a/b/ab;->b:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/b/ab;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/a/b/ab;->c:I

    invoke-static {p1, v0}, Lcom/google/a/a/e;->a(II)I

    iget-object v0, p0, Lcom/google/a/b/ab;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/a/b/ab;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/ab;->a(I)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/a/b/ab;->c:I

    return v0
.end method
