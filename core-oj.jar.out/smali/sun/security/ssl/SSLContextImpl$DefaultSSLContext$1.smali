.class final Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 546
    .local p1, "val$props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    const-string/jumbo v1, "keyStore"

    .line 549
    const-string/jumbo v2, "javax.net.ssl.keyStore"

    const-string/jumbo v3, ""

    .line 548
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    const-string/jumbo v1, "keyStoreType"

    .line 551
    const-string/jumbo v2, "javax.net.ssl.keyStoreType"

    .line 552
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    const-string/jumbo v1, "keyStoreProvider"

    .line 554
    const-string/jumbo v2, "javax.net.ssl.keyStoreProvider"

    const-string/jumbo v3, ""

    .line 553
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    const-string/jumbo v1, "keyStorePasswd"

    .line 556
    const-string/jumbo v2, "javax.net.ssl.keyStorePassword"

    const-string/jumbo v3, ""

    .line 555
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const/4 v0, 0x0

    return-object v0
.end method
