.class public Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;
.super Lcom/android/server/enterprise/otp/exceptions/OTPJniException;
.source "OTPExceptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-enterprise-otp-exceptions-OTPExceptions$TlcErrorsSwitchesValues:[I = null

.field private static final errorCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;


# direct methods
.method private static synthetic -getcom-android-server-enterprise-otp-exceptions-OTPExceptions$TlcErrorsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->-com-android-server-enterprise-otp-exceptions-OTPExceptions$TlcErrorsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->-com-android-server-enterprise-otp-exceptions-OTPExceptions$TlcErrorsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->values()[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_APP_ALREADY_LOADED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_APP_NOT_FOUND:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_19

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BACKEND_CLOSE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_18

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BACKEND_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_17

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BOOT_MEASUREMENT_CHECK_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_16

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_BOOT_MEASUREMENT_FILE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_15

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CERTIFICATE_GENERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_14

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CERTIFICATE_NOT_SUPPORTED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_13

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CLOSE_DEVICE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_12

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_CLOSE_SESSION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_11

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_COMMUNICATE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_10

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_COMMUNICATION_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_f

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_DELETE_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_e

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_READ_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_c

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_FILE_WRITE_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_b

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_INVALID_ARGUMENT:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_a

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_INVALID_MEMORY:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_9

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_INVALID_NONCE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_8

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_KNOX_KEY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_7

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_MEMORY_UNAVAILABLE:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_6

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_NULL_POINTER:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_5

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_OPEN_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_4

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_SHARED_MEMORY_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_3

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_STRING_OPERATION_FAILED:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_2

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_0

    :goto_1a
    sput-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->-com-android-server-enterprise-otp-exceptions-OTPExceptions$TlcErrorsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1a

    :catch_1
    move-exception v1

    goto :goto_19

    :catch_2
    move-exception v1

    goto :goto_18

    :catch_3
    move-exception v1

    goto :goto_17

    :catch_4
    move-exception v1

    goto :goto_16

    :catch_5
    move-exception v1

    goto :goto_15

    :catch_6
    move-exception v1

    goto :goto_14

    :catch_7
    move-exception v1

    goto :goto_13

    :catch_8
    move-exception v1

    goto :goto_12

    :catch_9
    move-exception v1

    goto :goto_11

    :catch_a
    move-exception v1

    goto :goto_10

    :catch_b
    move-exception v1

    goto/16 :goto_f

    :catch_c
    move-exception v1

    goto/16 :goto_e

    :catch_d
    move-exception v1

    goto/16 :goto_d

    :catch_e
    move-exception v1

    goto/16 :goto_c

    :catch_f
    move-exception v1

    goto/16 :goto_b

    :catch_10
    move-exception v1

    goto/16 :goto_a

    :catch_11
    move-exception v1

    goto/16 :goto_9

    :catch_12
    move-exception v1

    goto/16 :goto_8

    :catch_13
    move-exception v1

    goto/16 :goto_7

    :catch_14
    move-exception v1

    goto/16 :goto_6

    :catch_15
    move-exception v1

    goto/16 :goto_5

    :catch_16
    move-exception v1

    goto/16 :goto_4

    :catch_17
    move-exception v1

    goto/16 :goto_3

    :catch_18
    move-exception v1

    goto/16 :goto_2

    :catch_19
    move-exception v1

    goto/16 :goto_1

    :catch_1a
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->errorCodes:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->values()[Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    sget-object v4, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->errorCodes:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/otp/exceptions/OTPJniException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_SUCCESS:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-static {p1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->getTlcError(I)Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->s(Ljava/lang/String;)V

    return-void
.end method

.method private static getTlcError(I)Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;
    .locals 3

    sget-object v1, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->errorCodes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->TLC_OTP_UNKNOWN_ERROR:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getException()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->-getcom-android-server-enterprise-otp-exceptions-OTPExceptions$TlcErrorsSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions;->jniErrorCode:Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/exceptions/OTPExceptions$TlcErrors;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x4ff

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x40d

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x412

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x40d

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
