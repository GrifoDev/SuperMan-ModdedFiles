.class public Lcom/a/a/d/d/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/g/b",
        "<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/d/d/a/h;

.field private final c:Lcom/a/a/d/d/a/b;

.field private final d:Lcom/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/d/c/c;

    new-instance v1, Lcom/a/a/d/d/a/q;

    invoke-direct {v1, p1, p2}, Lcom/a/a/d/d/a/q;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    invoke-direct {v0, v1}, Lcom/a/a/d/d/c/c;-><init>(Lcom/a/a/d/e;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/g;->a:Lcom/a/a/d/e;

    new-instance v0, Lcom/a/a/d/d/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/d/a/h;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/a;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/g;->b:Lcom/a/a/d/d/a/h;

    new-instance v0, Lcom/a/a/d/d/a/b;

    invoke-direct {v0}, Lcom/a/a/d/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/a/g;->c:Lcom/a/a/d/d/a/b;

    invoke-static {}, Lcom/a/a/d/d/a;->b()Lcom/a/a/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/a/g;->d:Lcom/a/a/d/b;

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

    iget-object v0, p0, Lcom/a/a/d/d/a/g;->a:Lcom/a/a/d/e;

    return-object v0
.end method

.method public b()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/g;->b:Lcom/a/a/d/d/a/h;

    return-object v0
.end method

.method public c()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/a/g;->d:Lcom/a/a/d/b;

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

    iget-object v0, p0, Lcom/a/a/d/d/a/g;->c:Lcom/a/a/d/d/a/b;

    return-object v0
.end method
