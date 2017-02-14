.class public final Ljava/net/StandardSocketOptions;
.super Ljava/lang/Object;
.source "StandardSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/StandardSocketOptions$StdSocketOption;
    }
.end annotation


# static fields
.field public static final IP_MULTICAST_IF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_MULTICAST_LOOP:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_MULTICAST_TTL:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IP_TOS:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_BROADCAST:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_KEEPALIVE:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_LINGER:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_RCVBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_REUSEADDR:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SO_SNDBUF:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TCP_NODELAY:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "SO_BROADCAST"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_BROADCAST:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "SO_KEEPALIVE"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_KEEPALIVE:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "SO_SNDBUF"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_SNDBUF:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "SO_RCVBUF"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "SO_REUSEADDR"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "SO_LINGER"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->SO_LINGER:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "IP_TOS"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "IP_MULTICAST_IF"

    const-class v2, Ljava/net/NetworkInterface;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_IF:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "IP_MULTICAST_TTL"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_TTL:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "IP_MULTICAST_LOOP"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->IP_MULTICAST_LOOP:Ljava/net/SocketOption;

    new-instance v0, Ljava/net/StandardSocketOptions$StdSocketOption;

    const-string/jumbo v1, "TCP_NODELAY"

    const-class v2, Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/net/StandardSocketOptions$StdSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljava/net/StandardSocketOptions;->TCP_NODELAY:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
