.class public Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;
.super Ljava/lang/Object;
.source "DirectDataProvision.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/provision/IProvision;


# instance fields
.field context:Landroid/content/Context;

.field private dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;


# direct methods
.method static synthetic -get0(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;Landroid/os/Bundle;Z)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->prepareDataForSecureStorage(Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-void
.end method

.method private doProvisionInThread(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;-><init>(Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision$1;->start()V

    return-void
.end method

.method private prepareDataForSecureStorage(Landroid/os/Bundle;Z)I
    .locals 13

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v11, "OTP_OATH_PROTOCOL"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v11, 0x102

    if-ne v3, v11, :cond_2

    const-string/jumbo v11, "OCRA_SUITE"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_1

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v4}, Lcom/android/server/enterprise/otp/OCRACheck;->isOcraSuiteValid(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const/16 v11, 0x401

    return v11

    :cond_1
    if-nez p2, :cond_0

    :cond_2
    const-string/jumbo v11, "SECRET_ENCODING_TYPE"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/16 v11, 0x163

    if-ne v8, v11, :cond_a

    const-string/jumbo v11, "SHARED_SECRET"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string/jumbo v11, "[a-fA-F0-9]*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v9

    :goto_0
    if-nez v7, :cond_3

    const-string/jumbo v11, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_3

    const-string/jumbo v11, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    const-string/jumbo v11, "[a-fA-F0-9]*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    :goto_1
    const-string/jumbo v11, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v7, :cond_8

    if-eqz v10, :cond_8

    const-string/jumbo v11, "[a-fA-F0-9]*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    :goto_2
    const-string/jumbo v11, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v7, :cond_9

    if-eqz v10, :cond_9

    const-string/jumbo v11, "[a-fA-F0-9]*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    :cond_3
    :goto_3
    const-string/jumbo v11, "SHARED_SECRET"

    invoke-virtual {p1, v11, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v11, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x186

    if-eq v11, v12, :cond_4

    const-string/jumbo v11, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v11, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v11, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v11, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v11, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v11, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_4
    return v7

    :cond_5
    invoke-static {v4}, Lcom/android/server/enterprise/otp/OCRACheck;->isOtpServiceSupportPresent(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    return v7

    :cond_6
    const-string/jumbo v11, "DirectDataProvision::prepareDataForSecureStorage shared secret is not in proper hex format"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v7, 0x401

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v11, "DirectDataProvision::prepareDataForSecureStorage encryption_iv is not in proper hex format"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v7, 0x401

    goto :goto_1

    :cond_8
    const-string/jumbo v11, "DirectDataProvision::prepareDataForSecureStorage pbe_salt is not in proper hex format"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v7, 0x401

    goto :goto_2

    :cond_9
    const-string/jumbo v11, "DirectDataProvision::prepareDataForSecureStorage pbe_pwd is not in proper hex format"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v7, 0x401

    goto :goto_3

    :cond_a
    const/16 v11, 0x161

    if-ne v8, v11, :cond_b

    :try_start_0
    const-string/jumbo v11, "SHARED_SECRET"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v9

    const-string/jumbo v11, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_3

    const-string/jumbo v11, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v11, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v11, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/OTPInternal;->removePaddingInBase32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Base32;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto/16 :goto_3

    :catch_0
    move-exception v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DirectDataProvision::IllegalArgumentException - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v11, 0x401

    return v11

    :cond_b
    const/16 v11, 0x162

    if-ne v8, v11, :cond_c

    :try_start_1
    const-string/jumbo v11, "SHARED_SECRET"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    const-string/jumbo v11, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/16 v12, 0x186

    if-eq v11, v12, :cond_3

    const-string/jumbo v11, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_3

    const-string/jumbo v11, "SECRET_ENCRYPTION_IV"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string/jumbo v11, "SECRET_ENCRYPTION_PBE_SALT"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string/jumbo v11, "SECRET_ENCRYPTION_PASSWORD"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto/16 :goto_3

    :catch_1
    move-exception v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DirectDataProvision::IllegalArgumentException - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v11, 0x401

    return v11

    :cond_c
    const/16 v11, 0x160

    if-ne v8, v11, :cond_3

    :try_start_2
    const-string/jumbo v11, "SHARED_SECRET"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "SHARED_SECRET"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    goto/16 :goto_3

    :catch_2
    move-exception v0

    iget-object v11, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    const-string/jumbo v12, "OTP Token creation failed"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DirectDataProvision::UnsupportedEncodingException - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v11, 0x401

    return v11
.end method


# virtual methods
.method public doProvision(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v5, "DirectDataProvision::doProvision ENTER"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v1, v5, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    invoke-static {v5, v0, v1, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->setWhitelistAndSignerInfo(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "OTP_TOKEN_ID"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v5, "DirectDataProvision::doProvision - No vendor id assigned. Assigning from OTP Service"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const-string/jumbo v5, "OTP_TOKEN_ID"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    :cond_0
    const-string/jumbo v5, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "TOKEN_STATE"

    const/16 v6, 0x300

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "CONTAINER_ID"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeProvisioningData(Landroid/os/Bundle;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DirectDataProvision::doProvision - DBHandler.storeProvisioningData() ret ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_3

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->doProvisionInThread(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-object v4

    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    invoke-static {v5, v4, v0, v1, v3}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DirectDataProvision::doProvision - Token Creation Failed. [ tokenId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doResync(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 6

    const/16 v5, 0x401

    const/4 v4, 0x0

    const-string/jumbo v2, "DirectDataProvision::doResync ENTER"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpToken(Ljava/lang/String;)Lcom/samsung/android/knox/otp/OTPToken;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v2, "DirectDataProvision::doResync | Invalid tokenId"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/knox/otp/OTPToken;->getAlgorithmType()I

    move-result v2

    const-string/jumbo v3, "OTP_OATH_PROTOCOL"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v5

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->updateResyncTokenData(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v2, "DirectDataProvision::doResync | Resync token data updated : db"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_4

    const-string/jumbo v2, "WHITELIST_ADD"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "WHITELIST_REMOVE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->updateTokenWhitelist(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v2, "DirectDataProvision::doResync | whitelist successfully updated"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->prepareDataForSecureStorage(Landroid/os/Bundle;Z)I

    move-result v0

    :cond_5
    if-nez v0, :cond_6

    invoke-static {p2, v4}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->checkSecureStorageData(Landroid/os/Bundle;Z)I

    move-result v0

    :cond_6
    if-nez v0, :cond_7

    const-string/jumbo v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p2, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->resyncToken(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    const-string/jumbo v3, "OTP Token resync failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DirectDataProvision::doResync - resync failed. [ tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return v0

    :cond_8
    const-string/jumbo v2, "DirectDataProvision::doResync | Resync token data updation failed : db"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v2, "DirectDataProvision::doResync | whitelist update failed"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->checkPolicy(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    const/16 v3, 0x301

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->setTokenState(Ljava/lang/String;I)I

    :cond_b
    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/provision/DirectDataProvision;->context:Landroid/content/Context;

    const-string/jumbo v3, "OTP Token resync successful"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DirectDataProvision::doResync - resync successful. [ tokenId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_2
.end method
