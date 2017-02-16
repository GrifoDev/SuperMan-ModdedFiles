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

    .prologue
    const/4 v1, 0x0

    const-class v0, Lsun/nio/ch/InheritedChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    .line 58
    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    .line 200
    sput-boolean v1, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    .line 201
    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    .line 39
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAccess(Ljava/nio/channels/Channel;)V
    .locals 3
    .param p0, "c"    # Ljava/nio/channels/Channel;

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 131
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 133
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string/jumbo v2, "inheritedChannel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 129
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

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 151
    invoke-static {v12}, Lsun/nio/ch/InheritedChannel;->dup(I)I

    move-result v4

    .line 157
    .local v4, "fdVal":I
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->soType0(I)I

    move-result v10

    .line 158
    .local v10, "st":I
    if-eq v10, v11, :cond_0

    const/4 v13, 0x2

    if-eq v10, v13, :cond_0

    .line 159
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->close0(I)V

    .line 160
    return-object v14

    .line 168
    :cond_0
    new-array v7, v11, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v7, v12

    .line 169
    .local v7, "paramTypes":[Ljava/lang/Class;
    const-string/jumbo v13, "java.io.FileDescriptor"

    invoke-static {v13, v7}, Lsun/nio/ch/Reflect;->lookupConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 171
    .local v2, "ctr":Ljava/lang/reflect/Constructor;
    new-array v0, v11, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v0, v12

    .line 172
    .local v0, "args":[Ljava/lang/Object;
    invoke-static {v2, v0}, Lsun/nio/ch/Reflect;->invoke(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileDescriptor;

    .line 180
    .local v3, "fd":Ljava/io/FileDescriptor;
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v9

    .line 181
    .local v9, "provider":Ljava/nio/channels/spi/SelectorProvider;
    sget-boolean v13, Lsun/nio/ch/InheritedChannel;->-assertionsDisabled:Z

    if-nez v13, :cond_1

    instance-of v13, v9, Lsun/nio/ch/SelectorProviderImpl;

    if-nez v13, :cond_1

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 184
    :cond_1
    if-ne v10, v11, :cond_5

    .line 185
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->peerAddress0(I)Ljava/net/InetAddress;

    move-result-object v5

    .line 186
    .local v5, "ia":Ljava/net/InetAddress;
    if-nez v5, :cond_2

    .line 187
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;

    invoke-direct {v1, v9, v3}, Lsun/nio/ch/InheritedChannel$InheritedServerSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    .line 197
    .end local v5    # "ia":Ljava/net/InetAddress;
    .local v1, "c":Ljava/nio/channels/Channel;
    :goto_0
    return-object v1

    .line 189
    .end local v1    # "c":Ljava/nio/channels/Channel;
    .restart local v5    # "ia":Ljava/net/InetAddress;
    :cond_2
    invoke-static {v4}, Lsun/nio/ch/InheritedChannel;->peerPort0(I)I

    move-result v8

    .line 190
    .local v8, "port":I
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

    .line 191
    :cond_4
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v5, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 192
    .local v6, "isa":Ljava/net/InetSocketAddress;
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;

    invoke-direct {v1, v9, v3, v6}, Lsun/nio/ch/InheritedChannel$InheritedSocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V

    .restart local v1    # "c":Ljava/nio/channels/Channel;
    goto :goto_0

    .line 195
    .end local v1    # "c":Ljava/nio/channels/Channel;
    .end local v5    # "ia":Ljava/net/InetAddress;
    .end local v6    # "isa":Ljava/net/InetSocketAddress;
    .end local v8    # "port":I
    :cond_5
    new-instance v1, Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;

    invoke-direct {v1, v9, v3}, Lsun/nio/ch/InheritedChannel$InheritedDatagramChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Ljava/io/FileDescriptor;)V

    .restart local v1    # "c":Ljava/nio/channels/Channel;
    goto :goto_0
.end method

.method private static detachIOStreams()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V

    .line 63
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V

    .line 64
    sget v1, Lsun/nio/ch/InheritedChannel;->devnull:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lsun/nio/ch/InheritedChannel;->dup2(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ioe":Ljava/io/IOException;
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

    .prologue
    const-class v1, Lsun/nio/ch/InheritedChannel;

    monitor-enter v1

    .line 208
    :try_start_0
    sget v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    if-gez v0, :cond_0

    .line 209
    const-string/jumbo v0, "/dev/null"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lsun/nio/ch/InheritedChannel;->open0(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lsun/nio/ch/InheritedChannel;->devnull:I

    .line 213
    :cond_0
    sget-boolean v0, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    if-nez v0, :cond_1

    .line 214
    invoke-static {}, Lsun/nio/ch/InheritedChannel;->createChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lsun/nio/ch/InheritedChannel;->haveChannel:Z

    .line 220
    :cond_1
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    if-eqz v0, :cond_2

    .line 221
    sget-object v0, Lsun/nio/ch/InheritedChannel;->channel:Ljava/nio/channels/Channel;

    invoke-static {v0}, Lsun/nio/ch/InheritedChannel;->checkAccess(Ljava/nio/channels/Channel;)V

    .line 223
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
