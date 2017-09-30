.class public Lcom/a/a/d/d/a/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/a/l$c;,
        Lcom/a/a/d/d/a/l$b;,
        Lcom/a/a/d/d/a/l$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[I


# instance fields
.field private final c:Lcom/a/a/d/d/a/l$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/d/d/a/l;->b:[I

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    const-string v1, "Exif\u0000\u0000"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/a/a/d/d/a/l;->a:[B

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/d/a/l$c;

    invoke-direct {v0, p1}, Lcom/a/a/d/d/a/l$c;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    return-void
.end method

.method private static a(II)I
    .locals 2

    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/a/a/d/d/a/l$b;)I
    .locals 11

    const/4 v10, 0x3

    const-string v0, "Exif\u0000\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/a/a/d/d/a/l$b;->b(I)S

    move-result v0

    const/16 v2, 0x4d4d

    if-ne v0, v2, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/a/a/d/d/a/l$b;->a(Ljava/nio/ByteOrder;)V

    add-int/lit8 v0, v1, 0x4

    invoke-virtual {p0, v0}, Lcom/a/a/d/d/a/l$b;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/a/a/d/d/a/l$b;->b(I)S

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_e

    invoke-static {v1, v0}, Lcom/a/a/d/d/a/l;->a(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/a/a/d/d/a/l$b;->b(I)S

    move-result v4

    const/16 v5, 0x112

    if-eq v4, v5, :cond_4

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x4949

    if-ne v0, v2, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_2
    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown endianness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Lcom/a/a/d/d/a/l$b;->b(I)S

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    const/16 v6, 0xc

    if-le v5, v6, :cond_6

    :cond_5
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got invalid format code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, v6}, Lcom/a/a/d/d/a/l$b;->a(I)I

    move-result v6

    if-gez v6, :cond_7

    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    const-string v4, "Negative tiff component count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v7, "ImageHeaderParser"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "ImageHeaderParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got tagIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tagType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " formatCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " componentCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v7, Lcom/a/a/d/d/a/l;->b:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    const/4 v7, 0x4

    if-le v6, v7, :cond_9

    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x8

    if-ltz v3, :cond_a

    invoke-virtual {p0}, Lcom/a/a/d/d/a/l$b;->a()I

    move-result v5

    if-le v3, v5, :cond_b

    :cond_a
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal tagValueOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " tagType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    if-ltz v6, :cond_c

    add-int v5, v3, v6

    invoke-virtual {p0}, Lcom/a/a/d/d/a/l$b;->a()I

    move-result v6

    if-le v5, v6, :cond_d

    :cond_c
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0, v3}, Lcom/a/a/d/d/a/l$b;->b(I)S

    move-result v0

    :goto_3
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private static a(I)Z
    .locals 2

    const v1, 0xffd8

    and-int v0, p0, v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()[B
    .locals 9

    const/4 v8, 0x3

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v1}, Lcom/a/a/d/d/a/l$c;->b()S

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v1}, Lcom/a/a/d/d/a/l$c;->b()S

    move-result v2

    const/16 v1, 0xda

    if-eq v2, v1, :cond_1

    const/16 v1, 0xd9

    if-ne v2, v1, :cond_3

    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImageHeaderParser"

    const-string v2, "Found MARKER_EOI in exif segment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v1}, Lcom/a/a/d/d/a/l$c;->a()I

    move-result v1

    add-int/lit8 v3, v1, -0x2

    const/16 v1, 0xe1

    if-eq v2, v1, :cond_4

    iget-object v1, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Lcom/a/a/d/d/a/l$c;->a(J)J

    move-result-wide v4

    int-to-long v6, v3

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to skip enough data, type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", wanted to skip: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but actually skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-array v1, v3, [B

    iget-object v4, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v4, v1}, Lcom/a/a/d/d/a/l$c;->a([B)I

    move-result v4

    if-eq v4, v3, :cond_5

    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read segment data, type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", length: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", actually read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/d/d/a/l;->b()Lcom/a/a/d/d/a/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/d/d/a/l$a;->a()Z

    move-result v0

    return v0
.end method

.method public b()Lcom/a/a/d/d/a/l$a;
    .locals 4

    iget-object v0, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/l$c;->a()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/a/a/d/d/a/l$a;->b:Lcom/a/a/d/d/a/l$a;

    :goto_0
    return-object v0

    :cond_0
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v1}, Lcom/a/a/d/d/a/l$c;->a()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    const-wide/16 v2, 0x15

    invoke-virtual {v0, v2, v3}, Lcom/a/a/d/d/a/l$c;->a(J)J

    iget-object v0, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/l$c;->c()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/a/a/d/d/a/l$a;->c:Lcom/a/a/d/d/a/l$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/a/a/d/d/a/l$a;->d:Lcom/a/a/d/d/a/l$a;

    goto :goto_0

    :cond_2
    shr-int/lit8 v0, v0, 0x8

    const v1, 0x474946

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/a/a/d/d/a/l$a;->a:Lcom/a/a/d/d/a/l$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/a/a/d/d/a/l$a;->e:Lcom/a/a/d/d/a/l$a;

    goto :goto_0
.end method

.method public c()I
    .locals 7

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/a/d/d/a/l;->c:Lcom/a/a/d/d/a/l$c;

    invoke-virtual {v0}, Lcom/a/a/d/d/a/l$c;->a()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/d/d/a/l;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/d/d/a/l;->d()[B

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v0, v4

    sget-object v3, Lcom/a/a/d/d/a/l;->a:[B

    array-length v3, v3

    if-le v0, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    move v0, v1

    :goto_2
    sget-object v5, Lcom/a/a/d/d/a/l;->a:[B

    array-length v5, v5

    if-ge v0, v5, :cond_4

    aget-byte v5, v4, v0

    sget-object v6, Lcom/a/a/d/d/a/l;->a:[B

    aget-byte v6, v6, v0

    if-eq v5, v6, :cond_2

    :goto_3
    if-eqz v1, :cond_3

    new-instance v0, Lcom/a/a/d/d/a/l$b;

    invoke-direct {v0, v4}, Lcom/a/a/d/d/a/l$b;-><init>([B)V

    invoke-static {v0}, Lcom/a/a/d/d/a/l;->a(Lcom/a/a/d/d/a/l$b;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_3
.end method
