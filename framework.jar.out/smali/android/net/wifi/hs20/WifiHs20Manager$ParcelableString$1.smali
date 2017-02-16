.class final Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString$1;
.super Ljava/lang/Object;
.source "WifiHs20Manager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;
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
        "Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 427
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;-><init>()V

    .line 428
    .local v0, "ret":Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;->string:Ljava/lang/String;

    .line 429
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 434
    new-array v0, p1, [Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString$1;->newArray(I)[Landroid/net/wifi/hs20/WifiHs20Manager$ParcelableString;

    move-result-object v0

    return-object v0
.end method
