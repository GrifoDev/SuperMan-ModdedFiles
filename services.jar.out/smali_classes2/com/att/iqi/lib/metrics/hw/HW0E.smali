.class public Lcom/att/iqi/lib/metrics/hw/HW0E;
.super Lcom/att/iqi/lib/Metric;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/att/iqi/lib/metrics/hw/HW0E;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Lcom/att/iqi/lib/Metric$ID;


# instance fields
.field private a:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/att/iqi/lib/Metric$ID;

    const-string/jumbo v1, "HW0E"

    invoke-direct {v0, v1}, Lcom/att/iqi/lib/Metric$ID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW0E;->ID:Lcom/att/iqi/lib/Metric$ID;

    new-instance v0, Lcom/att/iqi/lib/metrics/hw/HW0E$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/metrics/hw/HW0E$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/metrics/hw/HW0E;->CREATOR:Landroid/os/Parcelable$Creator;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->a:B

    goto :goto_0
.end method


# virtual methods
.method public getEvent()B
    .locals 1

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->a:B

    return v0
.end method

.method protected serialize(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->a:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public setEvent(B)Lcom/att/iqi/lib/metrics/hw/HW0E;
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->a:B

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/att/iqi/lib/Metric;->writeToParcel(Landroid/os/Parcel;I)V

    iget-byte v0, p0, Lcom/att/iqi/lib/metrics/hw/HW0E;->a:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
