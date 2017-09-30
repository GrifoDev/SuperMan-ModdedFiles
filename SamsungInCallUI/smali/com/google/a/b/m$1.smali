.class Lcom/google/a/b/m$1;
.super Lcom/google/a/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/a/b/m;->a(I)Lcom/google/a/b/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/b/m;


# direct methods
.method constructor <init>(Lcom/google/a/b/m;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/b/m$1;->a:Lcom/google/a/b/m;

    invoke-direct {p0, p2, p3}, Lcom/google/a/b/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/m$1;->a:Lcom/google/a/b/m;

    invoke-virtual {v0, p1}, Lcom/google/a/b/m;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
