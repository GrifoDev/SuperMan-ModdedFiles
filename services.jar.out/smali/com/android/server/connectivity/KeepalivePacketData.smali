.class public Lcom/android/server/connectivity/KeepalivePacketData;
.super Ljava/lang/Object;
.source "KeepalivePacketData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
    }
.end annotation


# static fields
.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final UDP_HEADER_LENGTH:I = 0x8


# instance fields
.field public final data:[B

.field public final dstAddress:Ljava/net/InetAddress;

.field public dstMac:[B

.field public final dstPort:I

.field public final protocol:I

.field public final srcAddress:Ljava/net/InetAddress;

.field public final srcPort:I


# direct methods
.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    const/16 v2, -0x15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/KeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    iput p2, p0, Lcom/android/server/connectivity/KeepalivePacketData;->srcPort:I

    iput p4, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstPort:I

    iput-object p5, p0, Lcom/android/server/connectivity/KeepalivePacketData;->data:[B

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/InetAddress;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_3

    sget v0, Landroid/system/OsConstants;->ETH_P_IP:I

    iput v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->protocol:I

    :goto_0
    invoke-static {p2}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p4}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    :cond_2
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_4

    sget v0, Landroid/system/OsConstants;->ETH_P_IPV6:I

    iput v0, p0, Lcom/android/server/connectivity/KeepalivePacketData;->protocol:I

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    invoke-direct {v0, v2}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_5
    return-void
.end method

.method public static nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lcom/android/server/connectivity/KeepalivePacketData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
        }
    .end annotation

    const/4 v1, 0x0

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/net/Inet4Address;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x15

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_1
    const/16 v0, 0x1194

    if-eq p3, v0, :cond_2

    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;

    const/16 v1, -0x16

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;-><init>(I)V

    throw v0

    :cond_2
    const/16 v8, 0x1d

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x4500

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x1d

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v0, 0x40

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    int-to-byte v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    int-to-short v0, p1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v0, p3

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v0, 0x9

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v6, v1}, Landroid/net/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v0

    invoke-virtual {v6, v7, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    const/16 v0, 0x14

    invoke-static {v6, v1, v0}, Landroid/net/util/IpUtils;->udpChecksum(Ljava/nio/ByteBuffer;II)S

    move-result v0

    invoke-virtual {v6, v9, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/android/server/connectivity/KeepalivePacketData;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    return-object v0
.end method
