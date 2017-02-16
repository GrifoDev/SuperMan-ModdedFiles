.class Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/util/mobile/TelAreaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AreaCode"
.end annotation


# instance fields
.field private eA:Ljava/lang/String;

.field private eB:[Ljava/lang/String;

.field final synthetic eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;


# direct methods
.method public constructor <init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V
    .locals 1

    .prologue
    .line 208
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;Ljava/lang/String;)V
    .locals 1
    .param p2, "areacode"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public Size()I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getCodeByIndex(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    .line 241
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 2
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    new-array v0, v1, [B

    .line 233
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 234
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 228
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 229
    return-void
.end method
