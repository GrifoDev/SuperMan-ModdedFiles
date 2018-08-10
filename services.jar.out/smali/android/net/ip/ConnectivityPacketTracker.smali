.class public Landroid/net/ip/ConnectivityPacketTracker;
.super Ljava/lang/Object;
.source "ConnectivityPacketTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/ConnectivityPacketTracker$PacketListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MARK_START:Ljava/lang/String; = "--- START ---"

.field private static final MARK_STOP:Ljava/lang/String; = "--- STOP ---"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLog:Landroid/util/LocalLog;

.field private final mPacketListener:Landroid/net/util/BlockingSocketReader;

.field private final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/ip/ConnectivityPacketTracker;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/ConnectivityPacketTracker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/ip/ConnectivityPacketTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/NetworkInterface;Landroid/util/LocalLog;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getMTU()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/net/ip/ConnectivityPacketTracker;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/ip/ConnectivityPacketTracker;->mTag:Ljava/lang/String;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/net/ip/ConnectivityPacketTracker;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    new-instance v5, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;

    invoke-direct {v5, p0, v2, v1, v4}, Landroid/net/ip/ConnectivityPacketTracker$PacketListener;-><init>(Landroid/net/ip/ConnectivityPacketTracker;I[BI)V

    iput-object v5, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    return-void

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "bad network interface"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public start()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "--- START ---"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->start()Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mPacketListener:Landroid/net/util/BlockingSocketReader;

    invoke-virtual {v0}, Landroid/net/util/BlockingSocketReader;->stop()V

    iget-object v0, p0, Landroid/net/ip/ConnectivityPacketTracker;->mLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "--- STOP ---"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
