.class public Lcom/a/a/d/d/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/f",
        "<",
        "Lcom/a/a/d/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/f",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/d/f;Lcom/a/a/d/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/f",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/e/d;->a:Lcom/a/a/d/f;

    iput-object p2, p0, Lcom/a/a/d/d/e/d;->b:Lcom/a/a/d/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/a/a/d/d/e/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/a/a/d/d/e/d;->a:Lcom/a/a/d/f;

    invoke-interface {v1}, Lcom/a/a/d/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/e/d;->b:Lcom/a/a/d/f;

    invoke-interface {v1}, Lcom/a/a/d/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/e/d;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/a/a/d/d/e/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/a/a/d/b/l;Ljava/io/OutputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/e/a;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->b()Lcom/a/a/d/b/l;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/a/a/d/d/e/d;->a:Lcom/a/a/d/f;

    invoke-interface {v0, v1, p2}, Lcom/a/a/d/f;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/d/d/e/d;->b:Lcom/a/a/d/f;

    invoke-virtual {v0}, Lcom/a/a/d/d/e/a;->c()Lcom/a/a/d/b/l;

    move-result-object v0

    invoke-interface {v1, v0, p2}, Lcom/a/a/d/f;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    check-cast p1, Lcom/a/a/d/b/l;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/e/d;->a(Lcom/a/a/d/b/l;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
