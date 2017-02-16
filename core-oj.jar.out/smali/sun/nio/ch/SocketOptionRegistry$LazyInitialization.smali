.class Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketOptionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyInitialization"
.end annotation


# static fields
.field static final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/nio/ch/SocketOptionRegistry$RegistryKey;",
            "Lsun/nio/ch/OptionKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options:Ljava/util/Map;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static options()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lsun/nio/ch/SocketOptionRegistry$RegistryKey;",
            "Lsun/nio/ch/OptionKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x6

    const/16 v6, 0x29

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lsun/nio/ch/SocketOptionRegistry$RegistryKey;Lsun/nio/ch/OptionKey;>;"
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    invoke-direct {v2, v4, v7}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x9

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0xd

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/4 v3, 0x7

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x8

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/4 v3, 0x2

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    invoke-direct {v2, v7, v4}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    invoke-direct {v2, v5, v4}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x20

    invoke-direct {v2, v5, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x21

    invoke-direct {v2, v5, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x22

    invoke-direct {v2, v5, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x11

    invoke-direct {v2, v6, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x12

    invoke-direct {v2, v6, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardProtocolFamily;->INET6:Ljava/net/StandardProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0x13

    invoke-direct {v2, v6, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    sget-object v2, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    sget-object v3, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-direct {v1, v2, v3}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    new-instance v2, Lsun/nio/ch/OptionKey;

    const/16 v3, 0xa

    invoke-direct {v2, v4, v3}, Lsun/nio/ch/OptionKey;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v0
.end method
