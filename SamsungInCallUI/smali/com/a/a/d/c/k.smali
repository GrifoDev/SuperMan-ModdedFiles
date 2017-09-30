.class public Lcom/a/a/d/c/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/c/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/j/e",
            "<",
            "Lcom/a/a/d/c/k$a",
            "<TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Lcom/a/a/d/c/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/c/k$1;

    invoke-direct {v0, p0, p1}, Lcom/a/a/d/c/k$1;-><init>(Lcom/a/a/d/c/k;I)V

    iput-object v0, p0, Lcom/a/a/d/c/k;->a:Lcom/a/a/j/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/a/a/d/c/k$a;->a(Ljava/lang/Object;II)Lcom/a/a/d/c/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/c/k;->a:Lcom/a/a/j/e;

    invoke-virtual {v1, v0}, Lcom/a/a/j/e;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/d/c/k$a;->a()V

    return-object v1
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/a/a/d/c/k$a;->a(Ljava/lang/Object;II)Lcom/a/a/d/c/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/c/k;->a:Lcom/a/a/j/e;

    invoke-virtual {v1, v0, p4}, Lcom/a/a/j/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
