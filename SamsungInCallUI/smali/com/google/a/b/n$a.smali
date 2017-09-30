.class public Lcom/google/a/b/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field

.field b:[Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/a/b/n$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/google/a/b/o;

    iput-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    iput v1, p0, Lcom/google/a/b/n$a;->c:I

    iput-boolean v1, p0, Lcom/google/a/b/n$a;->d:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    array-length v0, v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    iget-object v1, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    array-length v1, v1

    invoke-static {v1, p1}, Lcom/google/a/b/k$b;->a(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/a/b/w;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/o;

    iput-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/a/b/n$a;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/b/n$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/a/b/n$a",
            "<TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/a/b/n$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/b/n$a;->a(I)V

    invoke-static {p1, p2}, Lcom/google/a/b/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    iget v2, p0, Lcom/google/a/b/n$a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/a/b/n$a;->c:I

    aput-object v0, v1, v2

    return-object p0
.end method

.method public a()Lcom/google/a/b/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/n",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/a/b/n$a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/a/b/n$a;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/a/b/n$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    iget v2, p0, Lcom/google/a/b/n$a;->c:I

    invoke-static {v0, v2}, Lcom/google/a/b/w;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/o;

    iput-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    iget v2, p0, Lcom/google/a/b/n$a;->c:I

    iget-object v3, p0, Lcom/google/a/b/n$a;->a:Ljava/util/Comparator;

    invoke-static {v3}, Lcom/google/a/b/x;->a(Ljava/util/Comparator;)Lcom/google/a/b/x;

    move-result-object v3

    invoke-static {}, Lcom/google/a/b/v;->a()Lcom/google/a/a/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/a/b/x;->a(Lcom/google/a/a/a;)Lcom/google/a/b/x;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_1
    iget v0, p0, Lcom/google/a/b/n$a;->c:I

    iget-object v2, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/a/b/n$a;->d:Z

    iget v0, p0, Lcom/google/a/b/n$a;->c:I

    iget-object v1, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    invoke-static {v0, v1}, Lcom/google/a/b/ac;->a(I[Ljava/util/Map$Entry;)Lcom/google/a/b/ac;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/a/b/n;->e()Lcom/google/a/b/n;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/a/b/o;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/a/b/n$a;->b:[Lcom/google/a/b/o;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/google/a/b/o;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/b/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/b/n;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
