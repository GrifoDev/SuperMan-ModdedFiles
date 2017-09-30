.class public abstract Lcom/google/a/b/j;
.super Lcom/google/a/b/n;

# interfaces
.implements Lcom/google/a/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/n",
        "<TK;TV;>;",
        "Lcom/google/a/b/c",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/a/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/b/j",
            "<TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/aa;->b:Lcom/google/a/b/aa;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/google/a/b/j",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/af;

    invoke-direct {v0, p0, p1}, Lcom/google/a/b/af;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/a/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/j",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public c()Lcom/google/a/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/s",
            "<TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/a/b/j;->b()Lcom/google/a/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/j;->h()Lcom/google/a/b/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/google/a/b/k;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/j;->c()Lcom/google/a/b/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/j;->c()Lcom/google/a/b/s;

    move-result-object v0

    return-object v0
.end method
