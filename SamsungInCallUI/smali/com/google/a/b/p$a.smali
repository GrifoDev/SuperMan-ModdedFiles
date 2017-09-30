.class final Lcom/google/a/b/p$a;
.super Lcom/google/a/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/p",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/a/b/n;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/n",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient b:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/b/n;[Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/n",
            "<TK;TV;>;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/a/b/p;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/p$a;->a:Lcom/google/a/b/n;

    iput-object p2, p0, Lcom/google/a/b/p$a;->b:[Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method a()Lcom/google/a/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/n",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/p$a;->a:Lcom/google/a/b/n;

    return-object v0
.end method

.method public b()Lcom/google/a/b/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/aj",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/p$a;->c()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/z;

    iget-object v1, p0, Lcom/google/a/b/p$a;->b:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Lcom/google/a/b/z;-><init>(Lcom/google/a/b/k;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/p$a;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method
