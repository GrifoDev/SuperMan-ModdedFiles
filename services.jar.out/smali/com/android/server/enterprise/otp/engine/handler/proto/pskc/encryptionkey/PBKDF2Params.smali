.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;
.super Ljava/lang/Object;
.source "PBKDF2Params.java"


# instance fields
.field private iterationCount:I

.field private keyLength:I

.field private salt:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteToStringSalt([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->iterationCount:I

    return v0
.end method

.method public getKeyLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->keyLength:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->salt:[B

    return-object v0
.end method

.method public setIterationCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->iterationCount:I

    return-void
.end method

.method public setKeyLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->keyLength:I

    return-void
.end method

.method public setSalt(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->salt:[B

    return-void
.end method
