.class public Lcom/a/a/d/d/e/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/e",
        "<",
        "Ljava/io/InputStream;",
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
            "Lcom/a/a/d/c/g;",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/a/d/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/e",
            "<",
            "Lcom/a/a/d/c/g;",
            "Lcom/a/a/d/d/e/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/e/e;->a:Lcom/a/a/d/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/a/a/d/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/e/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/e/e;->a:Lcom/a/a/d/e;

    new-instance v1, Lcom/a/a/d/c/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/a/a/d/c/g;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/a/a/d/e;->a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/e/e;->a(Ljava/io/InputStream;II)Lcom/a/a/d/b/l;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/d/d/e/e;->a:Lcom/a/a/d/e;

    invoke-interface {v0}, Lcom/a/a/d/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
