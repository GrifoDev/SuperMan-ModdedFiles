.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
    }
.end annotation


# static fields
.field public static final ALLOWED:I = 0x1

.field public static final DEV_OK:I = -0xffff68

.field public static final DISABLE:I = 0x1

.field public static final ENABLE:I = 0x0

.field public static final ENG_KERNEL:I = 0x0

.field public static final ERRORBYTE_EM_SERVICE:[B

.field public static final ERRORBYTE_NO_PERMISSION:[B = null

.field public static final ERROR_COUNTER:I = -0xfffffec

.field public static final ERROR_EM_SERVICE:I = -0x3e8

.field public static final ERROR_INVALID_ESI:I = -0x578

.field public static final ERROR_NO_PERMISSION:I = -0x514

.field public static final ERROR_TUC_ZERO:I = -0x5dc

.field public static final MODE_CUST_KERNEL:I = 0x3

.field public static final MODE_DEBUG_LOG:I = 0x2

.field public static final MODE_ENG_KERNEL:I = 0x0

.field public static final MODE_KNOX_TEST:I = 0x4

.field public static final MODE_TEST_ENV:I = 0x1

.field public static final MODE_USB_DEBUG:I = 0x1

.field public static final NATIVE_SUCCESS:I = 0x0

.field public static final NOK:I = 0x0

.field public static final NOT_ALLOWED:I = 0x0

.field public static final OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeManager"

.field public static final USB_DEBUG:I = 0x1

.field public static final USB_DEBUG_ALLOWED:I = 0x1

.field public static final USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPkgName:Ljava/lang/String;

.field private mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    const-string/jumbo v0, "EngineeringModeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    const-string/jumbo v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connects to EngineeringModeService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getExpiryDate()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getExpiryDate() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getExpiryDate()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public getID()[B
    .locals 4

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getID() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getID()[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public getNumOfModes()I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getNumOfModes() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getNumOfModes()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getRequestMsg() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 4

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getRequestMsg() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public getServerTime()J
    .locals 6

    const-wide/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getServerTime() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getServerTime()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-wide v4
.end method

.method public getStatus(I)I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getStatus() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mPkgName:Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStatus(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public getTUC(I)I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getTUC() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getTUC(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public getToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "EngineeringModeManager"

    const-string/jumbo v5, "getToken() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;

    invoke-direct {v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    move-result-object v4

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getToken()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6

    :catch_1
    move-exception v2

    const-string/jumbo v4, "EngineeringModeManager"

    const-string/jumbo v5, "Failed to connect service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v6
.end method

.method public installToken([B)I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "installToken() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installToken([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public installTokenForESS(Ljava/lang/String;)I
    .locals 6

    const/16 v5, -0x3e8

    const-string/jumbo v3, "EngineeringModeManager"

    const-string/jumbo v4, "installTokenForESS() is called."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v3, v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installToken([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v5

    :catch_1
    move-exception v1

    const-string/jumbo v3, "EngineeringModeManager"

    const-string/jumbo v4, "Failed to connect service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v5
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTokenInstalled()I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "isTokenInstalled() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->isTokenInstalled()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "makeITLReq() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeITLReq(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    .locals 4

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "makeTokenReq() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeTokenReq(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public makeTokenReqForESS(Ljava/lang/String;)[B
    .locals 4

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "makeTokenReqForESS() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->makeTokenReqForESS(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public recoveryITL([B)I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "restoreITL() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->recoveryITL([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public removeToken()I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "removeToken() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->removeToken()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method

.method public sendFuseCmd()I
    .locals 5

    const/16 v4, -0x3e8

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "sendFuseCmd() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->sendFuseCmd()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return v4
.end method
