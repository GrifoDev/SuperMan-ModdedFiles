.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$Delegate;
    }
.end annotation


# static fields
.field private static final INITIAL:I = 0x0

.field private static final IN_PROGRESS:I = 0x1


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private state:I


# direct methods
.method static synthetic -get0(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Ljava/security/MessageDigest;)Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method static synthetic -get2(Ljava/security/MessageDigest;)I
    .locals 1

    iget v0, p0, Ljava/security/MessageDigest;->state:I

    return v0
.end method

.method static synthetic -set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .locals 0

    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic -set1(Ljava/security/MessageDigest;I)I
    .locals 0

    iput p1, p0, Ljava/security/MessageDigest;->state:I

    return p1
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 153
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 7
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    const-string/jumbo v5, "MessageDigest"

    .line 187
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/String;

    .line 186
    invoke-static {p0, v5, v4}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "objs":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    instance-of v4, v4, Ljava/security/MessageDigest;

    if-eqz v4, :cond_0

    .line 189
    const/4 v4, 0x0

    aget-object v2, v3, v4

    check-cast v2, Ljava/security/MessageDigest;

    .line 190
    .local v2, "md":Ljava/security/MessageDigest;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, Ljava/security/Provider;

    iput-object v4, v2, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 191
    return-object v2

    .line 194
    .end local v2    # "md":Ljava/security/MessageDigest;
    :cond_0
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    check-cast v4, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v4, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 195
    .local v0, "delegate":Ljava/security/MessageDigest;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    check-cast v4, Ljava/security/Provider;

    iput-object v4, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v0

    .line 198
    .end local v0    # "delegate":Ljava/security/MessageDigest;
    .end local v3    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 241
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "missing provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 242
    :cond_1
    const-string/jumbo v3, "MessageDigest"

    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 243
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_2

    .line 244
    aget-object v1, v2, v4

    check-cast v1, Ljava/security/MessageDigest;

    .line 245
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 246
    return-object v1

    .line 249
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_2
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    aget-object v3, v2, v4

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 250
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 251
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .locals 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    if-nez p1, :cond_0

    .line 289
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "missing provider"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_0
    const-string/jumbo v3, "MessageDigest"

    invoke-static {p0, v3, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v2

    .line 291
    .local v2, "objs":[Ljava/lang/Object;
    aget-object v3, v2, v4

    instance-of v3, v3, Ljava/security/MessageDigest;

    if-eqz v3, :cond_1

    .line 292
    aget-object v1, v2, v4

    check-cast v1, Ljava/security/MessageDigest;

    .line 293
    .local v1, "md":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v1, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 294
    return-object v1

    .line 297
    .end local v1    # "md":Ljava/security/MessageDigest;
    :cond_1
    new-instance v0, Ljava/security/MessageDigest$Delegate;

    aget-object v3, v2, v4

    check-cast v3, Ljava/security/MessageDigestSpi;

    invoke-direct {v0, v3, p0}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 298
    .local v0, "delegate":Ljava/security/MessageDigest;
    aget-object v3, v2, v5

    check-cast v3, Ljava/security/Provider;

    iput-object v3, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 299
    return-object v0
.end method

.method public static isEqual([B[B)Z
    .locals 5
    .param p0, "digesta"    # [B
    .param p1, "digestb"    # [B

    .prologue
    const/4 v2, 0x1

    .line 461
    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_0

    .line 462
    return v2

    .line 465
    :cond_0
    const/4 v1, 0x0

    .line 467
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 468
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_1
    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 528
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 529
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public digest([BII)I
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 400
    if-nez p1, :cond_0

    .line 401
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No output buffer given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_1

    .line 404
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 405
    const-string/jumbo v2, "Output buffer too small for specified offset and length"

    .line 404
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    .line 408
    .local v0, "numBytes":I
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 409
    return v0
.end method

.method public digest()[B
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    .line 381
    .local v0, "result":[B
    const/4 v1, 0x0

    iput v1, p0, Ljava/security/MessageDigest;->state:I

    .line 382
    return-object v0
.end method

.method public digest([B)[B
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 426
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestLength()I
    .locals 5

    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v1

    .line 507
    .local v1, "digestLen":I
    if-nez v1, :cond_0

    .line 509
    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 510
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 511
    .local v0, "digest":[B
    array-length v4, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 512
    .end local v0    # "digest":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 513
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    return v1

    .line 516
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    return v1
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 476
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v1, " Message Digest from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget v1, p0, Ljava/security/MessageDigest;->state:I

    packed-switch v1, :pswitch_data_0

    .line 448
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 441
    :pswitch_0
    const-string/jumbo v1, "<initialized>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :pswitch_1
    const-string/jumbo v1, "<in progress>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    .line 319
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 317
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 364
    return-void
.end method

.method public update([B)V
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 350
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 351
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 349
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No input buffer given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    .line 338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 341
    const/4 v0, 0x1

    iput v0, p0, Ljava/security/MessageDigest;->state:I

    .line 333
    return-void
.end method
