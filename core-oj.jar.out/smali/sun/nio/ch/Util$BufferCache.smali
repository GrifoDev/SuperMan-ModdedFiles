.class Lsun/nio/ch/Util$BufferCache;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferCache"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private buffers:[Ljava/nio/ByteBuffer;

.field private count:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/Util$BufferCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method private next(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method get(I)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    iget-object v2, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, p1, :cond_5

    const/4 v1, 0x0

    iget v3, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    :cond_1
    invoke-direct {p0, v3}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v3

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    if-eq v3, v4, :cond_2

    aget-object v0, v2, v3

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    return-object v5

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lt v4, p1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    :cond_5
    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object v5, v2, v4

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v4}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v4

    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v1
.end method

.method isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method offerFirst(Ljava/nio/ByteBuffer;)Z
    .locals 2

    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget-object v0, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aput-object p1, v0, v1

    iget v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    const/4 v0, 0x1

    return v0
.end method

.method offerLast(Ljava/nio/ByteBuffer;)Z
    .locals 3

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/2addr v1, v2

    invoke-static {}, Lsun/nio/ch/Util;->-get0()I

    move-result v2

    rem-int v0, v1, v2

    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    aput-object p1, v1, v0

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    const/4 v1, 0x1

    return v1
.end method

.method removeFirst()Ljava/nio/ByteBuffer;
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lsun/nio/ch/Util$BufferCache;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    aget-object v0, v1, v2

    iget-object v1, p0, Lsun/nio/ch/Util$BufferCache;->buffers:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    invoke-direct {p0, v1}, Lsun/nio/ch/Util$BufferCache;->next(I)I

    move-result v1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->start:I

    iget v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lsun/nio/ch/Util$BufferCache;->count:I

    return-object v0
.end method
