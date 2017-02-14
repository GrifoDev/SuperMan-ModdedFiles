.class Lsun/nio/ch/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IOV_MAX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/nio/ch/IOUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    invoke-static {}, Lsun/nio/ch/IOUtil;->iovMax()I

    move-result v0

    sput v0, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native configureBlocking(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native drain(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native fdLimit()I
.end method

.method static native fdVal(Ljava/io/FileDescriptor;)I
.end method

.method static native iovMax()I
.end method

.method static native makePipe(Z)J
.end method

.method static newFD(I)Ljava/io/FileDescriptor;
    .locals 1

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    invoke-static {v0, p0}, Lsun/nio/ch/IOUtil;->setfdVal(Ljava/io/FileDescriptor;I)V

    return-object v0
.end method

.method static native randomBytes([B)Z
.end method

.method static read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Read-only buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    instance-of v2, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v2

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return v1

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v2
.end method

.method static read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v19

    const/4 v5, 0x0

    const/4 v10, 0x0

    add-int v8, p2, p3

    move/from16 v9, p2

    :goto_0
    if-ge v9, v8, :cond_7

    :try_start_0
    sget v20, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v20

    if-eqz v20, :cond_1

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "Read-only buffer"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v20

    if-nez v5, :cond_12

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_12

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    sget-boolean v20, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v20, :cond_3

    move/from16 v0, v16

    if-gt v0, v14, :cond_2

    const/16 v20, 0x1

    :goto_2
    if-nez v20, :cond_3

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20

    :cond_2
    const/16 v20, 0x0

    goto :goto_2

    :cond_3
    move/from16 v0, v16

    if-gt v0, v14, :cond_6

    sub-int v17, v14, v16

    :goto_3
    if-lez v17, :cond_5

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v10, v4, v1, v2}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    instance-of v0, v4, Lsun/nio/ch/DirectBuffer;

    move/from16 v20, v0

    if-nez v20, :cond_4

    invoke-static/range {v17 .. v17}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    move-object/from16 v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    :cond_4
    move-object v0, v4

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    :cond_7
    if-nez v10, :cond_a

    const-wide/16 v20, 0x0

    if-nez v5, :cond_9

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_9

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_9
    return-wide v20

    :cond_a
    :try_start_2
    move-object/from16 v0, v19

    iget-wide v0, v0, Lsun/nio/ch/IOVecWrapper;->address:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Lsun/nio/ch/NativeDispatcher;->readv(Ljava/io/FileDescriptor;JI)J

    move-result-wide v6

    move-wide v12, v6

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_f

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_b

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v12, v20

    if-lez v20, :cond_d

    move/from16 v15, v17

    :goto_6
    if-nez v18, :cond_e

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v16

    add-int v20, v16, v15

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_7
    int-to-long v0, v15

    move-wide/from16 v20, v0

    sub-long v12, v12, v20

    :cond_b
    if-eqz v18, :cond_c

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_d
    long-to-int v15, v12

    goto :goto_6

    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :cond_f
    const/4 v5, 0x1

    if-nez v5, :cond_11

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_11

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_10

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_10
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_11
    return-wide v6

    :cond_12
    throw v20
.end method

.method static read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->read(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readIntoNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    sget-boolean v1, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gt v9, v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    if-gt v9, v7, :cond_2

    sub-int v4, v7, v9

    :goto_1
    if-nez v4, :cond_3

    return v0

    :cond_2
    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v9

    add-long/2addr v2, v0

    move-object v0, p4

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lsun/nio/ch/NativeDispatcher;->pread(Ljava/io/FileDescriptor;JIJ)I

    move-result v8

    :goto_2
    if-lez v8, :cond_4

    add-int v0, v9, v8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    return v8

    :cond_5
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v9

    add-long/2addr v0, v2

    invoke-virtual {p4, p0, v0, v1, v4}, Lsun/nio/ch/NativeDispatcher;->read(Ljava/io/FileDescriptor;JI)I

    move-result v8

    goto :goto_2
.end method

.method static native setfdVal(Ljava/io/FileDescriptor;I)V
.end method

.method static write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v5, p1, Lsun/nio/ch/DirectBuffer;

    if-eqz v5, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v5

    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sget-boolean v5, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v5, :cond_2

    if-gt v3, v1, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_1
    move v5, v4

    goto :goto_0

    :cond_2
    if-gt v3, v1, :cond_3

    sub-int v4, v1, v3

    :cond_3
    invoke-static {v4}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p0, v0, p2, p3, p4}, Lsun/nio/ch/IOUtil;->writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I

    move-result v2

    if-lez v2, :cond_4

    add-int v5, v3, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    return v2

    :catchall_0
    move-exception v5

    invoke-static {v0}, Lsun/nio/ch/Util;->offerFirstTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    throw v5
.end method

.method static write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Lsun/nio/ch/IOVecWrapper;->get(I)Lsun/nio/ch/IOVecWrapper;

    move-result-object v19

    const/4 v5, 0x0

    const/4 v10, 0x0

    add-int v8, p2, p3

    move/from16 v9, p2

    :goto_0
    if-ge v9, v8, :cond_6

    :try_start_0
    sget v20, Lsun/nio/ch/IOUtil;->IOV_MAX:I

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    sget-boolean v20, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v20, :cond_2

    move/from16 v0, v16

    if-gt v0, v14, :cond_1

    const/16 v20, 0x1

    :goto_1
    if-nez v20, :cond_2

    new-instance v20, Ljava/lang/AssertionError;

    invoke-direct/range {v20 .. v20}, Ljava/lang/AssertionError;-><init>()V

    throw v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v20

    if-nez v5, :cond_10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_10

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    :cond_2
    move/from16 v0, v16

    if-gt v0, v14, :cond_5

    sub-int v17, v14, v16

    :goto_3
    if-lez v17, :cond_4

    :try_start_1
    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v10, v4, v1, v2}, Lsun/nio/ch/IOVecWrapper;->setBuffer(ILjava/nio/ByteBuffer;II)V

    instance-of v0, v4, Lsun/nio/ch/DirectBuffer;

    move/from16 v20, v0

    if-nez v20, :cond_3

    invoke-static/range {v17 .. v17}, Lsun/nio/ch/Util;->getTemporaryDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lsun/nio/ch/IOVecWrapper;->setShadow(ILjava/nio/ByteBuffer;)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    :cond_3
    move-object v0, v4

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putBase(IJ)V

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v10, v1, v2}, Lsun/nio/ch/IOVecWrapper;->putLen(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v10, v10, 0x1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    :cond_6
    if-nez v10, :cond_9

    const-wide/16 v20, 0x0

    if-nez v5, :cond_8

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_8

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    return-wide v20

    :cond_9
    :try_start_2
    move-object/from16 v0, v19

    iget-wide v0, v0, Lsun/nio/ch/IOVecWrapper;->address:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v10}, Lsun/nio/ch/NativeDispatcher;->writev(Ljava/io/FileDescriptor;JI)J

    move-result-wide v6

    move-wide v12, v6

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_d

    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-lez v20, :cond_a

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getPosition(I)I

    move-result v16

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getRemaining(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v12, v20

    if-lez v20, :cond_c

    move/from16 v15, v17

    :goto_6
    add-int v20, v16, v15

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v0, v15

    move-wide/from16 v20, v0

    sub-long v12, v12, v20

    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_b

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_b
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_c
    long-to-int v15, v12

    goto :goto_6

    :cond_d
    const/4 v5, 0x1

    if-nez v5, :cond_f

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_f

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->getShadow(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-static/range {v18 .. v18}, Lsun/nio/ch/Util;->offerLastTemporaryDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lsun/nio/ch/IOVecWrapper;->clearRefs(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_f
    return-wide v6

    :cond_10
    throw v20
.end method

.method static write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;Lsun/nio/ch/NativeDispatcher;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lsun/nio/ch/IOUtil;->write(Ljava/io/FileDescriptor;[Ljava/nio/ByteBuffer;IILsun/nio/ch/NativeDispatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static writeFromNativeBuffer(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;JLsun/nio/ch/NativeDispatcher;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    sget-boolean v1, Lsun/nio/ch/IOUtil;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gt v8, v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    if-gt v8, v7, :cond_2

    sub-int v4, v7, v8

    :goto_1
    const/4 v9, 0x0

    if-nez v4, :cond_3

    return v0

    :cond_2
    move v4, v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v8

    add-long/2addr v2, v0

    move-object v0, p4

    move-object v1, p0

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lsun/nio/ch/NativeDispatcher;->pwrite(Ljava/io/FileDescriptor;JIJ)I

    move-result v9

    :goto_2
    if-lez v9, :cond_4

    add-int v0, v8, v9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    return v9

    :cond_5
    move-object v0, p1

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    int-to-long v2, v8

    add-long/2addr v0, v2

    invoke-virtual {p4, p0, v0, v1, v4}, Lsun/nio/ch/NativeDispatcher;->write(Ljava/io/FileDescriptor;JI)I

    move-result v9

    goto :goto_2
.end method
