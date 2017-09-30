.class public Lcom/a/a/d/d/e/g;
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
        "Lcom/a/a/d/d/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/d/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/f",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b",
            "<",
            "Lcom/a/a/d/c/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/g/b;Lcom/a/a/g/b;Lcom/a/a/d/b/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/g/b",
            "<",
            "Lcom/a/a/d/c/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/g/b",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            ">;",
            "Lcom/a/a/d/b/a/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/d/e/c;

    invoke-interface {p1}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/a/a/g/b;->b()Lcom/a/a/d/e;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/a/a/d/d/e/c;-><init>(Lcom/a/a/d/e;Lcom/a/a/d/e;Lcom/a/a/d/b/a/c;)V

    new-instance v1, Lcom/a/a/d/d/c/c;

    new-instance v2, Lcom/a/a/d/d/e/e;

    invoke-direct {v2, v0}, Lcom/a/a/d/d/e/e;-><init>(Lcom/a/a/d/e;)V

    invoke-direct {v1, v2}, Lcom/a/a/d/d/c/c;-><init>(Lcom/a/a/d/e;)V

    iput-object v1, p0, Lcom/a/a/d/d/e/g;->a:Lcom/a/a/d/e;

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/d/e;

    new-instance v0, Lcom/a/a/d/d/e/d;

    invoke-interface {p1}, Lcom/a/a/g/b;->d()Lcom/a/a/d/f;

    move-result-object v1

    invoke-interface {p2}, Lcom/a/a/g/b;->d()Lcom/a/a/d/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/a/a/d/d/e/d;-><init>(Lcom/a/a/d/f;Lcom/a/a/d/f;)V

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->c:Lcom/a/a/d/f;

    invoke-interface {p1}, Lcom/a/a/g/b;->c()Lcom/a/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/e/g;->d:Lcom/a/a/d/b;

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
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/e/g;->a:Lcom/a/a/d/e;

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
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/e/g;->b:Lcom/a/a/d/e;

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

    iget-object v0, p0, Lcom/a/a/d/d/e/g;->d:Lcom/a/a/d/b;

    return-object v0
.end method

.method public d()Lcom/a/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/f",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/e/g;->c:Lcom/a/a/d/f;

    return-object v0
.end method
