.class final Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;
.super Ljava/lang/Object;
.source "WifiHs20OsuIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20OsuIcon;
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
        "Landroid/net/wifi/hs20/WifiHs20OsuIcon;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hs20/WifiHs20OsuIcon;
    .locals 6

    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OsuIcon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/hs20/WifiHs20OsuIcon;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hs20/WifiHs20OsuIcon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hs20/WifiHs20OsuIcon;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/hs20/WifiHs20OsuIcon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hs20/WifiHs20OsuIcon$1;->newArray(I)[Landroid/net/wifi/hs20/WifiHs20OsuIcon;

    move-result-object v0

    return-object v0
.end method
