.class public interface abstract Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
.super Ljava/lang/Object;
.source "ProxyAuthenticator.java"


# virtual methods
.method public abstract getAuthHeaderKey()Ljava/lang/String;
.end method

.method public abstract getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract verifyProxyAuthCredentials(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
