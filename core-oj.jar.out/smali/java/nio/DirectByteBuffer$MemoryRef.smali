.class Ljava/nio/DirectByteBuffer$MemoryRef;
.super Ljava/lang/Object;
.source "DirectByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DirectByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoryRef"
.end annotation


# instance fields
.field allocatedAddress:J

.field buffer:[B

.field isAccessible:Z

.field final offset:I


# direct methods
.method constructor <init>(I)V
    .locals 6
    .param p1, "capacity"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 58
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v2, p1, 0x7

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 59
    iget-object v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 61
    iget-wide v2, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    const-wide/16 v4, -0x8

    and-long/2addr v2, v4

    iget-wide v4, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 56
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "allocatedAddress"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 67
    iput-wide p1, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->offset:I

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 65
    return-void
.end method


# virtual methods
.method free()V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->buffer:[B

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->allocatedAddress:J

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/DirectByteBuffer$MemoryRef;->isAccessible:Z

    .line 72
    return-void
.end method
