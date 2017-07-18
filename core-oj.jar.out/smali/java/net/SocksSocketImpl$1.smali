.class Ljava/net/SocksSocketImpl$1;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->privilegedConnect(Ljava/lang/String;II)V
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

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iput-object p2, p0, Ljava/net/SocksSocketImpl$1;->val$host:Ljava/lang/String;

    iput p3, p0, Ljava/net/SocksSocketImpl$1;->val$port:I

    iput p4, p0, Ljava/net/SocksSocketImpl$1;->val$timeout:I

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

    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->val$host:Ljava/lang/String;

    iget v2, p0, Ljava/net/SocksSocketImpl$1;->val$port:I

    iget v3, p0, Ljava/net/SocksSocketImpl$1;->val$timeout:I

    invoke-static {v0, v1, v2, v3}, Ljava/net/SocksSocketImpl;->-wrap0(Ljava/net/SocksSocketImpl;Ljava/lang/String;II)V

    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set0(Ljava/net/SocksSocketImpl;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v0, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    iget-object v1, p0, Ljava/net/SocksSocketImpl$1;->this$0:Ljava/net/SocksSocketImpl;

    invoke-virtual {v1}, Ljava/net/AbstractPlainSocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/SocksSocketImpl;->-set1(Ljava/net/SocksSocketImpl;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    const/4 v0, 0x0

    return-object v0
.end method
