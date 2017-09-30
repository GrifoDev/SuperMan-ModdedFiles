.class Lcom/a/a/d/c/k$1;
.super Lcom/a/a/j/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/d/c/k;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/j/e",
        "<",
        "Lcom/a/a/d/c/k$a",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/d/c/k;


# direct methods
.method constructor <init>(Lcom/a/a/d/c/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/d/c/k$1;->a:Lcom/a/a/d/c/k;

    invoke-direct {p0, p2}, Lcom/a/a/j/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/a/a/d/c/k$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/k$a",
            "<TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/a/a/d/c/k$a;->a()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/a/a/d/c/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/c/k$1;->a(Lcom/a/a/d/c/k$a;Ljava/lang/Object;)V

    return-void
.end method
