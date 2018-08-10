.class public final Landroid/net/IpSecConfig;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecConfig$1;,
        Landroid/net/IpSecConfig$Flow;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/IpSecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IpSecConfig"


# instance fields
.field encapLocalPort:I

.field encapRemotePort:I

.field encapType:I

.field flow:[Landroid/net/IpSecConfig$Flow;

.field localAddress:Ljava/net/InetAddress;

.field mode:I

.field nattKeepaliveInterval:I

.field network:Landroid/net/Network;

.field remoteAddress:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecConfig$1;

    invoke-direct {v0}, Landroid/net/IpSecConfig$1;-><init>()V

    sput-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/IpSecConfig$Flow;

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/IpSecConfig$Flow;

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    aput-object v1, v0, v2

    new-instance v1, Landroid/net/IpSecConfig$Flow;

    invoke-direct {v1}, Landroid/net/IpSecConfig$Flow;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    invoke-static {p1}, Landroid/net/IpSecConfig;->readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    invoke-static {p1}, Landroid/net/IpSecConfig;->readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    const-class v0, Landroid/net/Network;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    iput-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spi:I

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v2

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v2

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spi:I

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v3

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v1, v0, v3

    const-class v0, Landroid/net/IpSecAlgorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecAlgorithm;

    iput-object v0, v1, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapLocalPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static readInetAddressFromParcel(Landroid/os/Parcel;)Ljava/net/InetAddress;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "IpSecConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid IpAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthentication(I)Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getEncapLocalPort()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->encapLocalPort:I

    return v0
.end method

.method public getEncapRemotePort()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    return v0
.end method

.method public getEncapType()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->encapType:I

    return v0
.end method

.method public getEncryption(I)Landroid/net/IpSecAlgorithm;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->mode:I

    return v0
.end method

.method public getNattKeepaliveInterval()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecConfig;->nattKeepaliveInterval:I

    return v0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getSpi(I)I
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spi:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v2

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/net/IpSecConfig$Flow;->spi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/IpSecConfig;->encapType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->encapLocalPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/IpSecConfig;->encapRemotePort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
