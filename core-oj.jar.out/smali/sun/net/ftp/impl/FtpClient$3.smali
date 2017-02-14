.class Lsun/net/ftp/impl/FtpClient$3;
.super Ljava/lang/Object;
.source "FtpClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
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
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/ftp/impl/FtpClient;


# direct methods
.method constructor <init>(Lsun/net/ftp/impl/FtpClient;)V
    .locals 0

    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient$3;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient$3;->run()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient$3;->this$0:Lsun/net/ftp/impl/FtpClient;

    invoke-static {v0}, Lsun/net/ftp/impl/FtpClient;->-get5(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
