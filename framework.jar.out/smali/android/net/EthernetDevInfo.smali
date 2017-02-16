.class public Landroid/net/EthernetDevInfo;
.super Ljava/lang/Object;
.source "EthernetDevInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/EthernetDevInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/EthernetDevInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ETH_CONN_MODE_DHCP:Ljava/lang/String; = "dhcp"

.field public static final ETH_CONN_MODE_MANUAL:Ljava/lang/String; = "manual"

.field public static final ETH_CONN_MODE_NONE:Ljava/lang/String; = "none"


# instance fields
.field private dev_name:Ljava/lang/String;

.field private dns:Ljava/lang/String;

.field private ipaddr:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private netmask:I

.field private route:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Landroid/net/EthernetDevInfo$1;

    invoke-direct {v0}, Landroid/net/EthernetDevInfo$1;-><init>()V

    .line 161
    sput-object v0, Landroid/net/EthernetDevInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Landroid/net/EthernetDevInfo;->dev_name:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Landroid/net/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Landroid/net/EthernetDevInfo;->dns:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Landroid/net/EthernetDevInfo;->route:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/EthernetDevInfo;->netmask:I

    .line 50
    const-string/jumbo v0, "dhcp"

    iput-object v0, p0, Landroid/net/EthernetDevInfo;->mode:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public getIfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->dev_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNetMask()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Landroid/net/EthernetDevInfo;->netmask:I

    return v0
.end method

.method public getRouteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->route:Ljava/lang/String;

    return-object v0
.end method

.method public setConnectMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string/jumbo v0, "dhcp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    iput-object p1, p0, Landroid/net/EthernetDevInfo;->mode:Ljava/lang/String;

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDnsAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "dns"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/net/EthernetDevInfo;->dns:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setIfName(Ljava/lang/String;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/EthernetDevInfo;->dev_name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setIpAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Landroid/net/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setNetMask(I)V
    .locals 0
    .param p1, "prefix"    # I

    .prologue
    .line 85
    iput p1, p0, Landroid/net/EthernetDevInfo;->netmask:I

    .line 84
    return-void
.end method

.method public setRouteAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/net/EthernetDevInfo;->route:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->dev_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->ipaddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Landroid/net/EthernetDevInfo;->netmask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->route:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->dns:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/net/EthernetDevInfo;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
