.class public Landroid/net/netlink/NetlinkErrorMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "NetlinkErrorMessage.java"


# instance fields
.field private mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;


# direct methods
.method constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    invoke-static {p1}, Landroid/net/netlink/StructNlMsgErr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgErr;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    iget-object v1, v0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getNlMsgError()Landroid/net/netlink/StructNlMsgErr;
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetlinkErrorMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nlmsgerr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    invoke-virtual {v0}, Landroid/net/netlink/StructNlMsgErr;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
