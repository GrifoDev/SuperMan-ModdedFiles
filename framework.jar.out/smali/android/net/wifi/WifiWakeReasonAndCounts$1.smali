.class final Landroid/net/wifi/WifiWakeReasonAndCounts$1;
.super Ljava/lang/Object;
.source "WifiWakeReasonAndCounts.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWakeReasonAndCounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiWakeReasonAndCounts;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 2

    new-instance v0, Landroid/net/wifi/WifiWakeReasonAndCounts;

    invoke-direct {v0}, Landroid/net/wifi/WifiWakeReasonAndCounts;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalCmdEventWake:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalDriverFwLocalWake:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->totalRxDataWake:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxUnicast:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxMulticast:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->rxBroadcast:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ra:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Na:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->icmp6Ns:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv4RxMulticast:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->ipv6Multicast:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->otherRxMulticast:I

    iget-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->cmdEventWakeCntArray:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v1, v0, Landroid/net/wifi/WifiWakeReasonAndCounts;->driverFWLocalWakeCntArray:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiWakeReasonAndCounts;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiWakeReasonAndCounts;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWakeReasonAndCounts$1;->newArray(I)[Landroid/net/wifi/WifiWakeReasonAndCounts;

    move-result-object v0

    return-object v0
.end method
