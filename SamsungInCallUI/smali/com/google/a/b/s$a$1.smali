.class Lcom/google/a/b/s$a$1;
.super Lcom/google/a/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/s$a;->d()Lcom/google/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/i",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/s$a;


# direct methods
.method constructor <init>(Lcom/google/a/b/s$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/s$a$1;->a:Lcom/google/a/b/s$a;

    invoke-direct {p0}, Lcom/google/a/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic a()Lcom/google/a/b/k;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/s$a$1;->g()Lcom/google/a/b/s$a;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/google/a/b/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/s$a",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/s$a$1;->a:Lcom/google/a/b/s$a;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/s$a$1;->a:Lcom/google/a/b/s$a;

    invoke-virtual {v0, p1}, Lcom/google/a/b/s$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
