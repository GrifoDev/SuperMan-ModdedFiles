.class public Lcom/a/a/d/c/b;
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
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<",
            "Landroid/net/Uri;",
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
            "Landroid/net/Uri;",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/c/b;->a:Lcom/a/a/d/c/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;II)Lcom/a/a/d/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/a/a/d/a/c",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/c/b;->a:Lcom/a/a/d/c/l;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/a/a/d/c/l;->a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/c/b;->a(Ljava/io/File;II)Lcom/a/a/d/a/c;

    move-result-object v0

    return-object v0
.end method
