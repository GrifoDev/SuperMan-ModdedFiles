.class Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;
.super Ljava/lang/Object;
.source "SSLSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

.field final synthetic val$l:Ljavax/net/ssl/HandshakeCompletedListener;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->this$1:Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    iput-object p2, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->val$l:Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->val$l:Ljavax/net/ssl/HandshakeCompletedListener;

    iget-object v1, p0, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread$1;->this$1:Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;

    invoke-static {v1}, Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;->-get0(Lsun/security/ssl/SSLSocketImpl$NotifyHandshakeThread;)Ljavax/net/ssl/HandshakeCompletedEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V

    const/4 v0, 0x0

    return-object v0
.end method
