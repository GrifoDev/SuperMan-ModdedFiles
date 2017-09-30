.class public Lcom/a/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Integer;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/io/OutputStream;

.field private i:Landroid/graphics/Bitmap;

.field private j:[B

.field private k:[B

.field private l:I

.field private m:[B

.field private n:[Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    iput v2, p0, Lcom/a/a/c/a;->e:I

    iput v1, p0, Lcom/a/a/c/a;->f:I

    iput-boolean v1, p0, Lcom/a/a/c/a;->g:Z

    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/a/a/c/a;->n:[Z

    const/4 v0, 0x7

    iput v0, p0, Lcom/a/a/c/a;->o:I

    iput v2, p0, Lcom/a/a/c/a;->p:I

    iput-boolean v1, p0, Lcom/a/a/c/a;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/c/a;->r:Z

    iput-boolean v1, p0, Lcom/a/a/c/a;->s:Z

    const/16 v0, 0xa

    iput v0, p0, Lcom/a/a/c/a;->t:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(I)I
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/a/c/a;->m:[B

    if-nez v1, :cond_1

    const/4 v3, -0x1

    :cond_0
    return v3

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/high16 v1, 0x1000000

    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    array-length v7, v2

    move v3, v0

    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    sub-int v0, v4, v0

    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0xff

    sub-int v2, v5, v2

    iget-object v8, p0, Lcom/a/a/c/a;->m:[B

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    sub-int v8, v6, v8

    mul-int/2addr v0, v0

    mul-int/2addr v2, v2

    add-int/2addr v0, v2

    mul-int v2, v8, v8

    add-int/2addr v0, v2

    div-int/lit8 v2, v9, 0x3

    iget-object v8, p0, Lcom/a/a/c/a;->n:[Z

    aget-boolean v8, v8, v2

    if-eqz v8, :cond_2

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v3, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method private b()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/c/a;->j:[B

    array-length v0, v0

    div-int/lit8 v3, v0, 0x3

    new-array v2, v3, [B

    iput-object v2, p0, Lcom/a/a/c/a;->k:[B

    new-instance v4, Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/a;->j:[B

    iget v5, p0, Lcom/a/a/c/a;->t:I

    invoke-direct {v4, v2, v0, v5}, Lcom/a/a/c/c;-><init>([BII)V

    invoke-virtual {v4}, Lcom/a/a/c/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/a;->m:[B

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    aget-byte v2, v2, v0

    iget-object v5, p0, Lcom/a/a/c/a;->m:[B

    iget-object v6, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v0

    iget-object v5, p0, Lcom/a/a/c/a;->m:[B

    add-int/lit8 v6, v0, 0x2

    aput-byte v2, v5, v6

    iget-object v2, p0, Lcom/a/a/c/a;->n:[Z

    div-int/lit8 v5, v0, 0x3

    aput-boolean v1, v2, v5

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v5, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v5, v2

    and-int/lit16 v5, v2, 0xff

    iget-object v2, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v2, v2, v6

    and-int/lit16 v6, v2, 0xff

    iget-object v8, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v2, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v5, v6, v7}, Lcom/a/a/c/c;->a(III)I

    move-result v5

    iget-object v6, p0, Lcom/a/a/c/a;->n:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    iget-object v6, p0, Lcom/a/a/c/a;->k:[B

    int-to-byte v5, v5

    aput-byte v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/a;->j:[B

    const/16 v0, 0x8

    iput v0, p0, Lcom/a/a/c/a;->l:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/a/a/c/a;->o:I

    iget-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/a;->d:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/a/a/c/a;->u:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/a/a/c/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/a;->d:I

    goto :goto_2
.end method

.method private c()V
    .locals 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget v0, p0, Lcom/a/a/c/a;->a:I

    if-ne v3, v0, :cond_0

    iget v0, p0, Lcom/a/a/c/a;->b:I

    if-eq v7, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/a/a/c/a;->a:I

    iget v1, p0, Lcom/a/a/c/a;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    :cond_1
    mul-int v0, v3, v7

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/a/a/c/a;->j:[B

    iput-boolean v2, p0, Lcom/a/a/c/a;->u:Z

    array-length v5, v1

    move v3, v2

    move v0, v2

    move v4, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget v6, v1, v3

    if-nez v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v7, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v6, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    iget-object v4, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    iget-object v8, p0, Lcom/a/a/c/a;->j:[B

    add-int/lit8 v4, v7, 0x1

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v8, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    array-length v0, v1

    int-to-double v0, v0

    div-double v0, v4, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v3, v0, v4

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/a/a/c/a;->u:Z

    const-string v2, "AnimatedGifEncoder"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AnimatedGifEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got pixels for frame with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% transparent pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v2, 0xf9

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->c:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/a/a/c/a;->u:Z

    if-nez v0, :cond_1

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/a/a/c/a;->p:I

    if-ltz v3, :cond_0

    iget v0, p0, Lcom/a/a/c/a;->p:I

    and-int/lit8 v0, v0, 0x7

    :cond_0
    shl-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/c/a;->f:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->c(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget v2, p0, Lcom/a/a/c/a;->d:I

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    invoke-direct {p0, v2}, Lcom/a/a/c/a;->c(I)V

    invoke-direct {p0, v2}, Lcom/a/a/c/a;->c(I)V

    iget v0, p0, Lcom/a/a/c/a;->a:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->c(I)V

    iget v0, p0, Lcom/a/a/c/a;->b:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->c(I)V

    iget-boolean v0, p0, Lcom/a/a/c/a;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lcom/a/a/c/a;->o:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/a/a/c/a;->a:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->c(I)V

    iget v0, p0, Lcom/a/a/c/a;->b:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->c(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget v1, p0, Lcom/a/a/c/a;->o:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/a/a/c/a;->e:I

    invoke-direct {p0, v0}, Lcom/a/a/c/a;->c(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/a/a/c/a;->m:[B

    iget-object v3, p0, Lcom/a/a/c/a;->m:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/a/a/c/a;->m:[B

    array-length v0, v0

    rsub-int v2, v0, 0x300

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    new-instance v0, Lcom/a/a/c/b;

    iget v1, p0, Lcom/a/a/c/a;->a:I

    iget v2, p0, Lcom/a/a/c/a;->b:I

    iget-object v3, p0, Lcom/a/a/c/a;->k:[B

    iget v4, p0, Lcom/a/a/c/a;->l:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/b;-><init>(II[BI)V

    iget-object v1, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/a/a/c/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/a/a/c/a;->f:I

    return-void
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/a/a/c/a;->r:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/a/a/c/a;->a:I

    iput p2, p0, Lcom/a/a/c/a;->b:I

    iget v0, p0, Lcom/a/a/c/a;->a:I

    if-ge v0, v1, :cond_1

    const/16 v0, 0x140

    iput v0, p0, Lcom/a/a/c/a;->a:I

    :cond_1
    iget v0, p0, Lcom/a/a/c/a;->b:I

    if-ge v0, v1, :cond_2

    const/16 v0, 0xf0

    iput v0, p0, Lcom/a/a/c/a;->b:I

    :cond_2
    iput-boolean v1, p0, Lcom/a/a/c/a;->s:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/a/a/c/a;->g:Z

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-boolean v0, p0, Lcom/a/a/c/a;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    :goto_1
    iput v2, p0, Lcom/a/a/c/a;->d:I

    iput-object v4, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    iput-object v4, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/a/a/c/a;->j:[B

    iput-object v4, p0, Lcom/a/a/c/a;->k:[B

    iput-object v4, p0, Lcom/a/a/c/a;->m:[B

    iput-boolean v2, p0, Lcom/a/a/c/a;->q:Z

    iput-boolean v1, p0, Lcom/a/a/c/a;->r:Z

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Lcom/a/a/c/a;->s:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/a/a/c/a;->a(II)V

    :cond_2
    iput-object p1, p0, Lcom/a/a/c/a;->i:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/a/a/c/a;->c()V

    invoke-direct {p0}, Lcom/a/a/c/a;->b()V

    iget-boolean v2, p0, Lcom/a/a/c/a;->r:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/a/a/c/a;->f()V

    invoke-direct {p0}, Lcom/a/a/c/a;->h()V

    iget v2, p0, Lcom/a/a/c/a;->e:I

    if-ltz v2, :cond_3

    invoke-direct {p0}, Lcom/a/a/c/a;->g()V

    :cond_3
    invoke-direct {p0}, Lcom/a/a/c/a;->d()V

    invoke-direct {p0}, Lcom/a/a/c/a;->e()V

    iget-boolean v2, p0, Lcom/a/a/c/a;->r:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/a/a/c/a;->h()V

    :cond_4
    invoke-direct {p0}, Lcom/a/a/c/a;->i()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/a/a/c/a;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/a/a/c/a;->q:Z

    iput-object p1, p0, Lcom/a/a/c/a;->h:Ljava/io/OutputStream;

    :try_start_0
    const-string v2, "GIF89a"

    invoke-direct {p0, v2}, Lcom/a/a/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v0, p0, Lcom/a/a/c/a;->g:Z

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
