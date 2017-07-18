.class final Lsun/security/ssl/EphemeralKeyManager;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;
    }
.end annotation


# static fields
.field private static final INDEX_RSA1024:I = 0x1

.field private static final INDEX_RSA512:I


# instance fields
.field private final keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    new-instance v1, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-direct {v1, v3, v3}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-direct {v1, v3, v3}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    return-void
.end method


# virtual methods
.method getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;
    .locals 10

    if-eqz p1, :cond_1

    const/16 v4, 0x200

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    aget-object v5, v5, v1

    invoke-static {v5}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->-wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    :try_start_1
    const-string/jumbo v5, "RSA"

    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    new-instance v7, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    aput-object v7, v5, v1

    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    aget-object v5, v5, v1

    invoke-static {v5}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->-wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :cond_0
    :goto_1
    monitor-exit v6

    return-object v3

    :cond_1
    const/16 v4, 0x400

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_0
    move-exception v0

    goto :goto_1
.end method
