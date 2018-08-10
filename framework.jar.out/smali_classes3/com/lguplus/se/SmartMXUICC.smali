.class public Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field static final DBG:Z = true

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static handleId:[I = null

.field static final mLogTag:Ljava/lang/String; = "SmartMXUICC"

.field private static pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field static random:Ljava/util/Random;

.field private static sInstance:Lcom/lguplus/se/SmartMXUICC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    sput-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->handleId:[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->random:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SmartMXUICC"

    const-string/jumbo v1, "SmartMXUICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPcscProvider;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SmartMXUICC"

    const-string/jumbo v1, "SmartMXUICC pcscInstance return null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SmartMXUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SmartMXUICC pcscInstance retrun : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .locals 3

    const-class v1, Lcom/lguplus/se/SmartMXUICC;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "SmartMXUICC"

    const-string/jumbo v2, "Making an Instance..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v0}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    sput-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    sget-object v0, Lcom/lguplus/se/SmartMXUICC;->sInstance:Lcom/lguplus/se/SmartMXUICC;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private openLogicalChannel()I
    .locals 4

    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLogicalChannel channel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLogicalChannel Failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p1

    const-string/jumbo v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeSecureElementConnection channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const-string/jumbo v1, "SmartMXUICC"

    const-string/jumbo v2, "closeSecureElementConnection channel is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    const-string/jumbo v1, "SmartMXUICC"

    const-string/jumbo v2, "closeSecureElementConnection done!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exchangeAPDU(I[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v1, p1

    const/16 v4, 0x106

    new-array v0, v4, [B

    const/4 v3, 0x0

    const-string/jumbo v4, "SmartMXUICC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exchangeAPDU channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-byte v4, p2, v7

    or-int/2addr v4, p1

    int-to-byte v4, v4

    aput-byte v4, p2, v7

    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v2

    if-lez v2, :cond_0

    new-array v3, v2, [B

    invoke-static {v0, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    if-nez v3, :cond_1

    const-string/jumbo v4, "SmartMXUICC"

    const-string/jumbo v5, "exchangeAPDU return null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Response is NULL"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    return-object v3
.end method

.method public getATR()[B
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x106

    new-array v0, v4, [B

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/lguplus/se/SmartMXUICC;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    new-array v3, v2, [B

    invoke-static {v0, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SmartMXUICC"

    const-string/jumbo v5, "getATR Errors"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public getSecureElementTechList(I)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecureElementUid(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSmartMX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "seType must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, -0x2

    :goto_0
    const-string/jumbo v1, "SmartMXUICC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openSecureElementConnection, retVal:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Fail to open channel"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "android.nfc.uicc.ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/lguplus/se/SmartMXUICC;->openLogicalChannel()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method
