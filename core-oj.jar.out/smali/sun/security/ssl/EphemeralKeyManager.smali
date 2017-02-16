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

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    .line 47
    new-instance v1, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-direct {v1, v3, v3}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    new-instance v1, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-direct {v1, v3, v3}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 46
    iput-object v0, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    .line 51
    return-void
.end method


# virtual methods
.method getRSAKeyPair(ZLjava/security/SecureRandom;)Ljava/security/KeyPair;
    .locals 10
    .param p1, "export"    # Z
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 60
    if-eqz p1, :cond_1

    .line 61
    const/16 v4, 0x200

    .line 62
    .local v4, "length":I
    const/4 v1, 0x0

    .line 68
    .local v1, "index":I
    :goto_0
    iget-object v6, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    monitor-enter v6

    .line 69
    :try_start_0
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    aget-object v5, v5, v1

    invoke-static {v5}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->-wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 70
    .local v3, "kp":Ljava/security/KeyPair;
    if-nez v3, :cond_0

    .line 72
    :try_start_1
    const-string/jumbo v5, "RSA"

    invoke-static {v5}, Lsun/security/ssl/JsseJce;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 73
    .local v2, "kgen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v2, v4, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 74
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    new-instance v7, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V

    aput-object v7, v5, v1

    .line 75
    iget-object v5, p0, Lsun/security/ssl/EphemeralKeyManager;->keys:[Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;

    aget-object v5, v5, v1

    invoke-static {v5}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->-wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .end local v2    # "kgen":Ljava/security/KeyPairGenerator;
    :cond_0
    :goto_1
    monitor-exit v6

    .line 80
    return-object v3

    .line 64
    .end local v1    # "index":I
    .end local v3    # "kp":Ljava/security/KeyPair;
    .end local v4    # "length":I
    :cond_1
    const/16 v4, 0x400

    .line 65
    .restart local v4    # "length":I
    const/4 v1, 0x1

    .restart local v1    # "index":I
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 76
    .restart local v3    # "kp":Ljava/security/KeyPair;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1
.end method
