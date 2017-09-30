.class public Lcom/a/a/f;
.super Lcom/a/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/e",
        "<TModelType;>;"
    }
.end annotation


# instance fields
.field private final g:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/a/a/j$c;


# direct methods
.method constructor <init>(Lcom/a/a/c;Lcom/a/a/d/c/l;Lcom/a/a/j$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c",
            "<TModelType;***>;",
            "Lcom/a/a/d/c/l",
            "<TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/a/a/j$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/a/a/c;->c:Lcom/a/a/g;

    const-class v1, Lcom/a/a/d/d/d/b;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/a/a/f;->a(Lcom/a/a/g;Lcom/a/a/d/c/l;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)Lcom/a/a/g/e;

    move-result-object v0

    const-class v1, Lcom/a/a/d/d/d/b;

    invoke-direct {p0, v0, v1, p1}, Lcom/a/a/e;-><init>(Lcom/a/a/g/f;Ljava/lang/Class;Lcom/a/a/c;)V

    iput-object p2, p0, Lcom/a/a/f;->g:Lcom/a/a/d/c/l;

    iput-object p3, p0, Lcom/a/a/f;->h:Lcom/a/a/j$c;

    invoke-virtual {p0}, Lcom/a/a/f;->c()Lcom/a/a/e;

    return-void
.end method

.method private static a(Lcom/a/a/g;Lcom/a/a/d/c/l;Ljava/lang/Class;Lcom/a/a/d/d/f/c;)Lcom/a/a/g/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/g;",
            "Lcom/a/a/d/c/l",
            "<TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/a/a/d/d/f/c",
            "<",
            "Lcom/a/a/d/d/d/b;",
            "TR;>;)",
            "Lcom/a/a/g/e",
            "<TA;",
            "Ljava/io/InputStream;",
            "Lcom/a/a/d/d/d/b;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p3, :cond_1

    const-class v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {p0, v0, p2}, Lcom/a/a/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/d/d/f/c;

    move-result-object p3

    :cond_1
    const-class v0, Ljava/io/InputStream;

    const-class v1, Lcom/a/a/d/d/d/b;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/a/a/g/b;

    move-result-object v1

    new-instance v0, Lcom/a/a/g/e;

    invoke-direct {v0, p1, p3, v1}, Lcom/a/a/g/e;-><init>(Lcom/a/a/d/c/l;Lcom/a/a/d/d/f/c;Lcom/a/a/g/b;)V

    goto :goto_0
.end method
