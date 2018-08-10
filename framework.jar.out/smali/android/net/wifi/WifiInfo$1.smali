.class final Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
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
        "Landroid/net/wifi/WifiInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Landroid/net/wifi/WifiInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    sget-object v2, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiSsid;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set7(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set0(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set3(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set4(Landroid/net/wifi/WifiInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set1(Landroid/net/wifi/WifiInfo;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    sget-object v2, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set5(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setChnKeepConnection(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setManualConnection(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set2(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setCheckVsieForSns(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_a

    :goto_9
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setGigaAp(Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/WifiInfo;->-set6(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setSnr(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setLqcmTx(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setLqcmRx(I)V

    return-object v1

    :cond_2
    move v2, v4

    goto/16 :goto_1

    :cond_3
    move v2, v4

    goto/16 :goto_2

    :cond_4
    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5

    :cond_7
    move v2, v4

    goto :goto_6

    :cond_8
    move v2, v4

    goto :goto_7

    :cond_9
    move v2, v4

    goto :goto_8

    :cond_a
    move v3, v4

    goto :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiInfo;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method
