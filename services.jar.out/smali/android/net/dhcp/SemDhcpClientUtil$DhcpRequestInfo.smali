.class Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;
.super Ljava/lang/Object;
.source "SemDhcpClientUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/SemDhcpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DhcpRequestInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public isLastUpdatedInfo:Z

.field public lastUpdatedTime:J

.field public prefixLength:I

.field public serverAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)I
    .locals 4

    iget-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-wide v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    iget-wide v2, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;

    invoke-virtual {p0, p1}, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->compareTo(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    iget v1, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public isValid()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    if-nez v0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "bssid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "ip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->prefixLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->serverAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/dhcp/SemDhcpClientUtil$DhcpRequestInfo;->lastUpdatedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
