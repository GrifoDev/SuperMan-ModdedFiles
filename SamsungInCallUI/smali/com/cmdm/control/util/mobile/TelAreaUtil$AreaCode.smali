.class Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;
.super Ljava/lang/Object;


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

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;-><init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Size()I
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getCodeByIndex(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

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

    :cond_2
    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eB:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public print()V
    .locals 0

    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$AreaCode;->eA:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method
