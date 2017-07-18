.class final Lsun/security/ssl/SessionId;
.super Ljava/lang/Object;
.source "SessionId.java"


# instance fields
.field private sessionId:[B


# direct methods
.method constructor <init>(ZLjava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Lsun/security/ssl/RandomCookie;

    invoke-direct {v0, p2}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    iget-object v0, v0, Lsun/security/ssl/RandomCookie;->random_bytes:[B

    iput-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    goto :goto_0
.end method

.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x0

    instance-of v3, p1, Lsun/security/ssl/SessionId;

    if-nez v3, :cond_0

    return v5

    :cond_0
    move-object v2, p1

    nop

    nop

    invoke-virtual {v2}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    array-length v3, v0

    iget-object v4, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    array-length v4, v4

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3

    aget-byte v3, v0, v1

    iget-object v4, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_2

    return v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method getId()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method length()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    array-length v1, v3

    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lsun/security/ssl/SessionId;->sessionId:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_0

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
