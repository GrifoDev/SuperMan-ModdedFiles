.class final Landroid/net/wifi/WifiNetworkConnectionStatistics$1;
.super Ljava/lang/Object;
.source "WifiNetworkConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkConnectionStatistics;
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
        "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkConnectionStatistics;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "numConnection":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .local v1, "numUsage":I
    new-instance v2, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    invoke-direct {v2, v0, v1}, Landroid/net/wifi/WifiNetworkConnectionStatistics;-><init>(II)V

    .line 78
    .local v2, "stats":Landroid/net/wifi/WifiNetworkConnectionStatistics;
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkConnectionStatistics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiNetworkConnectionStatistics;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 82
    new-array v0, p1, [Landroid/net/wifi/WifiNetworkConnectionStatistics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;->newArray(I)[Landroid/net/wifi/WifiNetworkConnectionStatistics;

    move-result-object v0

    return-object v0
.end method
