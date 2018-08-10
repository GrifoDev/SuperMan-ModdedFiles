.class public final Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;
.super Ljava/lang/Object;
.source "SamsungKeyProvisioningManager.java"


# static fields
.field public static final ENCODING_TYPE_BASE64:B = 0x2t

.field public static final ENCODING_TYPE_BINARY:B = 0x1t

.field public static final ENCODING_TYPE_HEX:B = 0x4t

.field public static final ERROR_EXCEPTION:I = -0x5a

.field public static final ERROR_NO_PERMISSION:I = -0x5b

.field public static final ERROR_NO_SERVICE:I = -0x5c

.field public static final INJECTION_TYPE_FACTORY:B = 0x1t

.field public static final INJECTION_TYPE_OTA_CSR:B = 0x2t

.field public static final INJECTION_TYPE_OTA_WB:B = 0x4t

.field public static final KEY_TYPE_ECC_P256:B = 0x1t

.field public static final KEY_TYPE_RSA_2048:B = 0x2t

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SamsungKeyProvisioningManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SamsungKeyProvisioningManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    const-string/jumbo v0, "SamsungKeyProvisioningManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connects to SamsungKeyProvisioningManagerService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createKeySession(BLjava/lang/String;[BB)I
    .locals 4

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "createKeySession() is called."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;->create_keySession(BLjava/lang/String;[BB)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0x5a

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public getKeyUid(BBLjava/lang/String;[B)I
    .locals 4

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "getKeyUid() is called."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;->get_keyUid(BBLjava/lang/String;[B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0x5a

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public releaseKeySession()I
    .locals 4

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "releaseKeySession() is called."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    invoke-interface {v2}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;->release_keySession()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0x5a

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public setOtaServer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "setOtaServer() is called."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;->set_otaServer(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0x5a

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public verifyKey(BBLjava/lang/String;)I
    .locals 4

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "verifyKey() is called."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;->verify_key(BBLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v2, -0x5a

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SamsungKeyProvisioningManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public writeKey(BBLjava/lang/String;[BB)I
    .locals 8

    const-string/jumbo v0, "SamsungKeyProvisioningManager"

    const-string/jumbo v1, "writeKey() is called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/SamsungKeyProvisioningManager;->mSkpmService:Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/SamsungKeyProvisioningManagerService/ISamsungKeyProvisioningManagerService;->write_key(BBLjava/lang/String;[BB)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, -0x5a

    return v0

    :catch_1
    move-exception v7

    const-string/jumbo v0, "SamsungKeyProvisioningManager"

    const-string/jumbo v1, "Failed to connect service."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v0, -0x5c

    return v0
.end method
