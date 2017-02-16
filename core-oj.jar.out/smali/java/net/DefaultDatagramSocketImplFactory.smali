.class Ljava/net/DefaultDatagramSocketImplFactory;
.super Ljava/lang/Object;
.source "DefaultDatagramSocketImplFactory.java"


# static fields
.field static prefixImplClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 38
    sput-object v3, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    .line 41
    const/4 v2, 0x0

    .line 44
    .local v2, "prefix":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v4, "impl.prefix"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 45
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "java.net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "DatagramSocketImpl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find class: java.net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50
    const-string/jumbo v5, "DatagramSocketImpl: check impl.prefix property"

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDatagramSocketImpl(Z)Ljava/net/DatagramSocketImpl;
    .locals 3
    .param p0, "isMulticast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v1, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 65
    :try_start_0
    sget-object v1, Ljava/net/DefaultDatagramSocketImplFactory;->prefixImplClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/DatagramSocketImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/SocketException;

    const-string/jumbo v2, "can\'t instantiate DatagramSocketImpl"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V

    return-object v1
.end method
