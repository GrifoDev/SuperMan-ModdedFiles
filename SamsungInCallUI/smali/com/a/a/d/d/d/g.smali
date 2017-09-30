.class Lcom/a/a/d/d/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/d/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/c/l",
        "<",
        "Lcom/a/a/b/a;",
        "Lcom/a/a/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/a;II)Lcom/a/a/d/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/a;",
            "II)",
            "Lcom/a/a/d/a/c",
            "<",
            "Lcom/a/a/b/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/d/d/d/g$a;

    invoke-direct {v0, p1}, Lcom/a/a/d/d/d/g$a;-><init>(Lcom/a/a/b/a;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;
    .locals 1

    check-cast p1, Lcom/a/a/b/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/d/g;->a(Lcom/a/a/b/a;II)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
