.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;
.super Ljava/lang/Thread;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnectionWithAuthentication"
.end annotation


# instance fields
.field private authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

.field private isVerificationNeeded:Z

.field private server:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field private threadId:Ljava/lang/String;

.field private userCredentialBase64:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->isVerificationNeeded:Z

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->isVerificationNeeded:Z

    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLjava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;ZLjava/net/Socket;)V

    return-void
.end method

.method private writeToServerSocket(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    if-nez v6, :cond_0

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "Invalid threadid cannot obtain state cache."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getUrlStringForAuth()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHttpVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    iget-boolean v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->isVerificationNeeded:Z

    if-eqz v6, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHostname()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getPort()I

    move-result v9

    invoke-static {v7, v8, v9, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap6(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-set0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "In ProxyConnectionWithAuthentication: mAuthenticator = null. Aborting this thread."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    const-string/jumbo v7, "HTTP/1.1 500 Internal Server Error\r\n"

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap18(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getHostname()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getPort()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap11(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-interface {v6, v7, v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ": Re-authentication failed in ProxyConnectionWithAuthentication for threadID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ". Restarting UI activity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v3

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "In ProxyConnectionWithAuthentication Resetting connection to server."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->startCredentialsActivity(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap19(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "In ProxyConnectionWithAuthentication: Exception occured during verification. Ending this thread."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v1

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZATION_IN_PROGRESS:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->CREDENTIAL_PRESENT_NOT_AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;->AUTHORIZED:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap19(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;)V

    :cond_5
    const-string/jumbo v6, "KnoxVpnProxyServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Verification success. Authorized? = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap4(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "Source socket has already been closed. Nothing to do."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "Destination socket has already been closed. Nothing to do."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    return-void

    :cond_7
    const-string/jumbo v6, "KnoxVpnProxyServer"

    const-string/jumbo v7, "In ProxyConnectionWithAuthentication:run. Sockets all OK."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->userCredentialBase64:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v8

    invoke-interface {v6, v7, v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getRequestLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->writeToServerSocket(Ljava/net/Socket;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->writeToServerSocket(Ljava/net/Socket;Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    if-eqz v0, :cond_9

    const/4 v5, 0x0

    aget-object v5, v0, v5

    :cond_9
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v8

    invoke-static {v6, v7, v5, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V

    :goto_0
    const-string/jumbo v5, "KnoxVpnProxyServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "In ProxyConnectionWithAuthentication:run. Removing thread"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    return-void

    :cond_b
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->authenticationStateCache:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->getSourceSocket()Ljava/net/Socket;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap12(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnectionWithAuthentication;->threadId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, ". Exception."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
