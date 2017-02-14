.class Lsun/nio/ch/InheritedChannel;
.super Ljava/lang/Object;
.source "InheritedChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;,
        Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;,
        Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final O_RDONLY:I = 0x0

.field private static final O_RDWR:I = 0x2

.field private static final O_WRONLY:I = 0x1

.field private static final SOCK_DGRAM:I = 0x2

.field private static final SOCK_STREAM:I = 0x1

.field private static final UNKNOWN:I = -0x1

.field private static channel:Ljava/nio/channels/Channel;

.field private static devnull:I

.field private static haveChannel:Z


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lsun/nio/ch/InheritedChannel;->detachIOStreams()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lsun/nio/ch/InheritedChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    sput-boolean v1, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAccess(Ljava/nio/channels/Channel;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "inheritedChannel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_0
    return-void
.end method

.method private static native close0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static createChannel()Ljava/nio/channels/Channel;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Lsun/nio/ch/InheritedChannel;->dup(I)I

    move-result v4

    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->soType0(I)I

    move-result v10

    if-eq v10, v11, :cond_0

    const/4 v13, 0x2

    if-eq v10, v13, :cond_0

    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->close0(I)V

    return-object v14

    :cond_0
    new-array v7, v11, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v7, v12

    const-string/jumbo v13, "java.io.FileDescriptor"

    invoke-static {v13, v7}, Lsun/nio/ch/Reflect;->lookupConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v11, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v12

    invoke-static {v2, v0}, Lsun/nio/ch/Reflect;->invoke(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileDescriptor;

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v9

    sget-boolean v13, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    if-nez v13, :cond_1

    instance-of v13, v9, Lsun/nio/ch/SelectorProviderImpl;

    if-nez v13, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_1
    if-ne v10, v11, :cond_5

    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->peerAddress0(I)Ljava/net/InetAddress;

    move-result-object v5

    if-nez v5, :cond_2

    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;

    invoke-direct {v1, v9, v3}, Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    :goto_0
    return-object v1

    :cond_2
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->peerPort0(I)I

    move-result v8

    sget-boolean v13, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    if-nez v13, :cond_4

    if-lez v8, :cond_3

    :goto_1
    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_3
    move v11, v12

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;

    invoke-direct {v1, v9, v3, v6}, Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;

    invoke-direct {v1, v9, v3}, Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method private static detachIOStreams()V
    .locals 3

    :try_start_0
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V

    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V

    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method private static native dup(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native dup2(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static declared-synchronized getChannel()Ljava/nio/channels/Channel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v1, Lsun/nio/ch/InheritedChannel;

    monitor-enter v1

    :try_start_0
    sget v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "/dev/null"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lsun/nio/ch/InheritedChannel;->open0(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    :cond_0
    sget-boolean v0, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    if-nez v0, :cond_1

    invoke-static {}, Lsun/nio/ch/InheritedChannel;->createChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    :cond_1
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    if-eqz v0, :cond_2

    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    invoke-static {v0}, Lsun/nio/ch/InheritedChannel;->checkAccess(Ljava/nio/channels/Channel;)V

    :cond_2
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native open0(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native peerAddress0(I)Ljava/net/InetAddress;
.end method

.method private static native peerPort0(I)I
.end method

.method private static native soType0(I)I
.end method
