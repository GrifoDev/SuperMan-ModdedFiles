.class public interface abstract Lcom/android/server/enterprise/proxy/auth/ProxyAuthenticator;
.super Ljava/lang/Object;
.source "ProxyAuthenticator.java"


# virtual methods
.method public abstract buildAuthenticationHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isCredentialRequired()Z
.end method

.method public abstract verifyAuthenticationCredentials(Ljava/lang/String;Ljava/net/Proxy;[Ljava/lang/String;)I
.end method
