.class public Lcom/a/a/d/d/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/g/b",
        "<",
        "Lcom/a/a/d/c/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/a/m;

.field private final b:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/d/c/h;


# direct methods
.method public constructor <init>(Lcom/a/a/g/b;Lcom/a/a/g/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g/b",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/g/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/a/a/g/b;->d()Lcom/a/a/d/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/a/n;->c:Lcom/a/a/d/f;

    new-instance v0, Lcom/a/a/d/c/h;

    invoke-interface {p1}, Lcom/a/a/g/b;->c()Lcom/a/a/d/b;

    move-result-object v1

    invoke-interface {p2}, Lcom/a/a/g/b;->c()Lcom/a/a/d/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/c/h;-><init>(Lcom/a/a/d/b;Lcom/a/a/d/b;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/n;->d:Lcom/a/a/d/c/h;

    invoke-interface {p1}, Lcom/a/a/g/b;->a()Lcom/a/a/d/e;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/a/n;->b:Lcom/a/a/d/e;

    new-instance v0, Lcom/a/a/d/d/a/m;

    invoke-interface {p1}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/d/a/m;-><init>(Lcom/a/a/d/e;Lcom/a/a/d/e;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/n;->a:Lcom/a/a/d/d/a/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/n;->b:Lcom/a/a/d/e;

    return-object v0
.end method

.method public b()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/n;->a:Lcom/a/a/d/d/a/m;

    return-object v0
.end method

.method public c()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b",
            "<",
            "Lcom/a/a/d/c/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/n;->d:Lcom/a/a/d/c/h;

    return-object v0
.end method

.method public d()Lcom/a/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/n;->c:Lcom/a/a/d/f;

    return-object v0
.end method
