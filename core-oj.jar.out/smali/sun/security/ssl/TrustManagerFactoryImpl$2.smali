.class final Lsun/security/ssl/TrustManagerFactoryImpl$2;
.super Ljava/lang/Object;
.source "TrustManagerFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$props:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 141
    .local p1, "val$props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

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

    .prologue
    .line 142
    invoke-virtual {p0}, Lsun/security/ssl/TrustManagerFactoryImpl$2;->run()Ljava/lang/Void;

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

    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    const-string/jumbo v1, "trustStore"

    .line 144
    const-string/jumbo v2, "javax.net.ssl.trustStore"

    .line 143
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    const-string/jumbo v1, "javaHome"

    .line 146
    const-string/jumbo v2, "java.home"

    .line 145
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    const-string/jumbo v1, "trustStoreType"

    .line 148
    const-string/jumbo v2, "javax.net.ssl.trustStoreType"

    .line 149
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    const-string/jumbo v1, "trustStoreProvider"

    .line 151
    const-string/jumbo v2, "javax.net.ssl.trustStoreProvider"

    const-string/jumbo v3, ""

    .line 150
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    const-string/jumbo v1, "trustStorePasswd"

    .line 153
    const-string/jumbo v2, "javax.net.ssl.trustStorePassword"

    const-string/jumbo v3, ""

    .line 152
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method
