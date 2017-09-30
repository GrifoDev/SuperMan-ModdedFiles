.class Lcom/a/a/d/b/a/a$b;
.super Lcom/a/a/d/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/d/b/a/b",
        "<",
        "Lcom/a/a/d/b/a/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/d/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/a/a/d/b/a/a$a;
    .locals 1

    new-instance v0, Lcom/a/a/d/b/a/a$a;

    invoke-direct {v0, p0}, Lcom/a/a/d/b/a/a$a;-><init>(Lcom/a/a/d/b/a/a$b;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/a/a/d/b/a/a$a;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/d/b/a/a$b;->c()Lcom/a/a/d/b/a/h;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/b/a/a$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/d/b/a/a$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method protected synthetic b()Lcom/a/a/d/b/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/d/b/a/a$b;->a()Lcom/a/a/d/b/a/a$a;

    move-result-object v0

    return-object v0
.end method
