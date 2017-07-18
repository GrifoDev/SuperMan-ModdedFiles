.class final Ljava/security/KeyStore$Builder$FileBuilder;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileBuilder"
.end annotation


# instance fields
.field private final context:Ljava/security/AccessControlContext;

.field private final file:Ljava/io/File;

.field private keyProtection:Ljava/security/KeyStore$ProtectionParameter;

.field private keyStore:Ljava/security/KeyStore;

.field private oldException:Ljava/lang/Throwable;

.field private protection:Ljava/security/KeyStore$ProtectionParameter;

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get1(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method static synthetic -get2(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic -get3(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 0

    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;

    return-object p1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/Provider;Ljava/io/File;Ljava/security/KeyStore$ProtectionParameter;Ljava/security/AccessControlContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder;->type:Ljava/lang/String;

    iput-object p2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/KeyStore$Builder$FileBuilder;->file:Ljava/io/File;

    iput-object p4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->protection:Ljava/security/KeyStore$ProtectionParameter;

    iput-object p5, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

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
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "Previous KeyStore instantiation failed"

    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_2
    new-instance v0, Ljava/security/KeyStore$Builder$FileBuilder$1;

    invoke-direct {v0, p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;-><init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->context:Ljava/security/AccessControlContext;

    invoke-static {v0, v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore;

    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;
    :try_end_3
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    new-instance v2, Ljava/security/KeyStoreException;

    const-string/jumbo v3, "KeyStore instantiation failed"

    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder;->oldException:Ljava/lang/Throwable;

    invoke-direct {v2, v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getKeyStore() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder;->keyProtection:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method
