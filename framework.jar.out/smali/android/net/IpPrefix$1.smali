.class final Landroid/net/IpPrefix$1;
.super Ljava/lang/Object;
.source "IpPrefix.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpPrefix;
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
        "Landroid/net/IpPrefix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpPrefix;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 223
    .local v0, "address":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 224
    .local v1, "prefixLength":I
    new-instance v2, Landroid/net/IpPrefix;

    invoke-direct {v2, v0, v1}, Landroid/net/IpPrefix;-><init>([BI)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Landroid/net/IpPrefix$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpPrefix;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/IpPrefix;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 228
    new-array v0, p1, [Landroid/net/IpPrefix;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroid/net/IpPrefix$1;->newArray(I)[Landroid/net/IpPrefix;

    move-result-object v0

    return-object v0
.end method
