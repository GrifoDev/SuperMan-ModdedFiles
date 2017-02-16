.class Lsun/nio/ch/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static byteOrder:Ljava/nio/ByteOrder;

.field private static pageSize:I

.field protected static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final address:J

.field protected allocationAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/nio/ch/NativeObject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/nio/ch/NativeObject;->-assertionsDisabled:Z

    .line 43
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    .line 365
    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    .line 392
    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/NativeObject;->pageSize:I

    .line 41
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>(IZ)V
    .locals 8
    .param p1, "size"    # I
    .param p2, "pageAligned"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p2, :cond_0

    .line 75
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v4

    iput-wide v4, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 76
    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    iput-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    .line 73
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lsun/nio/ch/NativeObject;->pageSize()I

    move-result v2

    .line 79
    .local v2, "ps":I
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    add-int v4, p1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    .line 80
    .local v0, "a":J
    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 81
    int-to-long v4, v2

    add-long/2addr v4, v0

    add-int/lit8 v3, v2, -0x1

    int-to-long v6, v3

    and-long/2addr v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 59
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->address:J

    .line 57
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 3
    .param p1, "address"    # J
    .param p3, "offset"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 68
    add-long v0, p1, p3

    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    .line 66
    return-void
.end method

.method static addressSize()I
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static byteOrder()Ljava/nio/ByteOrder;
    .locals 6

    .prologue
    .line 373
    sget-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    if-eqz v3, :cond_0

    .line 374
    sget-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    return-object v3

    .line 375
    :cond_0
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x8

    invoke-virtual {v3, v4, v5}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    .line 377
    .local v0, "a":J
    :try_start_0
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    const-wide v4, 0x102030405060708L

    invoke-virtual {v3, v0, v1, v4, v5}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 378
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0, v1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    .line 379
    .local v2, "b":B
    sparse-switch v2, :sswitch_data_0

    .line 383
    sget-boolean v3, Lsun/nio/ch/NativeObject;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    .end local v2    # "b":B
    :catchall_0
    move-exception v3

    .line 386
    sget-object v4, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0, v1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 385
    throw v3

    .line 380
    .restart local v2    # "b":B
    :sswitch_0
    :try_start_1
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :cond_1
    :goto_0
    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0, v1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 388
    sget-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    return-object v3

    .line 381
    :sswitch_1
    :try_start_2
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v3, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method static pageSize()I
    .locals 2

    .prologue
    .line 400
    sget v0, Lsun/nio/ch/NativeObject;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 401
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Lsun/nio/ch/NativeObject;->pageSize:I

    .line 402
    :cond_0
    sget v0, Lsun/nio/ch/NativeObject;->pageSize:I

    return v0
.end method


# virtual methods
.method address()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    return-wide v0
.end method

.method allocationAddress()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    return-wide v0
.end method

.method final getByte(I)B
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 176
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method final getChar(I)C
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 230
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getChar(J)C

    move-result v0

    return v0
.end method

.method final getDouble(I)D
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 338
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method final getFloat(I)F
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 311
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v0

    return v0
.end method

.method final getInt(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 257
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method final getLong(I)J
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 284
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getObject(I)Lsun/nio/ch/NativeObject;
    .locals 8
    .param p1, "offset"    # I

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "newAddress":J
    invoke-static {}, Lsun/nio/ch/NativeObject;->addressSize()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 133
    new-instance v2, Ljava/lang/InternalError;

    const-string/jumbo v3, "Address size not supported"

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :sswitch_0
    sget-object v2, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v4, p1

    iget-wide v6, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    .line 136
    :goto_0
    new-instance v2, Lsun/nio/ch/NativeObject;

    invoke-direct {v2, v0, v1}, Lsun/nio/ch/NativeObject;-><init>(J)V

    return-object v2

    .line 130
    :sswitch_1
    sget-object v2, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v4, p1

    iget-wide v6, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    int-to-long v0, v2

    .line 131
    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method final getShort(I)S
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 203
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method final putByte(IB)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # B

    .prologue
    .line 190
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 189
    return-void
.end method

.method final putChar(IC)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # C

    .prologue
    .line 244
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putChar(JC)V

    .line 243
    return-void
.end method

.method final putDouble(ID)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # D

    .prologue
    .line 352
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2, p3}, Lsun/misc/Unsafe;->putDouble(JD)V

    .line 351
    return-void
.end method

.method final putFloat(IF)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # F

    .prologue
    .line 325
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putFloat(JF)V

    .line 324
    return-void
.end method

.method final putInt(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 271
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 270
    return-void
.end method

.method final putLong(IJ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .prologue
    .line 298
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 297
    return-void
.end method

.method putObject(ILsun/nio/ch/NativeObject;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "ob"    # Lsun/nio/ch/NativeObject;

    .prologue
    .line 151
    invoke-static {}, Lsun/nio/ch/NativeObject;->addressSize()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/InternalError;

    const-string/jumbo v1, "Address size not supported"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :sswitch_0
    iget-wide v0, p2, Lsun/nio/ch/NativeObject;->address:J

    invoke-virtual {p0, p1, v0, v1}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    .line 150
    :goto_0
    return-void

    .line 156
    :sswitch_1
    iget-wide v0, p2, Lsun/nio/ch/NativeObject;->address:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/NativeObject;->putInt(II)V

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method final putShort(IS)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "value"    # S

    .prologue
    .line 217
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 216
    return-void
.end method

.method subObject(I)Lsun/nio/ch/NativeObject;
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 109
    new-instance v0, Lsun/nio/ch/NativeObject;

    int-to-long v2, p1

    iget-wide v4, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lsun/nio/ch/NativeObject;-><init>(J)V

    return-object v0
.end method
