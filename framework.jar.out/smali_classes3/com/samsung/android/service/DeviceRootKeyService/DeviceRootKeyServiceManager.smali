.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# static fields
.field public static final ERR_SERVICE_ERROR:I = -0x2710

.field public static final KEY_TYPE_EC:I = 0x4

.field public static final KEY_TYPE_RSA:I = 0x1

.field public static final KEY_TYPE_SYMM:I = 0x2

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "DeviceRootKeyService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    const-string/jumbo v0, "DeviceRootKeyServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connects to DeviceRootKeyService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "createServiceKeySession() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "getDeviceRootKeyUID() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->getDeviceRootKeyUID(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4
.end method

.method public isAliveDeviceRootKeyService()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "isExistDeviceRootKey() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->isExistDeviceRootKey(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v4
.end method

.method public releaseServiceKeySession()I
    .locals 5

    const/16 v4, -0x2710

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "releaseServiceKeySession() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->releaseServiceKeySession()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v4
.end method

.method public setDeviceRootKey([B)I
    .locals 5

    const/16 v4, -0x2710

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "setDeviceRootKey() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mService:Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService;->setDeviceRootKey([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "DeviceRootKeyServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v4
.end method
