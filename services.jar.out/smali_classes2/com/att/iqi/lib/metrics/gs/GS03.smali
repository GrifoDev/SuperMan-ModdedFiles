.class public Lcom/att/iqi/lib/metrics/gs/GS03;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/gs/GS03;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field public dwCallId:I

.field public dwErrCode:I

.field public wTermCode:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "GS03"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS03;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/gs/GS03$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/gs/GS03$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/gs/GS03;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwCallId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwErrCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->wTermCode:S

    goto :goto_0
.end method


# virtual methods
.method public getCallId()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwCallId:I

    return v0
.end method

.method public getErrCode()I
    .locals 1

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwErrCode:I

    return v0
.end method

.method public getTermCode()I
    .locals 1

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->wTermCode:S

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwCallId:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwErrCode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->wTermCode:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS03;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwCallId:I

    return-object p0
.end method

.method public setErrCode(I)Lcom/att/iqi/lib/metrics/gs/GS03;
    .locals 0

    iput p1, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwErrCode:I

    return-object p0
.end method

.method public setTermCode(S)Lcom/att/iqi/lib/metrics/gs/GS03;
    .locals 1

    int-to-short v0, p1

    iput-short v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->wTermCode:S

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->dwErrCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Lcom/att/iqi/lib/metrics/gs/GS03;->wTermCode:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
