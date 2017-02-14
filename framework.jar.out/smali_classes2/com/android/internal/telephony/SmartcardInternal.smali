.class public Lcom/android/internal/telephony/SmartcardInternal;
.super Ljava/lang/Object;
.source "SmartcardInternal.java"


# static fields
.field public static final SMARTCARD_IO_ERROR_ATR_BUFFER:I = -0x6

.field public static final SMARTCARD_IO_ERROR_CARD_NOT_EXIST:I = -0x2

.field public static final SMARTCARD_IO_ERROR_OPEN_CHANNEL:I = -0x1

.field public static final SMARTCARD_IO_ERROR_RESPONSE_BUFFER:I = -0x5

.field public static final SMARTCARD_IO_ERROR_TRANSMIT_BUFFER:I = -0x4

.field public static final SMARTCARD_IO_INVALID_CHANNEL:I = -0x3

.field public static final SMARTCARD_IO_SUCCESS:I = 0x0

.field static final mLogTag:Ljava/lang/String; = "SmartcardInternal"

.field private static pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

.field private static scInstance:Lcom/android/internal/telephony/SmartcardInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    sput-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/IccPcscProvider;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPcscProvider;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SmartcardInternal;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SmartcardInternal"

    const-string/jumbo v2, "getInstance .. return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v1, :cond_2

    const-class v2, Lcom/android/internal/telephony/SmartcardInternal;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "SmartcardInternal"

    const-string/jumbo v3, "Making an Instance..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/telephony/SmartcardInternal;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmartcardInternal;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/SmartcardInternal;->scInstance:Lcom/android/internal/telephony/SmartcardInternal;

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public connect()I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPcscProvider;->connect()I

    move-result v0

    return v0
.end method

.method public disconnect(I)I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->disconnect(I)I

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPcscProvider;->finalize()V

    return-void
.end method

.method public getATR([B)I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPcscProvider;->getATR([B)I

    move-result v0

    return v0
.end method

.method public transmit(I[B[B)I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmartcardInternal;->pcscInstance:Lcom/android/internal/telephony/IccPcscProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPcscProvider;->transmit(I[B[B)I

    move-result v0

    return v0
.end method
