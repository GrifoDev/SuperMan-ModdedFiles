.class public Lcom/a/a/d/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/l",
        "<",
        "Ljava/net/URL;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<",
            "Lcom/a/a/d/c/d;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/c/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/l",
            "<",
            "Lcom/a/a/d/c/d;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/c/r;->a:Lcom/a/a/d/c/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;
    .locals 1

    check-cast p1, Ljava/net/URL;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/c/r;->a(Ljava/net/URL;II)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URL;II)Lcom/a/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "II)",
            "Lcom/a/a/d/a/c",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/c/r;->a:Lcom/a/a/d/c/l;

    new-instance v1, Lcom/a/a/d/c/d;

    invoke-direct {v1, p1}, Lcom/a/a/d/c/d;-><init>(Ljava/net/URL;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/a/a/d/c/l;->a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
