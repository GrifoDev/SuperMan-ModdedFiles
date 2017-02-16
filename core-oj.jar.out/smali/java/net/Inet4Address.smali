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

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 99
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 103
    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v3, v1}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    .line 102
    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .line 107
    new-instance v0, Ljava/net/Inet4Address;

    const-string/jumbo v1, "localhost"

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>(Ljava/lang/String;[B)V

    .line 106
    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    .line 90
    return-void

    .line 99
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 103
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    .line 107
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

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 111
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 113
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 109
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "address"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 130
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput-object p1, v0, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    iput v1, v0, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 132
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    iput p2, v0, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 129
    return-void
.end method

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "addr"    # [B

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/net/InetAddress;-><init>()V

    .line 117
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput-object p1, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    sget v2, Landroid/system/OsConstants;->AF_INET:I

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 119
    if-eqz p2, :cond_0

    .line 120
    array-length v1, p2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 121
    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v0, v1, 0xff

    .line 122
    .local v0, "address":I
    const/4 v1, 0x2

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 123
    const/4 v1, 0x1

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 124
    const/4 v1, 0x0

    aget-byte v1, p2, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 125
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    iput v0, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 116
    .end local v0    # "address":I
    :cond_0
    return-void
.end method

.method static numericToTextFormat([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .prologue
    .line 380
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

    .prologue
    .line 145
    new-instance v0, Ljava/net/InetAddress;

    invoke-direct {v0}, Ljava/net/InetAddress;-><init>()V

    .line 146
    .local v0, "inet":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljava/net/InetAddress$InetAddressHolder;->hostName:Ljava/lang/String;

    .line 147
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->address:I

    .line 155
    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Ljava/net/InetAddress$InetAddressHolder;->family:I

    .line 157
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 364
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 365
    check-cast p1, Ljava/net/InetAddress;

    .end local p1    # "obj":Ljava/lang/Object;
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

    .line 364
    :cond_0
    return v0
.end method

.method public getAddress()[B
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v1

    .line 319
    .local v1, "address":I
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 321
    .local v0, "addr":[B
    ushr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 322
    ushr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 323
    ushr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    .line 324
    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    .line 325
    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/Inet4Address;->numericToTextFormat([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 344
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 179
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

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 209
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_0

    .line 210
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 209
    :cond_0
    return v1
.end method

.method public isLoopbackAddress()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 193
    .local v0, "byteAddr":[B
    aget-byte v2, v0, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isMCGlobal()Z
    .locals 6

    .prologue
    const/16 v5, 0xe0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    .line 244
    .local v0, "byteAddr":[B
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v5, :cond_2

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xee

    if-gt v3, v4, :cond_2

    .line 245
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v5, :cond_0

    aget-byte v3, v0, v1

    if-eqz v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 244
    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 273
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_0

    .line 274
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    .line 275
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 273
    :cond_0
    return v1
.end method

.method public isMCNodeLocal()Z
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 305
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_0

    .line 306
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_0

    .line 307
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc3

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    .line 305
    :cond_0
    return v1
.end method

.method public isMCSiteLocal()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 289
    .local v0, "address":I
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_0

    .line 290
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 289
    :cond_0
    return v1
.end method

.method public isMulticastAddress()Z
    .locals 2

    .prologue
    .line 169
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

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Ljava/net/Inet4Address;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress$InetAddressHolder;->getAddress()I

    move-result v0

    .line 226
    .local v0, "address":I
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 227
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xac

    if-ne v3, v4, :cond_1

    .line 228
    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    ushr-int/lit8 v3, v0, 0x18

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 230
    ushr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 229
    goto :goto_0
.end method
