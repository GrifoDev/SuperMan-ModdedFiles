.class public Lcom/a/a/d/d/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/d/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/f",
        "<",
        "Lcom/a/a/d/d/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/d/j$a;


# instance fields
.field private final b:Lcom/a/a/b/a$a;

.field private final c:Lcom/a/a/d/b/a/c;

.field private final d:Lcom/a/a/d/d/d/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/d/j$a;

    invoke-direct {v0}, Lcom/a/a/d/d/d/j$a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/d/j;->a:Lcom/a/a/d/d/d/j$a;

    return-void
.end method

.method public constructor <init>(Lcom/a/a/d/b/a/c;)V
    .locals 1

    sget-object v0, Lcom/a/a/d/d/d/j;->a:Lcom/a/a/d/d/d/j$a;

    invoke-direct {p0, p1, v0}, Lcom/a/a/d/d/d/j;-><init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/d/d/j$a;)V

    return-void
.end method

.method constructor <init>(Lcom/a/a/d/b/a/c;Lcom/a/a/d/d/d/j$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/d/d/d/j;->c:Lcom/a/a/d/b/a/c;

    new-instance v0, Lcom/a/a/d/d/d/a;

    invoke-direct {v0, p1}, Lcom/a/a/d/d/d/a;-><init>(Lcom/a/a/d/b/a/c;)V

    iput-object v0, p0, Lcom/a/a/d/d/d/j;->b:Lcom/a/a/b/a$a;

    iput-object p2, p0, Lcom/a/a/d/d/d/j;->d:Lcom/a/a/d/d/d/j$a;

    return-void
.end method

.method private a([B)Lcom/a/a/b/a;
    .locals 3

    iget-object v0, p0, Lcom/a/a/d/d/d/j;->d:Lcom/a/a/d/d/d/j$a;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/j$a;->a()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/b/d;->a([B)Lcom/a/a/b/d;

    invoke-virtual {v0}, Lcom/a/a/b/d;->b()Lcom/a/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/d/j;->d:Lcom/a/a/d/d/d/j$a;

    iget-object v2, p0, Lcom/a/a/d/d/d/j;->b:Lcom/a/a/b/a$a;

    invoke-virtual {v1, v2}, Lcom/a/a/d/d/d/j$a;->a(Lcom/a/a/b/a$a;)Lcom/a/a/b/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/a/a/b/a;->a(Lcom/a/a/b/c;[B)V

    invoke-virtual {v1}, Lcom/a/a/b/a;->a()V

    return-object v1
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/a/a/d/g;Lcom/a/a/d/d/d/b;)Lcom/a/a/d/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/a/a/d/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/a/a/d/d/d/b;",
            ")",
            "Lcom/a/a/d/b/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/d/j;->d:Lcom/a/a/d/d/d/j$a;

    iget-object v1, p0, Lcom/a/a/d/d/d/j;->c:Lcom/a/a/d/b/a/c;

    invoke-virtual {v0, p1, v1}, Lcom/a/a/d/d/d/j$a;->a(Landroid/graphics/Bitmap;Lcom/a/a/d/b/a/c;)Lcom/a/a/d/b/l;

    move-result-object v0

    invoke-virtual {p3}, Lcom/a/a/d/d/d/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p3}, Lcom/a/a/d/d/d/b;->getIntrinsicHeight()I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/a/a/d/g;->a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/a/a/d/b/l;->d()V

    :cond_0
    return-object v1
.end method

.method private a([BLjava/io/OutputStream;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "GifEncoder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GifEncoder"

    const-string v2, "Failed to write data to output stream in GifResourceEncoder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/a/a/d/b/l;Ljava/io/OutputStream;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<",
            "Lcom/a/a/d/d/d/b;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/a/a/j/d;->a()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/d/d/d/b;

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->c()Lcom/a/a/d/g;

    move-result-object v6

    instance-of v1, v6, Lcom/a/a/d/d/d;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->d()[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/a/a/d/d/d/j;->a([BLjava/io/OutputStream;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->d()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/a/d/d/d/j;->a([B)Lcom/a/a/b/a;

    move-result-object v7

    iget-object v1, p0, Lcom/a/a/d/d/d/j;->d:Lcom/a/a/d/d/d/j$a;

    invoke-virtual {v1}, Lcom/a/a/d/d/d/j$a;->b()Lcom/a/a/c/a;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/a/a/c/a;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v7}, Lcom/a/a/b/a;->c()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v7}, Lcom/a/a/b/a;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v6, v0}, Lcom/a/a/d/d/d/j;->a(Landroid/graphics/Bitmap;Lcom/a/a/d/g;Lcom/a/a/d/d/d/b;)Lcom/a/a/d/b/l;

    move-result-object v9

    :try_start_0
    invoke-interface {v9}, Lcom/a/a/d/b/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1}, Lcom/a/a/c/a;->a(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v9}, Lcom/a/a/d/b/l;->d()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v7}, Lcom/a/a/b/a;->d()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/a/a/b/a;->a(I)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/a/a/c/a;->a(I)V

    invoke-virtual {v7}, Lcom/a/a/b/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v9}, Lcom/a/a/d/b/l;->d()V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Lcom/a/a/d/b/l;->d()V

    throw v0

    :cond_3
    invoke-virtual {v8}, Lcom/a/a/c/a;->a()Z

    move-result v3

    const-string v1, "GifEncoder"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GifEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encoded gif with "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/a/a/b/a;->c()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " frames and "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/d/d/d/b;->d()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4, v5}, Lcom/a/a/j/d;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    check-cast p1, Lcom/a/a/d/b/l;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/d/d/d/j;->a(Lcom/a/a/d/b/l;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
