.class Ljava/security/KeyStore$Builder$2$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder$2;
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
.field final synthetic this$2:Ljava/security/KeyStore$Builder$2;

.field final synthetic val$protection:Ljava/security/KeyStore$ProtectionParameter;

.field final synthetic val$provider:Ljava/security/Provider;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore$Builder$2;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 0

    iput-object p1, p0, Ljava/security/KeyStore$Builder$2$1;->this$2:Ljava/security/KeyStore$Builder$2;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$2$1;->val$provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$2$1;->val$type:Ljava/lang/String;

    iput-object p4, p0, Ljava/security/KeyStore$Builder$2$1;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

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

    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$2$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/KeyStore;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$provider:Ljava/security/Provider;

    if-nez v4, :cond_0

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$type:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v2, v4}, Ljava/security/KeyStore$SimpleLoadStoreParameter;-><init>(Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v4, v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    :goto_1
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->this$2:Ljava/security/KeyStore$Builder$2;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/security/KeyStore$Builder$2;->-set0(Ljava/security/KeyStore$Builder$2;Z)Z

    return-object v1

    :cond_0
    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->val$type:Ljava/lang/String;

    iget-object v5, p0, Ljava/security/KeyStore$Builder$2$1;->val$provider:Ljava/security/Provider;

    invoke-static {v4, v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/UnrecoverableKeyException;

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2$1;->this$2:Ljava/security/KeyStore$Builder$2;

    invoke-static {v4, v0}, Ljava/security/KeyStore$Builder$2;->-set1(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v0
.end method
