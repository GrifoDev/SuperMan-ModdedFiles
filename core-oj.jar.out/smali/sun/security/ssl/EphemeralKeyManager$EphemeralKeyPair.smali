.class Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;
.super Ljava/lang/Object;
.source "EphemeralKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/EphemeralKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EphemeralKeyPair"
.end annotation


# static fields
.field private static final MAX_USE:I = 0xc8

.field private static final USE_INTERVAL:J = 0x36ee80L


# instance fields
.field private expirationTime:J

.field private keyPair:Ljava/security/KeyPair;

.field private uses:I


# direct methods
.method static synthetic -wrap0(Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)Ljava/security/KeyPair;
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Ljava/security/KeyPair;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->expirationTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/KeyPair;Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;-><init>(Ljava/security/KeyPair;)V

    return-void
.end method

.method private getKeyPair()Ljava/security/KeyPair;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    return-object v1

    :cond_0
    iget v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    iget-object v0, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method private isValid()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->keyPair:Ljava/security/KeyPair;

    if-eqz v1, :cond_0

    iget v1, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->uses:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lsun/security/ssl/EphemeralKeyManager$EphemeralKeyPair;->expirationTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
