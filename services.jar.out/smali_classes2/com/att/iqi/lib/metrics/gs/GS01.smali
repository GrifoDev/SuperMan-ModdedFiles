.class public Lcom/att/iqi/lib/metrics/gs/GS01;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/gs/GS01;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public dwCallId:I

.field public szNumber:Ljava/lang/String;

.field public ucCallAttr:B

.field public ucCallState:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "GS01"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS01;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/gs/GS01$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/gs/GS01$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS01;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/att/iqi/lib/Metric;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->dwCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallState:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCallId()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->dwCallId:I

    return v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCallState()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallState:B

    return v0
.end method

.method public isOriginated()Z
    .locals 2

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit8 v1, v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isVideo()Z
    .locals 2

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVoice()Z
    .locals 2

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->dwCallId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallState:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/att/iqi/lib/metrics/gs/GS01;->stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->dwCallId:I

    return-object p0
.end method

.method public setCallNumber(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setCallState(B)Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallState:B

    return-object p0
.end method

.method public setOriginated()Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit16 v0, v0, 0xfe

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    return-object p0
.end method

.method public setTerminated()Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    return-object p0
.end method

.method public setVideo()Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    return-object p0
.end method

.method public setVoice()Lcom/att/iqi/lib/metrics/gs/GS01;
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    and-int/lit16 v0, v0, 0xfd

    int-to-byte v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->dwCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallAttr:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->ucCallState:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/att/iqi/lib/metrics/gs/GS01;->szNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
