.class Lcom/google/a/b/aa;
.super Lcom/google/a/b/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/b/aa$1;,
        Lcom/google/a/b/aa$a;
    }
.end annotation

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


# static fields
.field static final b:Lcom/google/a/b/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/aa",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient c:[Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient d:[Lcom/google/a/b/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/b/o",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient e:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient f:I

.field private final transient g:I

.field private transient h:Lcom/google/a/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/j",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/google/a/b/aa;

    sget-object v3, Lcom/google/a/b/n;->a:[Ljava/util/Map$Entry;

    nop

    nop

    move-object v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aa;-><init>([Lcom/google/a/b/o;[Lcom/google/a/b/o;[Ljava/util/Map$Entry;II)V

    sput-object v0, Lcom/google/a/b/aa;->b:Lcom/google/a/b/aa;

    return-void
.end method

.method private constructor <init>([Lcom/google/a/b/o;[Lcom/google/a/b/o;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/a/b/o",
            "<TK;TV;>;[",
            "Lcom/google/a/b/o",
            "<TK;TV;>;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/j;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/aa;->c:[Lcom/google/a/b/o;

    iput-object p2, p0, Lcom/google/a/b/aa;->d:[Lcom/google/a/b/o;

    iput-object p3, p0, Lcom/google/a/b/aa;->e:[Ljava/util/Map$Entry;

    iput p4, p0, Lcom/google/a/b/aa;->f:I

    iput p5, p0, Lcom/google/a/b/aa;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/a/b/aa;)[Lcom/google/a/b/o;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/aa;->d:[Lcom/google/a/b/o;

    return-object v0
.end method

.method static synthetic b(Lcom/google/a/b/aa;)I
    .locals 1

    iget v0, p0, Lcom/google/a/b/aa;->f:I

    return v0
.end method

.method static synthetic c(Lcom/google/a/b/aa;)I
    .locals 1

    iget v0, p0, Lcom/google/a/b/aa;->g:I

    return v0
.end method

.method static synthetic d(Lcom/google/a/b/aa;)[Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/aa;->e:[Ljava/util/Map$Entry;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/a/b/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/j",
            "<TV;TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/aa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/a/b/j;->a()Lcom/google/a/b/j;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/aa;->h:Lcom/google/a/b/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/a/b/aa$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/aa$a;-><init>(Lcom/google/a/b/aa;Lcom/google/a/b/aa$1;)V

    iput-object v0, p0, Lcom/google/a/b/aa;->h:Lcom/google/a/b/j;

    goto :goto_0
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

    invoke-virtual {p0}, Lcom/google/a/b/aa;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/a/b/s;->f()Lcom/google/a/b/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/p$a;

    iget-object v1, p0, Lcom/google/a/b/aa;->e:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/p$a;-><init>(Lcom/google/a/b/n;[Ljava/util/Map$Entry;)V

    goto :goto_0
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/aa;->c:[Lcom/google/a/b/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/b/aa;->c:[Lcom/google/a/b/o;

    iget v1, p0, Lcom/google/a/b/aa;->f:I

    invoke-static {p1, v0, v1}, Lcom/google/a/b/ac;->a(Ljava/lang/Object;[Lcom/google/a/b/o;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/a/b/aa;->g:I

    return v0
.end method

.method k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/aa;->e:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
