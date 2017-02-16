.class final Landroid/net/EthernetDevInfo$1;
.super Ljava/lang/Object;
.source "EthernetDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetDevInfo;
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
        "Landroid/net/EthernetDevInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/EthernetDevInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 164
    new-instance v0, Landroid/net/EthernetDevInfo;

    invoke-direct {v0}, Landroid/net/EthernetDevInfo;-><init>()V

    .line 165
    .local v0, "info":Landroid/net/EthernetDevInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIfName(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setIpAddress(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setNetMask(I)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setRouteAddr(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setDnsAddr(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/EthernetDevInfo;->setConnectMode(Ljava/lang/String;)Z

    .line 171
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/net/EthernetDevInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/EthernetDevInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/EthernetDevInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Landroid/net/EthernetDevInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Landroid/net/EthernetDevInfo$1;->newArray(I)[Landroid/net/EthernetDevInfo;

    move-result-object v0

    return-object v0
.end method
