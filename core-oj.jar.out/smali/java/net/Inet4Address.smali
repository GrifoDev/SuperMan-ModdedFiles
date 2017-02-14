.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final ALL:Ljava/net/InetAddress;

.field public static final ANY:Ljava/net/InetAddress;

.field static final INADDRSZ:I = 0x4

.field public static final LOOPBACK:Ljava/net/InetAddress;

.field private static final loopback:I = 0x7f000001

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Inet4Address;

    const-string/jumbo v1, "localhost"

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput p2, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput-object p1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput v0, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    :cond_0
    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAddress()[B
    .locals 4

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    const/4 v2, 0x4

    new-array v0, v2, [B

    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/Inet4Address;->numericToTextFormat([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_0

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isLoopbackAddress()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    aget-byte v2, v0, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMCGlobal()Z
    .locals 6

    const/16 v5, 0xe0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v5, :cond_2

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xee

    if-gt v3, v4, :cond_2

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_0

    aget-byte v3, v0, v1

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_0

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMCNodeLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_0

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_0

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc3

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMCSiteLocal()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_0

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMulticastAddress()Z
    .locals 2

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x20000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSiteLocalAddress()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xac

    if-ne v3, v4, :cond_1

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method
