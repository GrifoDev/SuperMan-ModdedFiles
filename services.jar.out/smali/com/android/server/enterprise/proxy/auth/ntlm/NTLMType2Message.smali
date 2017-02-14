.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;
.super Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;
.source "NTLMType2Message.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NTLMType2Message"


# instance fields
.field private contextData:[B

.field private flagsObtained:I

.field private serverChallengeNonce:[B

.field private targetData:[B

.field private targetName:Ljava/lang/String;

.field private type2MessageBytes:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMBaseMessage;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->processMessageString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlags(I)V

    return-void
.end method

.method private checkForValidData(II)Z
    .locals 3

    const/4 v1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isValidNTLMType2String()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    sget-object v2, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->NTLM_HEADER_BYTES:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Type2 Format Exception: Misplaced Header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Type2 Format Exception: Message Type Incorrect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContextData()[B
    .locals 5

    const/16 v4, 0x20

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    if-nez v1, :cond_1

    const/16 v1, 0x28

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v3, [B

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setContextData([B)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-object v1
.end method

.method protected getFlagsObtained()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v1, 0x14

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setFlagsObtained(I)V

    :cond_1
    iget v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return v0
.end method

.method protected getServerChallengeNonce()[B
    .locals 5

    const/16 v4, 0x18

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    if-nez v1, :cond_1

    const/16 v1, 0x20

    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->checkForValidData(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v3, [B

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/4 v2, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setServerChallengeNonce([B)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-object v1
.end method

.method protected getTargetData()[B
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetData([B)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-object v1
.end method

.method protected getTargetName()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    const/16 v4, 0xc

    invoke-static {v3, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityData([BI)[B

    move-result-object v2

    :try_start_0
    array-length v3, v2

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->getFlagsObtained()I

    move-result v1

    new-instance v4, Ljava/lang/String;

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    const-string/jumbo v3, "Cp850"

    :goto_0
    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->setTargetName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-object v3

    :cond_2
    :try_start_1
    const-string/jumbo v3, "UTF-16LE"
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->type2MessageBytes:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->isValidNTLMType2String()V

    return-void
.end method

.method protected setContextData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->contextData:[B

    return-void
.end method

.method protected setFlagsObtained(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->flagsObtained:I

    return-void
.end method

.method protected setServerChallengeNonce([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->serverChallengeNonce:[B

    return-void
.end method

.method protected setTargetData([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetData:[B

    return-void
.end method

.method protected setTargetName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMType2Message;->targetName:Ljava/lang/String;

    return-void
.end method
