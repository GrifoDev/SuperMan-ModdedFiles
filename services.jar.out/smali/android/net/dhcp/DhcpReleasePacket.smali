.class Landroid/net/dhcp/DhcpReleasePacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpReleasePacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;[B)V
    .locals 9

    sget-object v4, Landroid/net/dhcp/DhcpReleasePacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v5, Landroid/net/dhcp/DhcpReleasePacket;->INADDR_ANY:Ljava/net/Inet4Address;

    sget-object v6, Landroid/net/dhcp/DhcpReleasePacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 9

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object v2, p0, Landroid/net/dhcp/DhcpReleasePacket;->mClientIp:Ljava/net/Inet4Address;

    iget-object v3, p0, Landroid/net/dhcp/DhcpReleasePacket;->mYourIp:Ljava/net/Inet4Address;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpReleasePacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v6
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/16 v0, 0x35

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpReleasePacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpReleasePacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpReleasePacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    sget-object v0, Landroid/net/dhcp/DhcpReleasePacket;->INADDR_ANY:Ljava/net/Inet4Address;

    iget-object v1, p0, Landroid/net/dhcp/DhcpReleasePacket;->mServerIdentifier:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpReleasePacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Landroid/net/dhcp/DhcpReleasePacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    :cond_0
    invoke-static {p1}, Landroid/net/dhcp/DhcpReleasePacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " RELEASE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
