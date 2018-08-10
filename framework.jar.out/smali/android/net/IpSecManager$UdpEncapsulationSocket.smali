.class public final Landroid/net/IpSecManager$UdpEncapsulationSocket;
.super Ljava/lang/Object;
.source "IpSecManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdpEncapsulationSocket"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mService:Landroid/net/IIpSecService;


# direct methods
.method private constructor <init>(Landroid/net/IIpSecService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "constructor"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private constructor <init>(Landroid/net/IIpSecService;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-object p1, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mService:Landroid/net/IIpSecService;

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "constructor"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;ILandroid/net/IpSecManager$UdpEncapsulationSocket;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/IIpSecService;Landroid/net/IpSecManager$UdpEncapsulationSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;-><init>(Landroid/net/IIpSecService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->close()V

    return-void
.end method

.method public getPort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSocket()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecManager$UdpEncapsulationSocket;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method
