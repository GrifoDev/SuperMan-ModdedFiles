.class public Lcom/android/server/enterprise/proxy/auth/AuthenticationState;
.super Ljava/lang/Object;
.source "AuthenticationState.java"


# instance fields
.field private proxy:Ljava/net/Proxy;

.field private proxyAuthenticator:Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

.field private requestLine:Ljava/lang/String;

.field private source:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/Proxy;Ljava/lang/String;Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->source:Ljava/net/Socket;

    iput-object p2, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->requestLine:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxyAuthenticator:Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    return-void
.end method


# virtual methods
.method public getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxyAuthenticator()Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->proxyAuthenticator:Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/AuthenticationState;->source:Ljava/net/Socket;

    return-object v0
.end method
