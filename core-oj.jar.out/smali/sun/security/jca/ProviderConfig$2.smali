.class Lsun/security/jca/ProviderConfig$2;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;
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
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/jca/ProviderConfig;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderConfig;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;

    .prologue
    .line 206
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$2;->run()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/Provider;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 208
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 209
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loading provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 214
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    iget-object v4, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-static {v4}, Lsun/security/jca/ProviderConfig;->-get0(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lsun/security/jca/ProviderConfig;->-wrap0(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 215
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    iget-object v4, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-static {v4}, Lsun/security/jca/ProviderConfig;->-get0(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lsun/security/jca/ProviderConfig;->-wrap0(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 219
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    .line 222
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 227
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error loading provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 231
    :cond_1
    instance-of v3, v2, Ljava/security/ProviderException;

    if-eqz v3, :cond_3

    .line 232
    check-cast v2, Ljava/security/ProviderException;

    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    .line 224
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v0

    .restart local v2    # "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v3, :cond_4

    .line 236
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    invoke-static {v3}, Lsun/security/jca/ProviderConfig;->-wrap1(Lsun/security/jca/ProviderConfig;)V

    .line 238
    :cond_4
    return-object v6
.end method
