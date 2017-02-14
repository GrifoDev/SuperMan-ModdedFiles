.class public Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static final ADDITIONAL_FIELD_EXTRA_ONLY:I = 0x2

.field public static final ADDITIONAL_FIELD_NONE:I = 0x0

.field public static final ADDITIONAL_FIELD_UNIFIED_EXIST:I = 0x3

.field public static final ADDITIONAL_FIELD_URI_ONLY:I = 0x1

.field public static final API_STATE_DEFAULT:I = 0x0

.field public static final API_STATE_STARTCOVERAUTH:I = 0x1

.field public static final API_STATE_STOPCOVERAUTH:I = 0x3

.field public static final API_STATE_TRANCEIVEAUTHDATA:I = 0x2

.field public static final AUTH_FAIL_REASON_AUTHENTICATION_TRANSACTION:I = 0x2d

.field public static final AUTH_FAIL_REASON_AUTH_FAILED:I = 0x1

.field public static final AUTH_FAIL_REASON_COMMAND_DATA_LOST:I = 0x15

.field public static final AUTH_FAIL_REASON_COMMAND_DUPLICATED:I = 0x18

.field public static final AUTH_FAIL_REASON_COMMAND_LENGTH_INVALID:I = 0x19

.field public static final AUTH_FAIL_REASON_COMMAND_NULL:I = 0x1a

.field public static final AUTH_FAIL_REASON_COMMAND_OUT_OF_SEQUENCE:I = 0x17

.field public static final AUTH_FAIL_REASON_COMMAND_REJECTED:I = 0x14

.field public static final AUTH_FAIL_REASON_COMMAND_TIMEOUT:I = 0x16

.field public static final AUTH_FAIL_REASON_COMMAND_UNDEFINED:I = 0x1b

.field public static final AUTH_FAIL_REASON_CONECTIVITY_BUSY:I = 0xd

.field public static final AUTH_FAIL_REASON_CONECTIVITY_DOWN:I = 0xc

.field public static final AUTH_FAIL_REASON_CONECTIVITY_ERROR:I = 0xa

.field public static final AUTH_FAIL_REASON_CONECTIVITY_MAXIMUM_CONNECTION_REACHED:I = 0xb

.field public static final AUTH_FAIL_REASON_CONNECTIVITY_EXCEPTION:I = 0xe

.field public static final AUTH_FAIL_REASON_FIRMWARE_DOWNLOAD:I = 0x29

.field public static final AUTH_FAIL_REASON_INTERNAL_ERROR:I = 0x5a

.field public static final AUTH_FAIL_REASON_LED_TRANSACTION:I = 0x28

.field public static final AUTH_FAIL_REASON_NFC_TURNING_OFF:I = 0x2b

.field public static final AUTH_FAIL_REASON_NFC_TURNING_ON:I = 0x2a

.field public static final AUTH_FAIL_REASON_SESSION_BUSY:I = 0x1e

.field public static final AUTH_FAIL_REASON_SESSION_INTERRUPTED:I = 0x20

.field public static final AUTH_FAIL_REASON_SESSION_TIMEOUT:I = 0x1f

.field public static final AUTH_FAIL_REASON_TAG_PRESENT:I = 0x2e

.field public static final AUTH_FAIL_REASON_TIMEOUT:I = 0x5b

.field public static final AUTH_FAIL_REASON_WIRELESS_CHARGING:I = 0x2c

.field public static final AUTH_REASON:Ljava/lang/String; = "reason"

.field public static final AUTH_SUCCESS:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_AUTHENTICATION_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "connectivity_type"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field apiState:I

.field isKeyChanged:Z

.field isUrlExist:I

.field mAuthenticationResult:Z

.field private mBundle:Landroid/os/Bundle;

.field mByteArrayExtraData:[B

.field mByteArrayManagerURI:[B

.field mConnectivityType:I

.field mExtraID:[B

.field mReason:I

.field mRequestPkg:Ljava/lang/String;

.field mStringExtraData:Ljava/lang/String;

.field mStringManagerURI:Ljava/lang/String;

.field needKeyChange:Z

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mAuthenticationResult:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const-string/jumbo v2, "null"

    return-object v2
.end method

.method public getApiState()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return v0
.end method

.method public getByteArrayExtraData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    return-object v0
.end method

.method public getByteArrayManagerURI()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return v0
.end method

.method public getExtraId()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    return v0
.end method

.method public getRequestPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultBundle()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getStringManagerURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return v0
.end method

.method public needKeyChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return v0
.end method

.method public setApiState(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return-void
.end method

.method public setConnectivityType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return-void
.end method

.method public setExtraData([B)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExtraId([B)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v1, p1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    if-ne v0, v4, :cond_1

    iput v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_2

    iput v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_0

    iput v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExtraId : data is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKeyChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return-void
.end method

.method public setManagerURI([B)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNeedKeyChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setReason(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setRequestPackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-void
.end method
