.class Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/util/mobile/TelAreaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Record"
.end annotation


# instance fields
.field final synthetic eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;

.field eF:J

.field eG:I

.field eH:I


# direct methods
.method public constructor <init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 252
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;JII)V

    .line 253
    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;JII)V
    .locals 0
    .param p2, "baseTelNum"    # J
    .param p4, "numCnt"    # I
    .param p5, "areacodeIndex"    # I

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-wide p2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    .line 257
    iput p4, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    .line 258
    iput p5, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    .line 259
    return-void
.end method


# virtual methods
.method public Size()I
    .locals 1

    .prologue
    .line 268
    const/16 v0, 0xc

    return v0
.end method

.method public inWhich(J)I
    .locals 5
    .param p1, "telNum"    # J

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 287
    const/4 v0, -0x1

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_0
    iget-wide v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    iget v2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    .line 280
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 281
    .local v0, "tmp":I
    shr-int/lit8 v1, v0, 0x10

    iput v1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    .line 282
    const v1, 0xffff

    and-int/2addr v1, v0

    iput v1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    .line 283
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 4
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    iget-wide v2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eF:J

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 273
    iget v1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eG:I

    shl-int/lit8 v0, v1, 0x10

    .line 274
    .local v0, "tmp":I
    const v1, 0xffff

    iget v2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Record;->eH:I

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 276
    return-void
.end method
