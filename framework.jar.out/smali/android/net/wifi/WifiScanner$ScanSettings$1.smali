.class final Landroid/net/wifi/WifiScanner$ScanSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
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
        "Landroid/net/wifi/WifiScanner$ScanSettings;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v4}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_0
    iput-boolean v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v7, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v5, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v5, v0}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_2
    iput-boolean v7, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    iget-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v9

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v7, v2, [Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    iput-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:[Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    new-instance v8, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {v8, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiScanner$ScanSettings;->semPackageName:Ljava/lang/String;

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object v0

    return-object v0
.end method
