.class Ljava/security/KeyStore$Builder$FileBuilder$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder$FileBuilder;->getKeyStore()Ljava/security/KeyStore;
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
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/security/KeyStore$Builder$FileBuilder;


# direct methods
.method constructor <init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    .locals 0

    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

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

    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v2}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    instance-of v2, v2, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/UnrecoverableKeyException;

    if-nez v2, :cond_1

    :cond_2
    throw v0
.end method

.method public run0()Ljava/security/KeyStore;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    instance-of v6, v6, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v6, :cond_2

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v6}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v5

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    iget-object v7, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;

    :goto_1
    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v4

    :cond_1
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v4

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v6}, Ljava/security/KeyStore$Builder$FileBuilder;->-get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {v6}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v1

    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Password for keystore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/security/auth/callback/Callback;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v1, v6}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v5

    if-nez v5, :cond_4

    new-instance v6, Ljava/security/KeyStoreException;

    const-string/jumbo v7, "No password provided"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_3
    throw v6

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    iget-object v6, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$2:Ljava/security/KeyStore$Builder$FileBuilder;

    new-instance v7, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v7, v5}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-static {v6, v7}, Ljava/security/KeyStore$Builder$FileBuilder;->-set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v6

    goto :goto_2
.end method
