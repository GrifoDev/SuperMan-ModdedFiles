.class final Lcom/google/a/b/ac;
.super Lcom/google/a/b/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/n",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient b:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:[Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient d:I


# direct methods
.method private constructor <init>([Ljava/util/Map$Entry;[Lcom/google/a/b/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;[",
            "Lcom/google/a/b/o",
            "<TK;TV;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/n;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/ac;->b:[Ljava/util/Map$Entry;

    iput-object p2, p0, Lcom/google/a/b/ac;->c:[Lcom/google/a/b/o;

    iput p3, p0, Lcom/google/a/b/ac;->d:I

    return-void
.end method

.method static a(I[Ljava/util/Map$Entry;)Lcom/google/a/b/ac;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ac",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v0, p1

    invoke-static {p0, v0}, Lcom/google/a/a/e;->b(II)I

    array-length v0, p1

    if-ne p0, v0, :cond_0

    move-object v2, p1

    :goto_0
    const-wide v0, 0x3ff3333333333333L    # 1.2

    invoke-static {p0, v0, v1}, Lcom/google/a/b/h;->a(ID)I

    move-result v0

    invoke-static {v0}, Lcom/google/a/b/o;->a(I)[Lcom/google/a/b/o;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    move v4, v3

    :goto_1
    if-ge v4, p0, :cond_4

    aget-object v1, p1, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/a/b/e;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/a/b/h;->a(I)I

    move-result v0

    and-int v9, v0, v6

    aget-object v10, v5, v9

    if-nez v10, :cond_3

    instance-of v0, v1, Lcom/google/a/b/o;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/google/a/b/o;

    invoke-virtual {v0}, Lcom/google/a/b/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_2

    check-cast v1, Lcom/google/a/b/o;

    :goto_3
    aput-object v1, v5, v9

    aput-object v1, v2, v4

    invoke-static {v7, v1, v10}, Lcom/google/a/b/ac;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/a/b/o;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/google/a/b/o;->a(I)[Lcom/google/a/b/o;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/a/b/o;

    invoke-direct {v1, v7, v8}, Lcom/google/a/b/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance v1, Lcom/google/a/b/o$a;

    invoke-direct {v1, v7, v8, v10}, Lcom/google/a/b/o$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/a/b/o;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/a/b/ac;

    invoke-direct {v0, v2, v5, v6}, Lcom/google/a/b/ac;-><init>([Ljava/util/Map$Entry;[Lcom/google/a/b/o;I)V

    return-object v0
.end method

.method static a(Ljava/lang/Object;[Lcom/google/a/b/o;I)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lcom/google/a/b/o",
            "<*TV;>;I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/a/b/h;->a(I)I

    move-result v1

    and-int/2addr v1, p2

    aget-object v1, p1, v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/a/b/o;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/a/b/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/a/b/o;->a()Lcom/google/a/b/o;

    move-result-object v1

    goto :goto_1
.end method

.method static a(Ljava/lang/Object;Ljava/util/Map$Entry;Lcom/google/a/b/o;)V
    .locals 2
    .param p2    # Lcom/google/a/b/o;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Lcom/google/a/b/o",
            "<**>;)V"
        }
    .end annotation

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/a/b/o;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v1, "key"

    invoke-static {v0, v1, p1, p2}, Lcom/google/a/b/ac;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    invoke-virtual {p2}, Lcom/google/a/b/o;->a()Lcom/google/a/b/o;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
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

    new-instance v0, Lcom/google/a/b/p$a;

    iget-object v1, p0, Lcom/google/a/b/ac;->b:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/p$a;-><init>(Lcom/google/a/b/n;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    iget-object v0, p0, Lcom/google/a/b/ac;->c:[Lcom/google/a/b/o;

    iget v1, p0, Lcom/google/a/b/ac;->d:I

    invoke-static {p1, v0, v1}, Lcom/google/a/b/ac;->a(Ljava/lang/Object;[Lcom/google/a/b/o;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/ac;->b:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
