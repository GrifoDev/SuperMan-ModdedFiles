.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;
.super Ljava/lang/Object;
.source "NTLMUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getSecurityData([BI)[B
    .locals 4

    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityDataLength([BI)I

    move-result v0

    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityDataOffset([BI)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method private static getSecurityDataLength([BI)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method private static getSecurityDataOffset([BI)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method protected static getUnsignedValue([BII)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected static setSecurityDataAndAttributes([BII[B)V
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->writeSecurityDatalength([BII)V

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->writeSecurityDataOffset([BII)V

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p3

    goto :goto_0
.end method

.method protected static setUnsignedValue([BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p1, v0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeSecurityDataOffset([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    return-void
.end method

.method private static writeSecurityDatalength([BII)V
    .locals 2

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    return-void
.end method
