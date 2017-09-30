.class public Lcom/a/a/d/d/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/g/b",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/d/a/q;

.field private final b:Lcom/a/a/d/d/a/b;

.field private final c:Lcom/a/a/d/c/o;

.field private final d:Lcom/a/a/d/d/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/c/c",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/c/o;

    invoke-direct {v0}, Lcom/a/a/d/c/o;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/a/p;->c:Lcom/a/a/d/c/o;

    new-instance v0, Lcom/a/a/d/d/a/q;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/d/a/q;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/p;->a:Lcom/a/a/d/d/a/q;

    new-instance v0, Lcom/a/a/d/d/a/b;

    invoke-direct {v0}, Lcom/a/a/d/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/a/p;->b:Lcom/a/a/d/d/a/b;

    new-instance v0, Lcom/a/a/d/d/c/c;

    iget-object v1, p0, Lcom/a/a/d/d/a/p;->a:Lcom/a/a/d/d/a/q;

    invoke-direct {v0, v1}, Lcom/a/a/d/d/c/c;-><init>(Lcom/a/a/d/e;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/p;->d:Lcom/a/a/d/d/c/c;

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

    iget-object v0, p0, Lcom/a/a/d/d/a/p;->d:Lcom/a/a/d/d/c/c;

    return-object v0
.end method

.method public b()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/p;->a:Lcom/a/a/d/d/a/q;

    return-object v0
.end method

.method public c()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/p;->c:Lcom/a/a/d/c/o;

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

    iget-object v0, p0, Lcom/a/a/d/d/a/p;->b:Lcom/a/a/d/d/a/b;

    return-object v0
.end method
