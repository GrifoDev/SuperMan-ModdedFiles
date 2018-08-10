.class public final Landroid/net/IpSecManager;
.super Ljava/lang/Object;
.source "IpSecManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecManager$ResourceUnavailableException;,
        Landroid/net/IpSecManager$SecurityParameterIndex;,
        Landroid/net/IpSecManager$SpiUnavailableException;,
        Landroid/net/IpSecManager$Status;,
        Landroid/net/IpSecManager$UdpEncapsulationSocket;
    }
.end annotation


# static fields
.field public static final INVALID_RESOURCE_ID:I = 0x0

.field public static final INVALID_SECURITY_PARAMETER_INDEX:I = 0x0

.field public static final KEY_RESOURCE_ID:Ljava/lang/String; = "resourceId"

.field public static final KEY_SPI:Ljava/lang/String; = "spi"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "IpSecManager"


# instance fields
.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method public constructor <init>(Landroid/net/IIpSecService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing service"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IIpSecService;

    iput-object v0, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    return-void
.end method

.method private applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/IIpSecService;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    invoke-virtual {p2}, Landroid/net/IpSecTransform;->getResourceId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/net/IIpSecService;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public applyTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public applyTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public applyTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public applyTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0

    return-void
.end method

.method public openUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V

    return-object v0
.end method

.method public openUdpEncapsulationSocket(I)Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    new-instance v0, Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V

    return-object v0
.end method

.method public removeTransportModeTransform(Ljava/io/FileDescriptor;Landroid/net/IpSecTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public removeTransportModeTransform(Ljava/net/DatagramSocket;Landroid/net/IpSecTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromDatagramSocket(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public removeTransportModeTransform(Ljava/net/Socket;Landroid/net/IpSecTransform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/net/IpSecManager;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public removeTunnelModeTransform(Landroid/net/Network;Landroid/net/IpSecTransform;)V
    .locals 0

    return-void
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V
    :try_end_0
    .catch Landroid/net/IpSecManager$SpiUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v6

    new-instance v0, Landroid/net/IpSecManager$ResourceUnavailableException;

    const-string/jumbo v1, "No SPIs available"

    invoke-direct {v0, v1}, Landroid/net/IpSecManager$ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reserveSecurityParameterIndex(ILjava/net/InetAddress;I)Landroid/net/IpSecManager$SecurityParameterIndex;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Requested SPI must be a valid (non-zero) SPI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/net/IpSecManager$SecurityParameterIndex;

    iget-object v1, p0, Landroid/net/IpSecManager;->mService:Landroid/net/IIpSecService;

    const/4 v5, 0x0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/IpSecManager$SecurityParameterIndex;-><init>(Landroid/net/IIpSecService;ILjava/net/InetAddress;ILandroid/net/IpSecManager$SecurityParameterIndex;)V

    return-object v0
.end method
