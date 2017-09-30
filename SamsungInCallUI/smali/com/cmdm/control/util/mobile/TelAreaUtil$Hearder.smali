.class Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/util/mobile/TelAreaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Hearder"
.end annotation


# instance fields
.field final synthetic eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;

.field eD:I

.field eE:I


# direct methods
.method constructor <init>(Lcom/cmdm/control/util/mobile/TelAreaUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eC:Lcom/cmdm/control/util/mobile/TelAreaUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Size()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public print()V
    .locals 0

    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eE:I

    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 1

    iget v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eD:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v0, p0, Lcom/cmdm/control/util/mobile/TelAreaUtil$Hearder;->eE:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method
