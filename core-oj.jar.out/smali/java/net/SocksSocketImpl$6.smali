.class Ljava/net/SocksSocketImpl$6;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->socksBind(Ljava/net/InetSocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/SocksSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/SocksSocketImpl;)V
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$6;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    new-instance v1, Ljava/net/Socket;

    new-instance v2, Ljava/net/PlainSocketImpl;

    invoke-direct {v2}, Ljava/net/PlainSocketImpl;-><init>()V

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set2(Ljava/net/SocksSocketImpl;Ljava/net/Socket;)Ljava/net/Socket;

    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v0}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v2}, Ljava/net/SocksSocketImpl;->-get1(Ljava/net/SocksSocketImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v3}, Ljava/net/SocksSocketImpl;->-get2(Ljava/net/SocksSocketImpl;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v1}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v0, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$6;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v1}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    const/4 v0, 0x0

    return-object v0
.end method
