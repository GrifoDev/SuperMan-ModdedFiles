.class Lcom/google/a/b/z;
.super Lcom/google/a/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/i",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/b/k;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/k",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/m",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/b/k;Lcom/google/a/b/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/k",
            "<TE;>;",
            "Lcom/google/a/b/m",
            "<+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/i;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/z;->a:Lcom/google/a/b/k;

    iput-object p2, p0, Lcom/google/a/b/z;->b:Lcom/google/a/b/m;

    return-void
.end method

.method constructor <init>(Lcom/google/a/b/k;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/k",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/a/b/m;->a([Ljava/lang/Object;)Lcom/google/a/b/m;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/a/b/z;-><init>(Lcom/google/a/b/k;Lcom/google/a/b/m;)V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 1

    iget-object v0, p0, Lcom/google/a/b/z;->b:Lcom/google/a/b/m;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b/m;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/a/b/ak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/b/ak",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/z;->b:Lcom/google/a/b/m;

    invoke-virtual {v0, p1}, Lcom/google/a/b/m;->a(I)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method

.method a()Lcom/google/a/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/k",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/z;->a:Lcom/google/a/b/k;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/z;->b:Lcom/google/a/b/m;

    invoke-virtual {v0, p1}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/a/b/z;->a(I)Lcom/google/a/b/ak;

    move-result-object v0

    return-object v0
.end method
