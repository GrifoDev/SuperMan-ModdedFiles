.class public final Lcom/samsung/android/service/SemService/SemServiceManager;
.super Ljava/lang/Object;
.source "SemServiceManager.java"


# static fields
.field public static final ENCODING_TYPE_BASE64:B = 0x2t

.field public static final ENCODING_TYPE_BINARY:B = 0x1t

.field public static final ENCODING_TYPE_HEX:B = 0x4t

.field public static final ERROR_EXCEPTION:I = -0x5a

.field public static final ERROR_NO_PERMISSION:I = -0x5b

.field public static final ERROR_NO_SERVICE:I = -0x5c

.field public static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemServiceManager"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mSemService:Lcom/samsung/android/service/SemService/ISemService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SemService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/SemService/ISemService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/SemService/ISemService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    const-string/jumbo v0, "SemServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/service/SemService/SemServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connects to SemService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public COSSPIAccessControl(I)I
    .locals 5

    const/16 v4, -0x5a

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "COSSPIAccessControl() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "SPIAC SPI Open"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->openSpiDriver()I

    move-result v2

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "SPIAC SPI Close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->closeSpiDriver()I

    move-result v2

    return v2

    :cond_1
    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "SPIAC Type Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public closeSpi()I
    .locals 4

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "closeSpi() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->close_Spi()I
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public deactivateCards(I[Ljava/lang/String;[II)I
    .locals 7

    const/16 v6, -0x5a

    const-string/jumbo v4, "SemServiceManager"

    const-string/jumbo v5, "deactivateCards is called."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_Cards(I[Ljava/lang/String;[II)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    return v6

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    return v6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    :catch_3
    move-exception v3

    const-string/jumbo v4, "SemServiceManager"

    const-string/jumbo v5, "Failed to connect service."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v4, -0x5c

    return v4
.end method

.method public deactivateCardsAID(II[Ljava/lang/String;[II)I
    .locals 10

    const-string/jumbo v0, "SemServiceManager"

    const-string/jumbo v1, "deactivateCardsAID is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/service/SemService/ISemService;->deactivate_CardsAID(II[Ljava/lang/String;[II)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const/16 v0, -0x5a

    return v0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    const/16 v0, -0x5a

    return v0

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, -0x5a

    return v0

    :catch_3
    move-exception v9

    const-string/jumbo v0, "SemServiceManager"

    const-string/jumbo v1, "Failed to connect service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v0, -0x5c

    return v0
.end method

.method public getAttackCountCheck([B)I
    .locals 4

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "getAttackCountCheck() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/SemService/ISemService;->get_AttackCountCheck([B)I
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public getCPLC14mode()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "getCPLC14mode() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->getCPLC14mode()Ljava/lang/String;
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public getHWParamData([BI)I
    .locals 4

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "getHWParamData() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->get_HWParamData([BI)I
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public getRestrictedCheck05mode()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "getRestrictedCheck05mode() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->getRestrictedCheck05mode()Ljava/lang/String;
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jniICD()I
    .locals 7

    const/16 v3, -0x3e7

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v4}, Lcom/samsung/android/service/SemService/ISemService;->ICD()I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SemServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RE Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x3e7

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "SemServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USLE Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x3e7

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v4, "SemServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NCDF Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0x3e7

    goto :goto_0
.end method

.method public openSpi()I
    .locals 4

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "openSpi() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->open_Spi()I
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method

.method public printSeState()V
    .locals 4

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "printSeState() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2}, Lcom/samsung/android/service/SemService/ISemService;->print_SeState()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public sem_handleCCM([BI)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "sem_handleCCM() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/service/SemService/ISemService;->handle_CCM([BI)[Ljava/lang/String;
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-object v4
.end method

.method public sendData([BI[B)I
    .locals 4

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "sendData() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/SemService/SemServiceManager;->mSemService:Lcom/samsung/android/service/SemService/ISemService;

    invoke-interface {v2, p1, p2, p3}, Lcom/samsung/android/service/SemService/ISemService;->send_Data([BI[B)I
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

    const-string/jumbo v2, "SemServiceManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v2, -0x5c

    return v2
.end method
