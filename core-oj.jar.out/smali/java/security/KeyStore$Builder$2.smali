.class final Ljava/security/KeyStore$Builder$2;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder;->newInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder$2$1;
    }
.end annotation


# instance fields
.field private final action:Ljava/security/PrivilegedExceptionAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedExceptionAction",
            "<",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private volatile getCalled:Z

.field private oldException:Ljava/io/IOException;

.field final synthetic val$context:Ljava/security/AccessControlContext;

.field final synthetic val$protection:Ljava/security/KeyStore$ProtectionParameter;

.field final synthetic val$provider:Ljava/security/Provider;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Ljava/security/KeyStore$Builder$2;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/security/KeyStore$Builder$2;->getCalled:Z

    return p1
.end method

.method static synthetic -set1(Ljava/security/KeyStore$Builder$2;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    return-object p1
.end method

.method constructor <init>(Ljava/security/AccessControlContext;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Ljava/security/KeyStore$Builder$2;->val$context:Ljava/security/AccessControlContext;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    iput-object p4, p0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    new-instance v0, Ljava/security/KeyStore$Builder$2$1;

    iget-object v1, p0, Ljava/security/KeyStore$Builder$2;->val$provider:Ljava/security/Provider;

    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->val$type:Ljava/lang/String;

    iget-object v3, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/KeyStore$Builder$2$1;-><init>(Ljava/security/KeyStore$Builder$2;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)V

    iput-object v0, p0, Ljava/security/KeyStore$Builder$2;->action:Ljava/security/PrivilegedExceptionAction;

    return-void
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Previous KeyStore instantiation failed"

    iget-object v4, p0, Ljava/security/KeyStore$Builder$2;->oldException:Ljava/io/IOException;

    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/security/KeyStore$Builder$2;->action:Ljava/security/PrivilegedExceptionAction;

    iget-object v3, p0, Ljava/security/KeyStore$Builder$2;->val$context:Ljava/security/AccessControlContext;

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "KeyStore instantiation failed"

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$2;->getCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$2;->val$protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method
