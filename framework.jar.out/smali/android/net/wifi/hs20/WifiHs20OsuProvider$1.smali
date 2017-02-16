.class final Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;
.super Ljava/lang/Object;
.source "WifiHs20OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/WifiHs20OsuProvider;
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
        "Landroid/net/wifi/hs20/WifiHs20OsuProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 370
    .local v12, "b":Landroid/os/Bundle;
    const-string/jumbo v0, "freindly_name"

    .line 369
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 372
    .local v5, "friendlyName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "osu_icon"

    .line 371
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 374
    .local v8, "osuIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "service_description"

    .line 373
    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 375
    .local v10, "serviceDescription":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 376
    .local v6, "serverUri":Ljava/net/URI;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;->valueOf(Ljava/lang/String;)Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;

    move-result-object v7

    .line 377
    .local v7, "methodType":Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "NAI":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "ssid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "bssid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "hessid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "osuSsid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 383
    .local v11, "seen":Ljava/lang/Long;
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/net/URI;Landroid/net/wifi/hs20/WifiHs20Manager$AccessProtocol;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/hs20/WifiHs20OsuProvider;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 389
    new-array v0, p1, [Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider$1;->newArray(I)[Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    move-result-object v0

    return-object v0
.end method
