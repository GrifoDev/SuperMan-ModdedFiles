.class public Lcom/a/a/d/d/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/d/i$b;,
        Lcom/a/a/d/d/d/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/d/e",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/a/a/d/d/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/d/i$b;

.field private static final b:Lcom/a/a/d/d/d/i$a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/a/a/d/d/d/i$b;

.field private final e:Lcom/a/a/d/b/a/c;

.field private final f:Lcom/a/a/d/d/d/i$a;

.field private final g:Lcom/a/a/d/d/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/d/i$b;

    invoke-direct {v0}, Lcom/a/a/d/d/d/i$b;-><init>()V

    sput-object v0, Lcom/a/a/d/d/d/i;->a:Lcom/a/a/d/d/d/i$b;

    new-instance v0, Lcom/a/a/d/d/d/i$a;

    invoke-direct {v0}, Lcom/a/a/d/d/d/i$a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/d/i;->b:Lcom/a/a/d/d/d/i$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/a/a/d/b/a/c;)V
    .locals 2

    sget-object v0, Lcom/a/a/d/d/d/i;->a:Lcom/a/a/d/d/d/i$b;

    sget-object v1, Lcom/a/a/d/d/d/i;->b:Lcom/a/a/d/d/d/i$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/a/a/d/d/d/i;-><init>(Landroid/content/Context;Lcom/a/a/d/b/a/c;Lcom/a/a/d/d/d/i$b;Lcom/a/a/d/d/d/i$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/a/a/d/b/a/c;Lcom/a/a/d/d/d/i$b;Lcom/a/a/d/d/d/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/d/d/d/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/a/a/d/d/d/i;->e:Lcom/a/a/d/b/a/c;

    iput-object p4, p0, Lcom/a/a/d/d/d/i;->f:Lcom/a/a/d/d/d/i$a;

    new-instance v0, Lcom/a/a/d/d/d/a;

    invoke-direct {v0, p2}, Lcom/a/a/d/d/d/a;-><init>(Lcom/a/a/d/b/a/c;)V

    iput-object v0, p0, Lcom/a/a/d/d/d/i;->g:Lcom/a/a/d/d/d/a;

    iput-object p3, p0, Lcom/a/a/d/d/d/i;->d:Lcom/a/a/d/d/d/i$b;

    return-void
.end method

.method private a(Lcom/a/a/b/a;Lcom/a/a/b/c;[B)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lcom/a/a/b/a;->a(Lcom/a/a/b/c;[B)V

    invoke-virtual {p1}, Lcom/a/a/b/a;->a()V

    invoke-virtual {p1}, Lcom/a/a/b/a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a([BIILcom/a/a/b/d;Lcom/a/a/b/a;)Lcom/a/a/d/d/d/d;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p4}, Lcom/a/a/b/d;->b()Lcom/a/a/b/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/b/c;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v7}, Lcom/a/a/b/c;->b()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p5, v7, p1}, Lcom/a/a/d/d/d/i;->a(Lcom/a/a/b/a;Lcom/a/a/b/c;[B)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/a/a/d/d/d;->b()Lcom/a/a/d/d/d;

    move-result-object v4

    new-instance v0, Lcom/a/a/d/d/d/b;

    iget-object v1, p0, Lcom/a/a/d/d/d/i;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/a/a/d/d/d/i;->g:Lcom/a/a/d/d/d/a;

    iget-object v3, p0, Lcom/a/a/d/d/d/i;->e:Lcom/a/a/d/b/a/c;

    move v5, p2

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/a/a/d/d/d/b;-><init>(Landroid/content/Context;Lcom/a/a/b/a$a;Lcom/a/a/d/b/a/c;Lcom/a/a/d/g;IILcom/a/a/b/c;[BLandroid/graphics/Bitmap;)V

    new-instance v1, Lcom/a/a/d/d/d/d;

    invoke-direct {v1, v0}, Lcom/a/a/d/d/d/d;-><init>(Lcom/a/a/d/d/d/b;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v0, 0x4000

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x4000

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GifResourceDecoder"

    const-string v3, "Error reading data from stream"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/a/a/d/b/l;
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/a/a/d/d/d/i;->a(Ljava/io/InputStream;II)Lcom/a/a/d/d/d/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/InputStream;II)Lcom/a/a/d/d/d/d;
    .locals 6

    invoke-static {p1}, Lcom/a/a/d/d/d/i;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/d/d/d/i;->d:Lcom/a/a/d/d/d/i$b;

    invoke-virtual {v0, v1}, Lcom/a/a/d/d/d/i$b;->a([B)Lcom/a/a/b/d;

    move-result-object v4

    iget-object v0, p0, Lcom/a/a/d/d/d/i;->f:Lcom/a/a/d/d/d/i$a;

    iget-object v2, p0, Lcom/a/a/d/d/d/i;->g:Lcom/a/a/d/d/d/a;

    invoke-virtual {v0, v2}, Lcom/a/a/d/d/d/i$a;->a(Lcom/a/a/b/a$a;)Lcom/a/a/b/a;

    move-result-object v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/a/a/d/d/d/i;->a([BIILcom/a/a/b/d;Lcom/a/a/b/a;)Lcom/a/a/d/d/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/d/d/d/i;->d:Lcom/a/a/d/d/d/i$b;

    invoke-virtual {v1, v4}, Lcom/a/a/d/d/d/i$b;->a(Lcom/a/a/b/d;)V

    iget-object v1, p0, Lcom/a/a/d/d/d/i;->f:Lcom/a/a/d/d/d/i$a;

    invoke-virtual {v1, v5}, Lcom/a/a/d/d/d/i$a;->a(Lcom/a/a/b/a;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/a/a/d/d/d/i;->d:Lcom/a/a/d/d/d/i$b;

    invoke-virtual {v1, v4}, Lcom/a/a/d/d/d/i$b;->a(Lcom/a/a/b/d;)V

    iget-object v1, p0, Lcom/a/a/d/d/d/i;->f:Lcom/a/a/d/d/d/i$a;

    invoke-virtual {v1, v5}, Lcom/a/a/d/d/d/i$a;->a(Lcom/a/a/b/a;)V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
