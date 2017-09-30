.class abstract Lcom/google/a/b/s$a;
.super Lcom/google/a/b/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/b/s",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/a/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
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

    invoke-virtual {p0}, Lcom/google/a/b/s$a;->c()Lcom/google/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/b/m;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/m",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/a/b/s$a$1;

    invoke-direct {v0, p0}, Lcom/google/a/b/s$a$1;-><init>(Lcom/google/a/b/s$a;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/a/b/s$a;->b()Lcom/google/a/b/aj;

    move-result-object v0

    return-object v0
.end method
