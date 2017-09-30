.class final Lcom/a/a/d/c/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/a/a/d/c/k$a",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/a/j/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/a/a/d/c/k$a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/a/a/d/c/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/a/a/d/c/k$a",
            "<TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/d/c/k$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/c/k$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/d/c/k$a;

    invoke-direct {v0}, Lcom/a/a/d/c/k$a;-><init>()V

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/d/c/k$a;->b(Ljava/lang/Object;II)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/d/c/k$a;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/a/a/d/c/k$a;->c:I

    iput p3, p0, Lcom/a/a/d/c/k$a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/a/a/d/c/k$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/a/a/d/c/k$a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/a/a/d/c/k$a;

    iget v1, p0, Lcom/a/a/d/c/k$a;->c:I

    iget v2, p1, Lcom/a/a/d/c/k$a;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/a/a/d/c/k$a;->b:I

    iget v2, p1, Lcom/a/a/d/c/k$a;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/a/a/d/c/k$a;->d:Ljava/lang/Object;

    iget-object v2, p1, Lcom/a/a/d/c/k$a;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/a/a/d/c/k$a;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/a/a/d/c/k$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/d/c/k$a;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
