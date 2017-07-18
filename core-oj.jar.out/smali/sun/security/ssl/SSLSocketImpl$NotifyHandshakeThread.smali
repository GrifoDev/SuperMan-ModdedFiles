.class Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;
.super Ljava/lang/Thread;
.source "SSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyHandshakeThread"
.end annotation


# instance fields
.field private event:Ljavax/net/ssl/HandshakeCompletedEvent;

.field private targets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;)Ljavax/net/ssl/HandshakeCompletedEvent;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->event:Ljavax/net/ssl/HandshakeCompletedEvent;

    return-object v0
.end method

.method constructor <init>(Ljava/util/Set;Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            "Ljava/security/AccessControlContext;",
            ">;>;",
            "Ljavax/net/ssl/HandshakeCompletedEvent;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "HandshakeCompletedNotify-Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->targets:Ljava/util/Set;

    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->event:Ljavax/net/ssl/HandshakeCompletedEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v4, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->targets:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    new-instance v4, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;

    invoke-direct {v4, p0, v3}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;-><init>(Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;Ljavax/net/ssl/HandshakeCompletedListener;)V

    invoke-static {v4, v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
