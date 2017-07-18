.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# static fields
.field private static unused:B


# instance fields
.field private final fd:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method constructor <init>(IIIILjava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;-><init>(IIII)V

    iput-object p5, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method constructor <init>(IIII[BI)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private checkMapped()V
    .locals 1

    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private native force0(Ljava/io/FileDescriptor;JJ)V
.end method

.method private native isLoaded0(JJI)Z
.end method

.method private native load0(JJ)V
.end method

.method private mappingAddress(J)J
    .locals 3

    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private mappingLength(J)J
    .locals 3

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private mappingOffset()J
    .locals 8

    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v2

    iget-wide v4, p0, Ljava/nio/MappedByteBuffer;->address:J

    int-to-long v6, v2

    rem-long v0, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    int-to-long v4, v2

    add-long/2addr v0, v4

    goto :goto_0
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .locals 8

    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v6

    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->fd:Ljava/io/FileDescriptor;

    invoke-direct {p0, v6, v7}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v2

    invoke-direct {p0, v6, v7}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;->force0(Ljava/io/FileDescriptor;JJ)V

    :cond_0
    return-object p0
.end method

.method public final isLoaded()Z
    .locals 10

    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    iget-wide v0, p0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v4

    invoke-direct {p0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/nio/Bits;->pageCount(J)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljava/nio/MappedByteBuffer;->isLoaded0(JJI)Z

    move-result v0

    return v0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .locals 18

    invoke-direct/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->checkMapped()V

    move-object/from16 v0, p0

    iget-wide v14, v0, Ljava/nio/MappedByteBuffer;->address:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->capacity()I

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->mappingOffset()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingLength(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6, v7}, Ljava/nio/MappedByteBuffer;->load0(JJ)V

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v11

    invoke-static {}, Ljava/nio/Bits;->pageSize()I

    move-result v10

    invoke-static {v6, v7}, Ljava/nio/Bits;->pageCount(J)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/nio/MappedByteBuffer;->mappingAddress(J)J

    move-result-wide v2

    const/4 v12, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v11, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v13

    xor-int/2addr v13, v12

    int-to-byte v12, v13

    int-to-long v14, v10

    add-long/2addr v2, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-byte v13, Ljava/nio/MappedByteBuffer;->unused:B

    if-eqz v13, :cond_3

    sput-byte v12, Ljava/nio/MappedByteBuffer;->unused:B

    :cond_3
    return-object p0
.end method
