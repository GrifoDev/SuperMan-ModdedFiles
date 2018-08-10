.class public Lcom/android/internal/telephony/IccPcscProvider;
.super Ljava/lang/Object;
.source "IccPcscProvider.java"


# static fields
.field public static final CONNECT:I = 0x4

.field public static final DISCONNECT:I = 0x5

.field public static final INIT:I = 0x1

.field private static final OEM_AUTH_ATR:I = 0xd

.field private static final OEM_AUTH_OPEN_CHANNEL:I = 0x9

.field private static final OEM_AUTH_SEND_APDU:I = 0x8

.field private static final OEM_DOMESTIC_PCSC_POWERDOWN:I = 0x28

.field private static final OEM_DOMESTIC_PCSC_POWERUP:I = 0x26

.field private static final OEM_DOMESTIC_PCSC_TRANSMIT:I = 0x27

.field private static final OEM_FUNCTION_ID_AUTH:I = 0x15

.field private static final OEM_FUNCTION_ID_DOMESTIC:I = 0x16

.field public static final POWERDOWN:I = 0x3

.field public static final POWERUP:I = 0x2

.field public static final RESPONSE_MAX_SIZE:I = 0x106

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field public static final TRANSMIT:I = 0x6

.field public static final USIMAUTH:I = 0x7

.field private static final lastChannel:I = 0x3

.field static final mLogTag:Ljava/lang/String; = "RIL_IccPcscProvider"

.field private static scInstance:Lcom/android/internal/telephony/IccPcscProvider;


# instance fields
.field private NUM_OF_CHANNEL:I

.field private _atr:[B

.field private cardStatus:I

.field private channel:[I

.field private isInitiated:Z

.field private final scLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->NUM_OF_CHANNEL:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->scLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private connectToRIL()I
    .locals 12

    const/4 v11, -0x1

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "connectToRIL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x9

    const/16 v8, 0x16

    :try_start_0
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x27

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x70

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "LGT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v8, 0x1

    :try_start_1
    new-array v6, v8, [B

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x4

    invoke-interface {v8, v9, v6, v10}, Lcom/android/internal/telephony/ITelephony;->sendRequestToRIL([B[BI)I

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "LGT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    if-nez v7, :cond_0

    const/4 v7, 0x3

    :cond_0
    return v7

    :cond_1
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "IOException - connect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_1
    move-exception v3

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "Exception - connect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_1
    return v11

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private disconnectFromRIL(I)I
    .locals 12

    const/4 v11, -0x1

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "disconnectFromRIL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x8

    const/16 v8, 0x16

    :try_start_0
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x27

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x70

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x80

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    :try_start_1
    new-array v6, v8, [B

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x5

    invoke-interface {v8, v9, v6, v10}, Lcom/android/internal/telephony/ITelephony;->sendRequestToRIL([B[BI)I

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v7

    :catch_0
    move-exception v2

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "IO Exception - Disconnect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_1
    move-exception v3

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return v11

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private pcscPowerdown()V
    .locals 2

    const-string/jumbo v0, "RIL_IccPcscProvider"

    const-string/jumbo v1, "pcscPowerdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pscsPowerup()V
    .locals 12

    const/4 v11, 0x0

    const/4 v0, 0x0

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "pscsPowerup"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x4

    const/16 v8, 0x16

    :try_start_0
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x26

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v8, 0x106

    :try_start_1
    new-array v7, v8, [B

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x2

    invoke-interface {v8, v9, v7, v10}, Lcom/android/internal/telephony/ITelephony;->sendRequestToRIL([B[BI)I

    const/4 v8, 0x0

    aget-byte v0, v7, v8

    const-string/jumbo v8, "RIL_IccPcscProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pscsPowerup ATR:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/internal/telephony/IccPcscProvider;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "RIL_IccPcscProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pscsPowerup atrLength:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v0, [B

    iput-object v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    iget-object v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v9, v8, v10, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "IOException - connect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v11, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    goto :goto_0

    :catch_2
    move-exception v5

    const-string/jumbo v8, "pscsPowerup"

    const-string/jumbo v9, "close fail!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private transmitToRIL(I[B[B)I
    .locals 12

    const/4 v11, -0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "transmitToRIL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    array-length v8, p2

    add-int/lit8 v5, v8, 0x4

    const/16 v8, 0x16

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x27

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v6, 0x0

    :goto_0
    array-length v8, p2

    if-ge v6, v8, :cond_0

    aget-byte v8, p2, v6

    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "RIL_IccPcscProvider"

    const-string/jumbo v9, "IOException - transmit"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x6

    invoke-interface {v8, v9, p3, v10}, Lcom/android/internal/telephony/ITelephony;->sendRequestToRIL([B[BI)I

    move-result v7

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v7

    :catch_1
    move-exception v3

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return v11

    :catch_2
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public connect()I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pscsPowerup()V

    iput-boolean v3, p0, Lcom/android/internal/telephony/IccPcscProvider;->isInitiated:Z

    :cond_0
    const-string/jumbo v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "LGT"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v0

    :cond_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->connectToRIL()I

    move-result v1

    return v1
.end method

.method public disconnect(I)I
    .locals 2

    const-string/jumbo v0, "RIL_IccPcscProvider"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnectFromRIL(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/IccPcscProvider;->pcscPowerdown()V

    return-void
.end method

.method public getATR([B)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    array-length v0, v1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    :cond_0
    const-string/jumbo v1, "RIL_IccPcscProvider"

    const-string/jumbo v2, "getATR SMARTCARD_IO_ERROR_ATR_BUFFER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x6

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPcscProvider;->_atr:[B

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return v0
.end method

.method public transmit(I[B[B)I
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, -0x4

    return v0

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, -0x5

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmitToRIL(I[B[B)I

    move-result v0

    return v0
.end method
