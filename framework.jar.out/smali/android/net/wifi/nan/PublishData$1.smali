.class final Landroid/net/wifi/nan/PublishData$1;
.super Ljava/lang/Object;
.source "PublishData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/PublishData;
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
        "Landroid/net/wifi/nan/PublishData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/PublishData;
    .locals 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v2, v3, [B

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-array v4, v5, [B

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-array v6, v7, [B

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_2
    new-instance v0, Landroid/net/wifi/nan/PublishData;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/PublishData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/PublishData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/PublishData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/PublishData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/nan/PublishData;
    .locals 1

    new-array v0, p1, [Landroid/net/wifi/nan/PublishData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/PublishData$1;->newArray(I)[Landroid/net/wifi/nan/PublishData;

    move-result-object v0

    return-object v0
.end method
